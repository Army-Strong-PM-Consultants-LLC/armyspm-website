# Safe Way to Handle Website Files

## ✅ RECOMMENDED: Copy (Don't Move)

**Always COPY the website files, never MOVE them.**

### Why Copy is Safe:

1. ✅ **Keeps original in private repo** - Source of truth stays intact
2. ✅ **No broken references** - ASPM-Agent project structure unchanged
3. ✅ **Easy updates** - Copy again when you make changes
4. ✅ **No git issues** - Original files remain tracked
5. ✅ **Safe to experiment** - Can delete public repo copy without worry

### Why Moving is Risky:

1. ❌ **Breaks repository structure** - Files are tracked in git
2. ❌ **Loses source files** - Original location is empty
3. ❌ **Hard to update** - Would need to move back and forth
4. ❌ **Git complications** - Moving tracked files can cause issues
5. ❌ **No backup** - If public repo has issues, you've lost the source

---

## 📁 Recommended Structure

### Keep This Structure:

```
C:\Users\scoob\
├── ASPM-Agent\              (PRIVATE repo - keep as is)
│   ├── website\             ← KEEP THIS (source files)
│   │   ├── index.html
│   │   ├── about.html
│   │   └── ...
│   ├── aspm\                (backend code - stays private)
│   └── ...
│
└── armyspm-website\         (PUBLIC repo - copy of website)
    ├── index.html           ← COPY from website/
    ├── about.html           ← COPY from website/
    └── ...
```

**Workflow:**
1. **Edit website files** in `ASPM-Agent/website/` (private repo)
2. **Copy to public repo** when ready to publish
3. **Push public repo** to GitHub Pages
4. **Original stays safe** in private repo

---

## 🔄 Safe Copy Process

### Step 1: Create Public Repo Folder (Outside ASPM-Agent)

```powershell
# Create folder for public website repo (outside ASPM-Agent)
cd C:\Users\scoob
mkdir armyspm-website
cd armyspm-website

# Initialize git (if not already cloned)
git init
git remote add origin https://github.com/Taceyes/armyspm-website.git
```

### Step 2: Copy Website Files (Don't Move!)

```powershell
# Copy files (original stays in ASPM-Agent)
Copy-Item ..\ASPM-Agent\website\*.html . -Force
Copy-Item ..\ASPM-Agent\website\*.css . -Force
Copy-Item ..\ASPM-Agent\website\*.js . -Force
Copy-Item ..\ASPM-Agent\website\README.md . -Force

# Verify files copied (original still exists)
Test-Path ..\ASPM-Agent\website\index.html  # Should return True
```

### Step 3: Add Custom Files for Public Repo

```powershell
# Add CNAME for custom domain
"armyspm.com" | Out-File -FilePath CNAME -Encoding utf8

# Create .gitignore (exclude any sensitive files)
@"
# Exclude sensitive files
*.env
*.key
*.pem
secrets/
.DS_Store
"@ | Out-File -FilePath .gitignore -Encoding utf8
```

### Step 4: Commit and Push

```powershell
git add .
git commit -m "Initial website deployment"
git push origin main
```

---

## 🔄 Updating Website (Copy Again)

When you update website files in your private repo:

```powershell
# Navigate to public repo
cd C:\Users\scoob\armyspm-website

# Copy updated files (original stays in ASPM-Agent)
Copy-Item ..\ASPM-Agent\website\*.html . -Force
Copy-Item ..\ASPM-Agent\website\*.css . -Force
Copy-Item ..\ASPM-Agent\website\*.js . -Force

# Commit and push
git add .
git commit -m "Update website content"
git push origin main
```

**Original files in `ASPM-Agent/website/` remain untouched!**

---

## 🛡️ Safety Checklist

Before copying, verify:

- [ ] Original files exist in `ASPM-Agent/website/`
- [ ] You're copying TO a different location (not moving)
- [ ] Using `Copy-Item` not `Move-Item`
- [ ] Public repo folder is outside `ASPM-Agent`
- [ ] Original files still exist after copy

---

## ⚠️ What NOT to Do

### ❌ Don't Do This:

