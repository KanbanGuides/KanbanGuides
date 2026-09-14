#Requires -Version 7.4
[CmdletBinding(SupportsShouldProcess)]
param(
    [Parameter(Position=0)][ValidateSet('All','Prepare','Build','Validate','Serve','Deploy','Verify','Update','Dependencies')][string]$Stage='All',
    [ValidateSet('auto','local','canary','preview','production')][string]$Target='auto',
    [ValidateSet('Auto','Local','Preview','Production','Path')][string]$PlatformSource='Auto',
    [string]$PlatformPath,[string]$PlatformRelease,
    [ValidateSet('preview','production')][string]$Ring,
    [switch]$Deploy,[string]$DeploymentAdapter,
    [int]$PullRequestNumber,[string]$OutputPath,[string]$BaseUrl,[string]$DeploymentUrl,[string]$DeploymentEnvironment
)
$ErrorActionPreference='Stop'
$lock=Get-Content "$PSScriptRoot/.OpenGuidePlatform/installation.json" -Raw|ConvertFrom-Json
if($Stage -eq 'Update'){
    $platform=& "$PSScriptRoot/.OpenGuidePlatform/Resolve-OpenGuidePlatform.ps1" -WorkspaceRoot $PSScriptRoot
    Import-Module "$platform/system/OpenGuidePlatform.PowerShell.GuideSiteAdoption/OpenGuidePlatform.PowerShell.GuideSiteAdoption.psm1" -Force
    Update-GuideSitePlatform -WorkspaceRoot $PSScriptRoot -PlatformSource $PlatformSource -PlatformPath $PlatformPath -PlatformRelease $PlatformRelease -Ring $Ring -WhatIf:$WhatIfPreference
    return
}
$platform=& "$PSScriptRoot/.OpenGuidePlatform/Resolve-OpenGuidePlatform.ps1" -WorkspaceRoot $PSScriptRoot -PlatformSource $PlatformSource -PlatformPath $PlatformPath -PlatformRelease $PlatformRelease
Import-Module "$platform/system/OpenGuidePlatform.PowerShell.GuideSiteBuild/OpenGuidePlatform.PowerShell.GuideSiteBuild.psm1" -Force
$arguments=@{}+$PSBoundParameters
foreach($name in @('PlatformSource','PlatformPath','PlatformRelease','Ring')){$arguments.Remove($name)}
Invoke-GuideSiteBuild -WorkspaceRoot $PSScriptRoot -SourcePath $lock.sourcePath @arguments
