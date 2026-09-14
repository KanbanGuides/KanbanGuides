#Requires -Version 7.4
[CmdletBinding()]
param(
    [Parameter(Mandatory)][string]$WorkspaceRoot,
    [ValidateSet('Auto','Local','Preview','Production','Path')][string]$PlatformSource='Auto',
    [string]$PlatformPath,[string]$PlatformRelease,[string]$DefaultPlatformRoot,
    [ValidateSet('GuideSite','Platform')][string]$Product='GuideSite',
    [switch]$FromWorkflow,[uri]$PackageUrl,[string]$PackageSha256,[string]$ExpectedVersion,[string]$ExpectedCommit,[string]$OutputPath
)
function Expand-VerifiedPlatformArchive([string]$Path,[string]$Destination) {
    $archive=[IO.Compression.ZipFile]::OpenRead($Path)
    try {
        $names=[Collections.Generic.HashSet[string]]::new([StringComparer]::OrdinalIgnoreCase)
        foreach($entry in $archive.Entries){
            if($entry.FullName -match '(^/|\\|:|(^|/)\.\.?(/|$))' -or -not $names.Add($entry.FullName) -or (($entry.ExternalAttributes -shr 16) -band 0xF000) -eq 0xA000){throw 'Unsafe release archive entry.'}
        }
    }finally{$archive.Dispose()}
    [IO.Compression.ZipFile]::ExtractToDirectory($Path,$Destination)
}
function Restore-WorkflowPlatform {
#Requires -Version 7.4
[CmdletBinding(DefaultParameterSetName='Release')]
param(
    [Parameter(ParameterSetName='Workflow')][switch]$FromWorkflow,
    [Parameter(ParameterSetName='Release')][ValidatePattern('^(?:v[0-9]+\.[0-9]+\.[0-9]+(?:-[A-Za-z0-9.-]+)?)?$')][string]$ReleaseTag,
    [Parameter(Mandatory,ParameterSetName='Candidate')][uri]$PackageUrl,
    [Parameter(Mandatory,ParameterSetName='Candidate')][ValidatePattern('^[a-fA-F0-9]{64}$')][string]$PackageSha256,
    [Parameter(Mandatory,ParameterSetName='Candidate')][ValidatePattern('^[0-9]+\.[0-9]+\.[0-9]+(?:-[A-Za-z0-9.-]+)?$')][string]$ExpectedVersion,
    [Parameter(Mandatory)][ValidatePattern('^[a-f0-9]{40}$')][string]$ExpectedCommit,
    [Parameter(Mandatory)][string]$OutputPath
)
$ErrorActionPreference='Stop'
if($FromWorkflow){
    $restore=@{ExpectedCommit=$ExpectedCommit;OutputPath=$OutputPath}
    if($env:PLATFORM_PACKAGE_URL){
        if($env:PLATFORM_RELEASE){throw 'Select a candidate URL or release tag, not both.'}
        $restore.PackageUrl=$env:PLATFORM_PACKAGE_URL
        $restore.PackageSha256=$env:PLATFORM_PACKAGE_SHA256
        $restore.ExpectedVersion=$env:PLATFORM_VERSION
    }else{
        if($env:PLATFORM_PACKAGE_SHA256 -or $env:PLATFORM_VERSION){throw 'Candidate identity requires a package URL.'}
        $restore.ReleaseTag=$env:PLATFORM_RELEASE
    }
    Restore-WorkflowPlatform @restore
    return
}
if($OutputPath -notmatch '^\.processing/[A-Za-z0-9/_-]+$' -or $OutputPath.Split('/') -contains '..'){throw 'Install into a fresh .processing directory.'}
$output=[IO.Path]::GetFullPath((Join-Path $PWD $OutputPath))
$cursor=$output
while($cursor){if((Test-Path -LiteralPath $cursor) -and ((Get-Item -LiteralPath $cursor -Force).Attributes -band [IO.FileAttributes]::ReparsePoint)){throw 'Linked installation paths are not supported.'};$cursor=[IO.Path]::GetDirectoryName($cursor)}
if(Test-Path -LiteralPath $output){throw 'Installation output already exists.'}
$download=$output+'-download'
if(Test-Path -LiteralPath $download){throw 'Package download directory already exists.'}
[IO.Directory]::CreateDirectory($download)|Out-Null
if($PSCmdlet.ParameterSetName -eq 'Candidate'){
    if($PackageUrl.Scheme -cne 'https' -or $PackageUrl.UserInfo){throw 'Candidate package URL must use HTTPS without embedded credentials.'}
    $headers=@{}
    # Only the GitHub API receives the Actions credential. Redirects do not retain Authorization.
    if($PackageUrl.Host -ceq 'api.github.com' -and $env:GH_TOKEN){$headers.Authorization="Bearer $env:GH_TOKEN"}
    $bundle=Join-Path $download 'candidate.zip'
    Invoke-WebRequest -Uri $PackageUrl -Headers $headers -OutFile $bundle -ErrorAction Stop
    if((Get-FileHash $bundle).Hash -ine $PackageSha256){throw 'Candidate package digest mismatch.'}
    $assets=Join-Path $download 'assets'
    Expand-VerifiedPlatformArchive $bundle $assets
}else{
    if(-not $ReleaseTag){
        $items=& gh api 'repos/nkdAgility/OpenGuidePlatform/releases?per_page=100' --paginate --slurp
        if($LASTEXITCODE -ne 0){throw 'Cannot discover the platform release.'}
        $pages=$items|ConvertFrom-Json
        $matches=@($pages|ForEach-Object { $_ }|Where-Object { -not $_.draft -and $_.target_commitish -ceq $ExpectedCommit })
        if($matches.Count -ne 1){throw 'Expected one published release for the platform commit; specify ReleaseTag when ambiguous. No source-build fallback is permitted.'}
        $ReleaseTag=$matches[0].tag_name
    }
    $raw=& gh release view $ReleaseTag --repo nkdAgility/OpenGuidePlatform --json tagName,targetCommitish,isDraft 2>$null
    if($LASTEXITCODE -ne 0){throw "Release $ReleaseTag is unavailable; no source-build fallback is permitted."}
    $release=$raw|ConvertFrom-Json
    if($release.isDraft -or $release.tagName -cne $ReleaseTag -or $release.targetCommitish -cne $ExpectedCommit){throw 'Release source/tag does not match the pinned platform.'}
    & gh release download $ReleaseTag --repo nkdAgility/OpenGuidePlatform --pattern OpenGuidePlatform-GuideSite.zip --pattern release-manifest.json --dir $download
    if($LASTEXITCODE -ne 0){throw 'Release asset download failed.'}
    $assets=$download
    $ExpectedVersion=$ReleaseTag.Substring(1)
}
$manifest=Get-Content "$assets/release-manifest.json" -Raw|ConvertFrom-Json
if($manifest.schemaVersion -ne 2 -or $manifest.packages.GuideSite.version -cne $manifest.version -or $manifest.product -cne 'OpenGuidePlatform' -or $manifest.version -cne $ExpectedVersion -or $manifest.sourceCommit -cne $ExpectedCommit -or $manifest.packages.GuideSite.archive -cne 'OpenGuidePlatform-GuideSite.zip'){throw 'Release manifest does not match the requested platform.'}
if((Get-FileHash "$assets/OpenGuidePlatform-GuideSite.zip").Hash.ToLowerInvariant() -cne $manifest.packages.GuideSite.sha256){throw 'Release package digest mismatch.'}
# Check archive paths before extracting or importing any candidate code.
Expand-VerifiedPlatformArchive "$assets/OpenGuidePlatform-GuideSite.zip" $output
# Check source identity before running the checksum-verified package validator.
$metadata=Get-Content "$output/platform.json" -Raw|ConvertFrom-Json
if($metadata.product -cne 'OpenGuidePlatform' -or $metadata.sourceCommit -cne $ExpectedCommit -or $metadata.version -cne $manifest.version){throw 'Installed platform identity mismatch.'}
$metadata=& "$output/system/OpenGuidePlatform.PowerShell.GuideSiteAdoption/Confirm-PlatformPackage.ps1" -PackageRoot $output -Manifest $manifest
$resolution=[ordered]@{schemaVersion=1;mode=if($PSCmdlet.ParameterSetName -eq 'Candidate'){'candidate'}else{'release'};version=$manifest.version;sourceCommit=$manifest.sourceCommit}
[IO.File]::WriteAllText("$output/platform-resolution.json",($resolution|ConvertTo-Json))
Import-Module "$output/system/OpenGuidePlatform.PowerShell.Core/OpenGuidePlatform.PowerShell.Core.psd1" -Force
Import-Module "$output/system/OpenGuidePlatform.PowerShell.GuideSiteBuild/OpenGuidePlatform.PowerShell.GuideSiteBuild.psm1" -Force
Write-Host "Restored OpenGuidePlatform $ExpectedVersion ($($PSCmdlet.ParameterSetName)); SHA256 $($manifest.packages.GuideSite.sha256)."
if($env:GITHUB_STEP_SUMMARY){[IO.File]::AppendAllText($env:GITHUB_STEP_SUMMARY,"## Platform restored`n`nSource: $($PSCmdlet.ParameterSetName)`n`nVersion: $ExpectedVersion`n`nCommit: $ExpectedCommit`n`nPackage SHA256: $($manifest.packages.GuideSite.sha256)`n")}

return $output
}
function Restore-GuideSiteRelease {
[CmdletBinding()]
param([string]$WorkspaceRoot,[string]$ReleaseTag,[string]$Channel='preview',[switch]$Restore)
$ErrorActionPreference='Stop'
$repository='nkdAgility/OpenGuidePlatform'
$root=[IO.Path]::GetFullPath($WorkspaceRoot)
function Resolve-InstallPath([string]$Relative) {
    if($Relative -match '(^/|\\|:|(^|/)\.\.(/|$))' -or [string]::IsNullOrWhiteSpace($Relative)){throw "Unsafe installation path: $Relative"}
    $path=[IO.Path]::GetFullPath((Join-Path $root $Relative))
    $cursor=$path
    while($cursor){
        if((Test-Path -LiteralPath $cursor) -and ((Get-Item -LiteralPath $cursor -Force).Attributes -band [IO.FileAttributes]::ReparsePoint)){
            $item=Get-Item -LiteralPath $cursor -Force
            if($cursor -cne $path -or $Relative -notin @('AGENTS.md','CLAUDE.md') -or $item.LinkTarget.Replace('\','/') -cne '.agents/agents.md'){throw "Linked installation path: $Relative"}
        }
        $cursor=[IO.Path]::GetDirectoryName($cursor)
    }
    return $path
}
function Get-Digest([string]$Path) { (Get-FileHash -LiteralPath $Path -Algorithm SHA256).Hash.ToLowerInvariant() }
function Invoke-GitHub([string[]]$Arguments) {
    $value=& gh @Arguments
    if($LASTEXITCODE -ne 0){throw "GitHub operation failed: $($Arguments[0])"}
    return $value
}

$previous=$null
if($Restore){
    $lockPath=Resolve-InstallPath 'open-guide-platform.installation.json'
    if(-not (Test-Path $lockPath)){throw 'No installation found. Run the remote bootstrap to install the platform, or select an explicit platform source.'}
    $previous=Get-Content $lockPath -Raw|ConvertFrom-Json -AsHashtable
}
if($Restore){
    $ReleaseTag=$previous.releaseTag
    $manifest=$previous.release
}else{
    if(-not $ReleaseTag){
        $releases=Invoke-GitHub @('api',"repos/$repository/releases?per_page=100",'--paginate','--slurp') | ConvertFrom-Json | ForEach-Object { foreach($item in $_){$item} }
        $eligible=@($releases|Where-Object { -not $_.draft -and ([bool]$_.prerelease -eq ($Channel -eq 'preview')) -and @($_.assets|Where-Object name -eq 'OpenGuidePlatform-GuideSite.zip').Count -eq 1 }|Sort-Object published_at -Descending)
        if(-not $eligible.Count){throw "No installable $Channel release is available."}
        $ReleaseTag=$eligible[0].tag_name
    }
    $release=Invoke-GitHub @('release','view',$ReleaseTag,'--repo',$repository,'--json','tagName,targetCommitish,isDraft,isPrerelease')|ConvertFrom-Json
    if($release.isDraft -or ([bool]$release.isPrerelease -ne ($Channel -eq 'preview')) -or $release.tagName -cne $ReleaseTag){throw "Select a published $Channel release."}
}
# Downloads and extraction are disposable; tracked files are untouched until all checks pass.
$work=Resolve-InstallPath ('.processing/platform-install/'+[guid]::NewGuid().ToString('N'))
[IO.Directory]::CreateDirectory($work)|Out-Null
if(-not $Restore){
    $null=Invoke-GitHub @('release','download',$ReleaseTag,'--repo',$repository,'--pattern','release-manifest.json','--dir',$work)
    $manifest=Get-Content "$work/release-manifest.json" -Raw|ConvertFrom-Json -AsHashtable
    if($manifest.sourceCommit -cne $release.targetCommitish){throw 'Release source does not match manifest.'}
}
if($manifest.schemaVersion -ne 2 -or $manifest.product -cne 'OpenGuidePlatform' -or $manifest.version -cne $ReleaseTag.Substring(1) -or $manifest.channel -cne $(if($Restore){$previous.release.channel}else{$Channel}) -or $manifest.packages.GuideSite.archive -cne 'OpenGuidePlatform-GuideSite.zip' -or $manifest.packages.GuideSite.sha256 -cnotmatch '^[a-f0-9]{64}$' -or $manifest.sourceCommit -cnotmatch '^[a-f0-9]{40}$'){throw 'Invalid release identity.'}
$cache=Resolve-InstallPath ('.processing/platform-cache/'+$manifest.packages.GuideSite.sha256)
[IO.Directory]::CreateDirectory($cache)|Out-Null
$archivePath=Join-Path $cache 'OpenGuidePlatform-GuideSite.zip'
if(-not (Test-Path -LiteralPath $archivePath)){
    $null=Invoke-GitHub @('release','download',$ReleaseTag,'--repo',$repository,'--pattern','OpenGuidePlatform-GuideSite.zip','--dir',$work)
    if((Get-Digest "$work/OpenGuidePlatform-GuideSite.zip") -cne $manifest.packages.GuideSite.sha256){throw 'Package digest mismatch.'}
    [IO.File]::Copy("$work/OpenGuidePlatform-GuideSite.zip",$archivePath)
}
if((Get-Digest $archivePath) -cne $manifest.packages.GuideSite.sha256){throw 'Cached package digest mismatch; remove the corrupt cache file and restore again.'}
if($manifest.packages.GuideSite.version -cne $manifest.version){throw 'GuideSite package version differs from the release.'}
$package=Join-Path $work 'package'
Expand-VerifiedPlatformArchive $archivePath $package
$metadata=Get-Content "$package/platform.json" -Raw|ConvertFrom-Json
if($metadata.version -cne $manifest.version -or $metadata.sourceCommit -cne $manifest.sourceCommit){throw 'Installed package identity mismatch.'}
$metadata=& "$package/system/OpenGuidePlatform.PowerShell.GuideSiteAdoption/Confirm-PlatformPackage.ps1" -PackageRoot $package -Manifest $manifest
$resolution=[ordered]@{schemaVersion=1;mode='release';version=$manifest.version;sourceCommit=$manifest.sourceCommit}
[IO.File]::WriteAllText("$package/platform-resolution.json",($resolution|ConvertTo-Json))
[IO.File]::WriteAllText("$package/release-manifest.json",($manifest|ConvertTo-Json -Depth 30))
return $package

}

if($FromWorkflow -or $PackageUrl -or $ExpectedCommit){
    $arguments=@{ExpectedCommit=$ExpectedCommit;OutputPath=$OutputPath}
    if($FromWorkflow){$arguments.FromWorkflow=$true}
    elseif($PackageUrl){$arguments.PackageUrl=$PackageUrl;$arguments.PackageSha256=$PackageSha256;$arguments.ExpectedVersion=$ExpectedVersion}
    else{$arguments.ReleaseTag=$PlatformRelease}
    return Restore-WorkflowPlatform @arguments
}
$selection=$PlatformSource
$ErrorActionPreference='Stop'
if($PlatformPath -and $selection -eq 'Auto'){$selection='Path'}
if($PlatformRelease -and $selection -eq 'Auto'){$selection=if($PlatformRelease.Contains('-')){'Preview'}else{'Production'}}
if($selection -in @('Local','Path') -and $PlatformRelease){throw 'A local platform source cannot also select a release.'}
if($selection -in @('Preview','Production') -and $PlatformPath){throw 'Select a release or an explicit path, not both.'}
if($selection -eq 'Auto'){$selection=if($DefaultPlatformRoot){'Local'}else{'Locked'}}
switch($selection){
    {$_ -in @('Local','Path')} {
        $selected=if($PlatformPath){$PlatformPath}else{$DefaultPlatformRoot}
        if(-not $selected){throw 'Supply -PlatformPath for a local platform checkout or package.'}
        $selected=[IO.Path]::GetFullPath($selected)
        if(Test-Path -LiteralPath $selected -PathType Leaf){
            if([IO.Path]::GetExtension($selected) -ine '.zip'){throw 'PlatformPath must be a directory or package ZIP.'}
            $manifestPath=Join-Path (Split-Path $selected -Parent) 'release-manifest.json'
            $manifest=Get-Content -LiteralPath $manifestPath -Raw|ConvertFrom-Json
            if($manifest.schemaVersion -ne 2 -or $manifest.packages.GuideSite.version -cne $manifest.version -or $manifest.packages.GuideSite.archive -cne [IO.Path]::GetFileName($selected) -or (Get-FileHash $selected).Hash -ine $manifest.packages.GuideSite.sha256){throw 'Explicit package identity or digest mismatch.'}
            $destination=Join-Path $WorkspaceRoot ('.processing/platform-path/'+[guid]::NewGuid().ToString('N'))
            Expand-VerifiedPlatformArchive $selected $destination
            $metadata=Get-Content "$destination/platform.json" -Raw|ConvertFrom-Json
            if($metadata.sourceCommit -cne $manifest.sourceCommit -or $metadata.version -cne $manifest.version){throw 'Explicit package metadata differs.'}
            $null=& "$destination/system/OpenGuidePlatform.PowerShell.GuideSiteAdoption/Confirm-PlatformPackage.ps1" -PackageRoot $destination -Manifest $manifest
            @{schemaVersion=1;mode='candidate';sourceCommit=$metadata.sourceCommit;version=$metadata.version}|ConvertTo-Json|Set-Content "$destination/platform-resolution.json"
            [IO.File]::Copy($manifestPath,"$destination/release-manifest.json")
            $selected=$destination
        }
    }
    default {
        if($selection -eq 'Locked'){$selected=Restore-GuideSiteRelease -Restore -WorkspaceRoot $WorkspaceRoot}
        else{
            $arguments=@{WorkspaceRoot=$WorkspaceRoot;Channel=if($selection -eq 'Production'){'stable'}else{'preview'}}
            if($PlatformRelease){$arguments.ReleaseTag=$PlatformRelease}
            $selected=Restore-GuideSiteRelease @arguments
        }
    }
}
if($Product -eq 'Platform' -and (Test-Path "$selected/release-manifest.json") -and -not (Test-Path "$selected/platform-build.json")){
    $manifest=Get-Content "$selected/release-manifest.json" -Raw|ConvertFrom-Json
    $part=$manifest.packages.PlatformBuild
    if($part.archive -cne 'OpenGuidePlatform-PlatformBuild.zip' -or $part.version -cne $manifest.version -or $part.sha256 -cnotmatch '^[a-f0-9]{64}$' -or $part.dependencies.GuideSite.version -cne $manifest.version -or $part.dependencies.GuideSite.sha256 -cne $manifest.packages.GuideSite.sha256){throw 'PlatformBuild must depend on the GuideSite package from the same release. Select a complete, matching release.'}
    $archivePath=if($selection -in @('Path','Local') -and $PlatformPath -and (Test-Path $PlatformPath -PathType Leaf)){Join-Path (Split-Path $PlatformPath -Parent) $part.archive}else{
        $cache=Join-Path $WorkspaceRoot ('.processing/platform-cache/'+$part.sha256)
        [IO.Directory]::CreateDirectory($cache)|Out-Null
        $cached=Join-Path $cache $part.archive
        if(-not (Test-Path $cached)){
            & gh release download "v$($manifest.version)" --repo nkdAgility/OpenGuidePlatform --pattern $part.archive --dir $cache
            if($LASTEXITCODE -ne 0){throw 'PlatformBuild download failed. Restore network access or provide the complete release directory.'}
        }
        $cached
    }
    if((Get-FileHash $archivePath).Hash -ine $part.sha256){throw 'PlatformBuild package digest mismatch. Remove the corrupt cached file and restore again.'}
    $zip=[IO.Compression.ZipFile]::OpenRead($archivePath)
    $names=[Collections.Generic.HashSet[string]]::new([StringComparer]::OrdinalIgnoreCase)
    try{foreach($entry in $zip.Entries){
        if(-not $names.Add($entry.FullName) -or $entry.FullName -match '(^/|\\|:|(^|/)\.\.?(/|$))' -or (($entry.ExternalAttributes -shr 16) -band 0xF000) -eq 0xA000 -or ($entry.FullName -cne 'platform-build.json' -and -not $entry.FullName.StartsWith('system/OpenGuidePlatform.PowerShell.PlatformBuild/'))){throw 'PlatformBuild contains an unsafe or overlapping entry.'}
    }}finally{$zip.Dispose()}
    [IO.Compression.ZipFile]::ExtractToDirectory($archivePath,$selected)
    $identity=Get-Content "$selected/platform-build.json" -Raw|ConvertFrom-Json
    if($identity.product -cne 'OpenGuidePlatform' -or $identity.package -cne 'PlatformBuild' -or $identity.version -cne $manifest.version -or $identity.sourceCommit -cne $manifest.sourceCommit -or $identity.dependencies.GuideSite.sha256 -cne $manifest.packages.GuideSite.sha256 -or $identity.dependencies.GuideSite.version -cne $manifest.version){throw 'PlatformBuild metadata differs from the coordinated release.'}
}
if($Product -eq 'Platform' -and -not (Test-Path "$selected/system/OpenGuidePlatform.PowerShell.PlatformBuild/OpenGuidePlatform.PowerShell.PlatformBuild.psm1")){throw 'Platform engineering requires the PlatformBuild package and its matching GuideSite dependency. Select a complete platform release or local checkout.'}
if(-not (Test-Path -LiteralPath "$selected/system/OpenGuidePlatform.PowerShell.GuideSiteBuild/OpenGuidePlatform.PowerShell.GuideSiteBuild.psm1" -PathType Leaf)){throw 'Selected platform does not contain the guide-site Build module.'}
Write-Host "Platform source: $selection; path: $selected"
return $selected
