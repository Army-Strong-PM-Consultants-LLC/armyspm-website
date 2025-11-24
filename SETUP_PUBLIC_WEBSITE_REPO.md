# Create Public Website Repo (Keep ASPM-Agent Private)

## 🎯 Solution: Separate Public Repository for Website Only

**Strategy:**
- ✅ Keep `ASPM-Agent` repo **PRIVATE** (your code stays secure)
- ✅ Create new **PUBLIC** repo just for website files
- ✅ Use GitHub Pages on the public repo
- ✅ Only website HTML/CSS/JS is public (no backend code exposed)

---

## Step-by-Step Setup

### Step 1: Create New Public Repository

1. **Go to GitHub:** https://github.com/new
2. **Repository name:** `armyspm-website` (or `aspm-flma-website`)
3. **Description:** "ASPM & FLMA Agent Systems - Public Website"
4. **Visibility:** ✅ **Public** (required for free GitHub Pages)
5. **DO NOT** initialize with README, .gitignore, or license
6. Click **"Create repository"**

### Step 2: Copy Website Files to New Repo

**Option A: Clone and Copy (Recommended)**

```powershell
# 1. Clone the new empty repo
cd C:\Users\scoob
git clone https://github.com/Taceyes/armyspm-website.git
cd armyspm-website

# 2. Copy only website files (no backend code)
Copy-Item ..\ASPM-Agent\website\*.html .
Copy-Item ..\ASPM-Agent\website\*.css .
Copy-Item ..\ASPM-Agent\website\*.js .
Copy-Item ..\ASPM-Agent\website\README.md .

# 3. Create .gitignore (optional - to exclude any sensitive files)
@"
# Exclude any sensitive files
*.env
*.key
*.pem
secrets/
"@ | Out-File -FilePath .gitignore -Encoding utf8

# 4. Commit and push
git add .
git commit -m "Initial website files for ASPM & FLMA"
git push origin main
```

**Option B: Use GitHub Desktop or VS Code Git**

1. Create new folder for website repo
2. Copy website files (HTML, CSS, JS, README)
3. Initialize git: `git init`
4. Add remote: `git remote add origin https://github.com/Taceyes/armyspm-website.git`
5. Commit and push

### Step 3: Enable GitHub Pages

1. **Go to:** `https://github.com/Taceyes/armyspm-website/settings/pages`
2. **Source:** Deploy from branch
3. **Branch:** `main`
4. **Folder:** `/ (root)`
5. Click **Save**

**Your site will be live at:**
- `https://taceyes.github.io/armyspm-website/`

### Step 4: Add Custom Domain (armyspm.com)

1. **Create CNAME file in the website repo:**
   ```powershell
   cd C:\Users\scoob\armyspm-website
   echo "armyspm.com" > CNAME
   git add CNAME
   git commit -m "Add custom domain"
   git push
   ```

2. **Update DNS at GoDaddy:**
   - Go to GoDaddy DNS Management
   - Add these A records:
     - `@` → `185.199.108.153`
     - `@` → `185.199.109.153`
     - `@` → `185.199.110.153`
     - `@` → `185.199.111.153`
   - Add CNAME record:
     - `www` → `taceyes.github.io`

3. **Wait 24-48 hours** for DNS propagation

---

## 🔄 Keeping Website Updated

### Option 1: Manual Sync (Simple)

When you update website files in your private repo:

```powershell
# Copy updated files to public repo
Copy-Item C:\Users\scoob\ASPM-Agent\website\*.html C:\Users\scoob\armyspm-website\ -Force
Copy-Item C:\Users\scoob\ASPM-Agent\website\*.css C:\Users\scoob\armyspm-website\ -Force
Copy-Item C:\Users\scoob\ASPM-Agent\website\*.js C:\Users\scoob\armyspm-website\ -Force

# Commit and push
cd C:\Users\scoob\armyspm-website
git add .
git commit -m "Update website content"
git push
```

### Option 2: GitHub Actions (Automated)

Create `.github/workflows/deploy-website.yml` in your **private** repo:

```yaml
name: Deploy Website to Public Repo

on:
  push:
    paths:
      - 'website/**'
    branches:
      - main

jobs:
  deploy:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v3
      
      - name: Copy website files
        run: |
          cp -r website/* ../website-files/
      
      - name: Push to public repo
        uses: peaceiris/actions-gh-pages@v3
        with:
          personal_token: ${{ secrets.PUBLIC_REPO_TOKEN }}
          external_repository: Taceyes/armyspm-website
          publish_dir: ./website
          user_name: 'github-actions[bot]'
          user_email: 'github-actions[bot]@users.noreply.github.com'
```

**Setup:**
1. Create Personal Access Token with `repo` scope
2. Add as secret: `PUBLIC_REPO_TOKEN` in private repo settings
3. Website auto-updates when you push to private repo

