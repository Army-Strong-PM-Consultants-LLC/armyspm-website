# Sync Website Script
# Copies updated files from private repo to public repo and pushes to GitHub

Write-Host "🔄 Syncing website files from private repo..." -ForegroundColor Green

$SOURCE = "C:\Users\scoob\ASPM-Agent\website"
$DEST = "C:\Users\scoob\website Public Repo"

# Verify source exists
if (-not (Test-Path $SOURCE)) {
    Write-Host "❌ ERROR: Source folder not found: $SOURCE" -ForegroundColor Red
    exit 1
}

# Copy updated website files
Write-Host "📋 Copying files..." -ForegroundColor Yellow
Copy-Item "$SOURCE\*.html" $DEST -Force
Copy-Item "$SOURCE\*.css" $DEST -Force
Copy-Item "$SOURCE\*.js" $DEST -Force

# Navigate to public repo
Set-Location $DEST

# Check if there are changes
$status = git status --porcelain
if ($status) {
    Write-Host "📝 Changes detected, committing..." -ForegroundColor Yellow
    
    # Add and commit
    git add .
    $timestamp = Get-Date -Format "yyyy-MM-dd HH:mm"
    git commit -m "Update website: $timestamp"
    
    # Push to GitHub
    Write-Host "🚀 Pushing to GitHub..." -ForegroundColor Yellow
    git push
    
    Write-Host "✅ Website synced and pushed successfully!" -ForegroundColor Green
    Write-Host "🌐 Site will update in 1-2 minutes on GitHub Pages" -ForegroundColor Cyan
} else {
    Write-Host "ℹ️  No changes detected. Website is up to date." -ForegroundColor Cyan
}

