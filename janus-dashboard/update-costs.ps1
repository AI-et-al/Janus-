# ABOUTME: PowerShell script to update cost analytics data for janus-dashboard
# ABOUTME: Runs claudelytics and generates costs.json for dashboard consumption

$ErrorActionPreference = "Stop"
$ScriptDir = Split-Path -Parent $MyInvocation.MyCommand.Path
$ClaudelyticsBin = Join-Path $ScriptDir "..\claudelytics\target\release\claudelytics.exe"

# Check if claudelytics exists
if (-not (Test-Path $ClaudelyticsBin)) {
    Write-Error "claudelytics not found at $ClaudelyticsBin"
    Write-Host "Please build claudelytics first: cd ..\claudelytics; cargo build --release"
    exit 1
}

Write-Host "Generating cost analytics..."

# Get daily data
$Daily = & $ClaudelyticsBin --json daily 2>$null | ConvertFrom-Json
$Monthly = & $ClaudelyticsBin --json monthly 2>$null | ConvertFrom-Json

# Create combined JSON
$CostsData = @{
    generated = (Get-Date -Format "o")
    source = "claudelytics"
    daily = $Daily.daily
    monthly = $Monthly
}

$OutputPath = Join-Path $ScriptDir "costs.json"
$CostsData | ConvertTo-Json -Depth 10 | Set-Content $OutputPath -Encoding UTF8

Write-Host "Cost data written to $OutputPath"