---

## 📁 Repository Structure

### Private Repo (ASPM-Agent) - Stays Private
```
ASPM-Agent/ (PRIVATE)
├── aspm/              # Backend code (PRIVATE)
├── data/              # Data files (PRIVATE)
├── website/           # Website source files
│   ├── index.html
│   ├── about.html
│   ├── styles.css
│   └── script.js
└── ... (all your code stays private)
```

### Public Repo (armyspm-website) - Only Website Files
```
armyspm-website/ (PUBLIC)
├── index.html         # Only website files
├── about.html
├── features.html
├── agents.html
├── documentation.html
├── contact.html
├── styles.css
├── script.js
├── README.md
└── CNAME              # Custom domain
```

**What's Public:**
- ✅ HTML files (website content)
- ✅ CSS styling
- ✅ JavaScript (frontend only)
- ✅ README

**What Stays Private:**
- ✅ All backend code (`aspm/` folder)
- ✅ Data files
- ✅ API code
- ✅ Configuration files
- ✅ Secrets and credentials

---

## 🔒 Security Best Practices

### ✅ Safe to Make Public:
- HTML files (website content)
- CSS files (styling)
- Frontend JavaScript (no secrets)
- README files
- Documentation

### ❌ Never Make Public:
- API keys or tokens
- Database credentials
- Private data files
- Backend source code
- `.env` files
- Configuration with secrets

### Check Before Publishing:

```powershell
# Review what you're about to publish
cd C:\Users\scoob\armyspm-website
Get-ChildItem -Recurse | Select-Object Name, FullName

# Make sure no sensitive files are included
# Only HTML, CSS, JS, README, CNAME should be there
```

---

## 🎯 Alternative: Use Netlify/Vercel (Also Free)

If you prefer not to use GitHub Pages:

### Netlify:
1. Create public repo (same as above)
2. Connect to Netlify
3. Deploy from GitHub
4. Add custom domain

### Vercel:
1. Create public repo (same as above)
2. Connect to Vercel
3. Deploy from GitHub
4. Add custom domain

**Both allow private repos** but you'd still want a separate public repo for the website.

---

## 📋 Quick Checklist

- [ ] Create new public repo: `armyspm-website`
- [ ] Copy only website files (HTML, CSS, JS)
- [ ] Add CNAME file for custom domain
- [ ] Enable GitHub Pages
- [ ] Update DNS at GoDaddy
- [ ] Test site is live
- [ ] Set up sync workflow (manual or automated)

---

## 🚀 Quick Start Script

Save this as `setup-public-website.ps1`:

```powershell
# Setup Public Website Repository
Write-Host "Setting up public website repository..." -ForegroundColor Green

# Change these variables
$REPO_NAME = "armyspm-website"
$GITHUB_USER = "Taceyes"
$WEBSITE_SOURCE = "C:\Users\scoob\ASPM-Agent\website"

# Create and clone repo
cd C:\Users\scoob
git clone "https://github.com/$GITHUB_USER/$REPO_NAME.git"
cd $REPO_NAME

# Copy website files
Write-Host "Copying website files..." -ForegroundColor Yellow
Copy-Item "$WEBSITE_SOURCE\*.html" . -Force
Copy-Item "$WEBSITE_SOURCE\*.css" . -Force
Copy-Item "$WEBSITE_SOURCE\*.js" . -Force
Copy-Item "$WEBSITE_SOURCE\README.md" . -Force

# Create CNAME
Write-Host "Creating CNAME file..." -ForegroundColor Yellow
"armyspm.com" | Out-File -FilePath CNAME -Encoding utf8

# Create .gitignore
Write-Host "Creating .gitignore..." -ForegroundColor Yellow
@"
# Exclude sensitive files
*.env
*.key
*.pem
secrets/
.DS_Store
"@ | Out-File -FilePath .gitignore -Encoding utf8

# Commit and push
Write-Host "Committing and pushing..." -ForegroundColor Yellow
git add .
git commit -m "Initial website deployment"
git push origin main

Write-Host "`n✅ Done! Now enable GitHub Pages:" -ForegroundColor Green
Write-Host "https://github.com/$GITHUB_USER/$REPO_NAME/settings/pages" -ForegroundColor Cyan
```

---

## 💡 Summary

**Best Approach:**
1. ✅ Keep `ASPM-Agent` **PRIVATE** (all your code)
2. ✅ Create `armyspm-website` **PUBLIC** (only website files)
3. ✅ Use GitHub Pages on public repo
4. ✅ Sync website files when needed

**Result:**
- Your code stays private ✅
- Website is public and live ✅
- Free hosting ✅
- Full control ✅

Would you like me to help you create the public repo and set it up?

