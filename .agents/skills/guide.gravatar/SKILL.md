---
name: guide.gravatar
description: "Generates a SHA-256 hash from a contributor's email address for use in Gravatar URLs. Use when: get gravatar hash, generate gravatar, contributor avatar, gravatar url, email hash, gravatar image."
argument-hint: "Provide an email address. Optionally specify -UseClipboard to copy the result, -GenerateUrl to get a full Gravatar URL, -Size (1-2048), or -DefaultImage (404, mp, identicon, monsterid, wavatar, retro, robohash, blank)."
---

# Generate Gravatar Hash

Generates the SHA-256 hash required for Gravatar avatar URLs from a contributor's email address.

## Prerequisites

- PowerShell 5.1 or later

## What It Does

Takes an email address, normalises it (trim + lowercase), and computes a SHA-256 hash.  
Optionally copies the hash (or full URL) to the clipboard, or builds a complete `https://www.gravatar.com/avatar/<hash>` URL with optional size and default-image parameters.

## How to Invoke

Run the PowerShell script directly or ask Copilot to run it:

```powershell
# Basic hash
.\.agents\skills\guide.gravatar\Get-GravatarHash.ps1 -Email "jane.doe@example.com"

# Copy hash to clipboard
.\.agents\skills\guide.gravatar\Get-GravatarHash.ps1 -Email "jane.doe@example.com" -UseClipboard

# Generate a full Gravatar URL at 128 px with identicon fallback
.\.agents\skills\guide.gravatar\Get-GravatarHash.ps1 -Email "jane.doe@example.com" -GenerateUrl -Size 128 -DefaultImage identicon
```

## Parameters

| Parameter | Type | Default | Description |
|-----------|------|---------|-------------|
| `-Email` | String | *(required)* | Email address to hash. Trimmed and lowercased automatically. |
| `-UseClipboard` | Switch | — | Copies the hash (or URL when `-GenerateUrl` is set) to the clipboard. |
| `-GenerateUrl` | Switch | — | Outputs the complete Gravatar avatar URL. |
| `-Size` | Int | `64` | Image size in pixels (1–2048). Used only with `-GenerateUrl`. |
| `-DefaultImage` | String | `mp` | Fallback image style when no Gravatar exists. Options: `404`, `mp`, `identicon`, `monsterid`, `wavatar`, `retro`, `robohash`, `blank`. |

## Agent Steps

When the user asks for a Gravatar hash or URL for an email:

1. Confirm the email address (ask if not provided).
2. Run the script from the project root:
   ```powershell
   .\.agents\skills\guide.gravatar\Get-GravatarHash.ps1 -Email "<email>"
   ```
3. Report the resulting hash and, if requested, the full Gravatar URL.
4. Offer to copy the result to the clipboard (`-UseClipboard`) if the user seems to need it for manual entry.

## Notes

- Gravatar traditionally uses MD5 hashes; this script uses SHA-256 for improved security.  
  SHA-256 is supported by the modern Gravatar API (`/avatar/<sha256hash>`).
- The returned PowerShell object has keys: `Email`, `Hash`, `HashType`, and optionally `GravatarUrl`.