```powershell
# DON'T MOVE - This removes from original location
Move-Item C:\Users\scoob\ASPM-Agent\website C:\Users\scoob\armyspm-website

# DON'T DELETE - This loses your source
Remove-Item C:\Users\scoob\ASPM-Agent\website -Recurse

# DON'T RENAME in place - Breaks git tracking
Rename-Item C:\Users\scoob\ASPM-Agent\website C:\Users\scoob\ASPM-Agent\website-old
```

### ✅ Do This Instead:

```powershell
# COPY - Original stays safe
Copy-Item C:\Users\scoob\ASPM-Agent\website\* C:\Users\scoob\armyspm-website\ -Recurse -Force
```

---

## 📋 Complete Safe Setup Script

Save as `setup-public-website-safe.ps1`:

```powershell
# Safe Website Setup Script
Write-Host "Setting up public website repository (SAFE COPY METHOD)..." -ForegroundColor Green

# Variables
$SOURCE = "C:\Users\scoob\ASPM-Agent\website"
$DEST = "C:\Users\scoob\armyspm-website"
$REPO_URL = "https://github.com/Taceyes/armyspm-website.git"

# Verify source exists
if (-not (Test-Path $SOURCE)) {
    Write-Host "ERROR: Source folder not found: $SOURCE" -ForegroundColor Red
    exit 1
}

# Create destination folder (outside ASPM-Agent)
if (-not (Test-Path $DEST)) {
    New-Item -ItemType Directory -Path $DEST | Out-Null
    Write-Host "Created destination folder: $DEST" -ForegroundColor Green
}

# Clone or initialize git
if (-not (Test-Path "$DEST\.git")) {
    Write-Host "Initializing git repository..." -ForegroundColor Yellow
    Set-Location $DEST
    git init
    git remote add origin $REPO_URL
} else {
    Set-Location $DEST
    Write-Host "Git repository already exists" -ForegroundColor Yellow
}

# COPY files (original stays in ASPM-Agent)
Write-Host "`nCopying website files (original files stay safe)..." -ForegroundColor Yellow
Copy-Item "$SOURCE\*.html" $DEST -Force
Copy-Item "$SOURCE\*.css" $DEST -Force
Copy-Item "$SOURCE\*.js" $DEST -Force
Copy-Item "$SOURCE\README.md" $DEST -Force -ErrorAction SilentlyContinue

# Verify original still exists
if (Test-Path "$SOURCE\index.html") {
    Write-Host "✅ Original files still safe in ASPM-Agent/website/" -ForegroundColor Green
} else {
    Write-Host "⚠️ WARNING: Original files may be missing!" -ForegroundColor Red
}

# Add CNAME
Write-Host "`nAdding CNAME file..." -ForegroundColor Yellow
"armyspm.com" | Out-File -FilePath "$DEST\CNAME" -Encoding utf8

# Create .gitignore
Write-Host "Creating .gitignore..." -ForegroundColor Yellow
@"
# Exclude sensitive files
*.env
*.key
*.pem
secrets/
.DS_Store
"@ | Out-File -FilePath "$DEST\.gitignore" -Encoding utf8

# Commit and push
Write-Host "`nCommitting and pushing..." -ForegroundColor Yellow
Set-Location $DEST
git add .
git commit -m "Initial website deployment (copied from private repo)"
git push origin main

Write-Host "`n✅ Done! Website files copied safely." -ForegroundColor Green
Write-Host "Original files remain in: $SOURCE" -ForegroundColor Cyan
Write-Host "Public files are in: $DEST" -ForegroundColor Cyan
Write-Host "`nNext: Enable GitHub Pages at:" -ForegroundColor Yellow
Write-Host "https://github.com/Taceyes/armyspm-website/settings/pages" -ForegroundColor Cyan
```

---

## 🎯 Summary

**ALWAYS COPY, NEVER MOVE:**

1. ✅ **Keep `ASPM-Agent/website/`** as your source (private repo)
2. ✅ **Copy to `armyspm-website/`** for public site (public repo)
3. ✅ **Original stays safe** - never touched
4. ✅ **Easy to update** - just copy again when needed
5. ✅ **No risk** - can always delete public copy and start over

**Your workflow:**
- Edit → `ASPM-Agent/website/` (private)
- Copy → `armyspm-website/` (public)
- Push → GitHub Pages
- Original → Always safe in private repo

This is the safest approach! 🛡️

