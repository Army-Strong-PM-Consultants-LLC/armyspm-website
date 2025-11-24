# Wix CLI Guide - Pushing Your Website Code

Since your Wix site is connected to GitHub via Wix CLI, you can push code directly!

## Wix Repository Structure

Your Wix repo (`aspmcs`) uses this structure:
```
aspmcs/
├── src/              # Velo code (JavaScript)
├── public/           # Static files (HTML, CSS, images) - if you add this
├── package.json
├── wix.config.json
└── README.md
```

## Option 1: Add Files to Your Wix Repo (Recommended)

### Step 1: Clone Your Wix Repo

```bash
# If you haven't already
git clone https://github.com/Taceyes/aspmcs.git
cd aspmcs
```

### Step 2: Add Website Files

Create a `public` folder and copy your website files:

```bash
# Create public directory
mkdir public

# Copy website files
cp -r ../ASPM-Agent/website/* public/

# Or on Windows PowerShell:
# New-Item -ItemType Directory -Path public
# Copy-Item ..\ASPM-Agent\website\* public\ -Recurse
```

### Step 3: Commit and Push

```bash
git add public/
git commit -m "Add ASPM Agent website files"
git push origin main
```

### Step 4: Use Wix CLI to Deploy

```bash
# Install Wix CLI if you haven't
npm install -g @wix/cli

# Login to Wix
wix login

# Pull latest from Wix
wix pull

# Push your changes
wix push

# Or publish directly
wix publish
```

## Option 2: Use Wix Custom Code Sections

If you want to add the code directly in Wix:

### For CSS:
1. In Wix Editor → **Settings** → **Custom CSS**
2. Copy contents of `styles.css`
3. Paste into the custom CSS section

### For JavaScript:
1. In Wix Editor → **Settings** → **Custom Code** → **Add Code to Site**
2. Select **"Body - end"**
3. Copy contents of `script.js`
4. Paste and save

### For HTML Content:
1. Use Wix's **HTML iframe** elements
2. Or copy text content and paste into Wix text elements

## Option 3: Add to src/ Folder (Velo Code)

If you want to use Wix Velo (JavaScript):

1. **Create page files in `src/`:**
   ```javascript
   // src/pages/index.js
   import wixWindow from 'wix-window';
   
   $w.onReady(function () {
       // Your page code here
   });
   ```

2. **Add CSS via Velo:**
   ```javascript
   // src/style.css (if supported)
   // Or use Wix's style manager
   ```

## Quick Setup Script

Create this script to set up your Wix repo:

```bash
#!/bin/bash
# setup-wix.sh

# Navigate to your Wix repo
cd aspmcs

# Create public folder
mkdir -p public

# Copy website files
cp -r ../ASPM-Agent/website/* public/

# Commit
git add public/
git commit -m "Add ASPM Agent website"

echo "Files added! Now run: wix push"
```

## Recommended Approach

**For static HTML/CSS/JS files:**
1. Add files to `public/` folder in your Wix repo
2. Use Wix CLI: `wix push` to deploy
3. Files will be accessible at your site

**For dynamic content:**
1. Use Wix Editor to create pages
2. Add Velo code in `src/` folder
3. Use custom CSS/JS in Wix settings

## Wix CLI Commands Reference

```bash
# Login
wix login

# Pull latest from Wix
wix pull

# Push changes to Wix
wix push

# Publish site
wix publish

# Start local development
wix dev

# View site info
wix info
```

## Next Steps

1. **Clone your Wix repo** (if not already)
2. **Add website files** to `public/` folder
3. **Commit and push** to GitHub
4. **Run `wix push`** to deploy to Wix
5. **Check your site** at https://www.armyspm.info/

## Troubleshooting

- **Files not showing?** Check Wix Editor → Settings → Custom Code
- **CSS not applying?** Use Wix's Custom CSS section
- **Need help?** Check Wix CLI docs: https://dev.wix.com/docs/rest/articles/getting-started/wix-cli

