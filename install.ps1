# Windows Installation Script for Dotfiles
# Run as Administrator!

$ErrorActionPreference = "Stop"

Write-Host "Installing dotfiles..." -ForegroundColor Cyan

# Get the directory where this script is located
$dotfilesDir = Split-Path -Parent $MyInvocation.MyCommand.Path

# Claude Code configuration
$claudeDir = "$HOME\.claude"
$claudeSource = "$dotfilesDir\claude\CLAUDE.md"
$claudeTarget = "$claudeDir\CLAUDE.md"

# Create .claude directory if it doesn't exist
if (!(Test-Path $claudeDir)) {
    New-Item -ItemType Directory -Path $claudeDir -Force | Out-Null
    Write-Host "Created $claudeDir" -ForegroundColor Green
}

# Remove existing file/symlink if present
if (Test-Path $claudeTarget) {
    Remove-Item $claudeTarget -Force
    Write-Host "Removed existing $claudeTarget" -ForegroundColor Yellow
}

# Create symlink
New-Item -ItemType SymbolicLink -Path $claudeTarget -Target $claudeSource -Force | Out-Null
Write-Host "Created symlink: $claudeTarget -> $claudeSource" -ForegroundColor Green

Write-Host ""
Write-Host "Installation complete!" -ForegroundColor Cyan
Write-Host "Restart Claude Code to apply the global rules." -ForegroundColor Yellow
