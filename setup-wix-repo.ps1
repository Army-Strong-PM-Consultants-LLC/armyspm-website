# PowerShell script to set up Wix repo with website files
# Run this from your Wix repo directory

Write-Host "Setting up Wix repo with ASPM Agent website files..." -ForegroundColor Green

# Check if we're in the right directory
if (-not (Test-Path "wix.config.json")) {
    Write-Host "Error: wix.config.json not found. Are you in your Wix repo directory?" -ForegroundColor Red
    exit 1
}

# Create public directory if it doesn't exist
if (-not (Test-Path "public")) {
    New-Item -ItemType Directory -Path "public" | Out-Null
    Write-Host "Created public/ directory" -ForegroundColor Green
}

# Copy website files
$websitePath = "..\ASPM-Agent\website"
if (Test-Path $websitePath) {
    Copy-Item "$websitePath\*.html" -Destination "public\" -Force
    Copy-Item "$websitePath\*.css" -Destination "public\" -Force
    Copy-Item "$websitePath\*.js" -Destination "public\" -Force
    Write-Host "Copied website files to public/" -ForegroundColor Green
} else {
    Write-Host "Warning: Website files not found at $websitePath" -ForegroundColor Yellow
    Write-Host "Please update the path or copy files manually" -ForegroundColor Yellow
}

Write-Host "`nNext steps:" -ForegroundColor Cyan
Write-Host "1. Review the files in public/" -ForegroundColor White
Write-Host "2. git add public/" -ForegroundColor White
Write-Host "3. git commit -m 'Add ASPM Agent website files'" -ForegroundColor White
Write-Host "4. git push origin main" -ForegroundColor White
Write-Host "5. wix push" -ForegroundColor White

