#Requires -Version 5.1

<#
.SYNOPSIS
    Generates a SHA-256 hash from an email address for Gravatar URLs.

.DESCRIPTION
    This script takes an email address and generates the SHA-256 hash required for Gravatar URLs.
    Gravatar uses MD5 by default, but this script provides SHA-256 for enhanced security.
    The email is automatically converted to lowercase and trimmed of whitespace as required by Gravatar specs.

.PARAMETER Email
    The email address to hash. Will be automatically trimmed and converted to lowercase.

.PARAMETER UseClipboard
    If specified, copies the generated hash to the clipboard.

.PARAMETER GenerateUrl
    If specified, generates the complete Gravatar URL with the hash.

.PARAMETER Size
    The size of the Gravatar image (default: 64). Only used when GenerateUrl is specified.

.PARAMETER DefaultImage
    The default image to use if no Gravatar is found. Options: 404, mp, identicon, monsterid, wavatar, retro, robohash, blank
    Only used when GenerateUrl is specified.

.EXAMPLE
    .\Get-GravatarHash.ps1 -Email "john.doe@example.com"
    Generates SHA-256 hash for the email address.

.EXAMPLE
    .\Get-GravatarHash.ps1 -Email "john.doe@example.com" -UseClipboard
    Generates hash and copies it to clipboard.

.EXAMPLE
    .\Get-GravatarHash.ps1 -Email "john.doe@example.com" -GenerateUrl -Size 128
    Generates complete Gravatar URL with 128px size.

.EXAMPLE
    .\Get-GravatarHash.ps1 -Email "john.doe@example.com" -GenerateUrl -DefaultImage "identicon"
    Generates complete Gravatar URL with identicon fallback.

.NOTES
    Author: Open Guide to Kanban Project
    Version: 1.0
    
    Gravatar Documentation: https://docs.gravatar.com/api/avatars/images/
    
    Note: Gravatar traditionally uses MD5 hashes, but this script provides SHA-256 for enhanced security.
    Some Gravatar services may not support SHA-256 hashes yet.
#>

[CmdletBinding()]
param(
    [Parameter(Mandatory = $true, Position = 0, ValueFromPipeline = $true)]
    [string]$Email,
    
    [Parameter()]
    [switch]$UseClipboard,
    
    [Parameter()]
    [switch]$GenerateUrl,
    
    [Parameter()]
    [ValidateRange(1, 2048)]
    [int]$Size = 64,
    
    [Parameter()]
    [ValidateSet('404', 'mp', 'identicon', 'monsterid', 'wavatar', 'retro', 'robohash', 'blank')]
    [string]$DefaultImage = 'mp'
)

begin {
    Write-Verbose "Starting Gravatar hash generation"
}

process {
    try {
        # Normalize email according to Gravatar requirements
        $normalizedEmail = $Email.Trim().ToLowerInvariant()
        Write-Verbose "Normalized email: $normalizedEmail"
        
        # Create SHA-256 hash
        $sha256 = [System.Security.Cryptography.SHA256]::Create()
        $emailBytes = [System.Text.Encoding]::UTF8.GetBytes($normalizedEmail)
        $hashBytes = $sha256.ComputeHash($emailBytes)
        $hash = [System.BitConverter]::ToString($hashBytes).Replace('-', '').ToLowerInvariant()
        
        Write-Verbose "Generated SHA-256 hash: $hash"
        
        # Output results
        $result = @{
            Email    = $normalizedEmail
            Hash     = $hash
            HashType = 'SHA-256'
        }
        
        if ($GenerateUrl) {
            $gravatarUrl = "https://www.gravatar.com/avatar/$hash"
            $params = @()
            
            if ($Size -ne 64) {
                $params += "s=$Size"
            }
            
            if ($DefaultImage -ne 'mp') {
                $params += "d=$DefaultImage"
            }
            
            if ($params.Count -gt 0) {
                $gravatarUrl += "?" + ($params -join "&")
            }
            
            $result.GravatarUrl = $gravatarUrl
            Write-Host "Gravatar URL: $gravatarUrl" -ForegroundColor Green
        }
        
        if ($UseClipboard) {
            if ($GenerateUrl -and $result.GravatarUrl) {
                $result.GravatarUrl | Set-Clipboard
                Write-Host "Gravatar URL copied to clipboard!" -ForegroundColor Yellow
            }
            else {
                $hash | Set-Clipboard
                Write-Host "Hash copied to clipboard!" -ForegroundColor Yellow
            }
        }
        
        # Display results
        Write-Host "Email: $($result.Email)" -ForegroundColor Cyan
        Write-Host "SHA-256 Hash: $($result.Hash)" -ForegroundColor Green
        
        # Return object for pipeline usage
        return $result
        
    }
    catch {
        Write-Error "Failed to generate hash for email '$Email': $($_.Exception.Message)"
        throw
    }
    finally {
        if ($sha256) {
            $sha256.Dispose()
        }
    }
}

end {
    Write-Verbose "Gravatar hash generation completed"
}
