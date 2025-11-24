# Using Wix CLI to Update Your Site Automatically

## Yes! You Can Use Wix CLI to Push Changes

Instead of manually copying content in the Wix Editor, you can use **Wix CLI** to push your updated website files directly to your Wix site.

## Prerequisites

1. **Wix CLI installed:**
   ```bash
   npm install -g @wix/cli
   ```

2. **Your Wix site connected to GitHub:**
   - Your site should already be connected (you mentioned `mysite` repo)
   - Or connect it: Wix Editor → Settings → Dev Mode → Connect to GitHub

## Step-by-Step: Push Changes Using Wix CLI

### Step 1: Navigate to Your Wix Repository

```bash
# If you have a separate Wix repo (like mysite or aspmcs)
cd path/to/your-wix-repo

# Or if you want to use the website folder
cd C:\Users\scoob\ASPM-Agent\website
```

### Step 2: Login to Wix CLI

```bash
wix login
```

This will open a browser for you to authenticate with your Wix account.

### Step 3: Pull Latest from Wix (Optional but Recommended)

```bash
wix pull
```

This syncs any changes made in the Wix Editor to your local files.

### Step 4: Copy Your Updated Website Files

If your Wix repo has a `public/` or `src/` folder structure:

```powershell
# Create public folder if it doesn't exist
New-Item -ItemType Directory -Path public -Force

# Copy your updated HTML files
Copy-Item *.html public\ -Force
Copy-Item *.css public\ -Force
Copy-Item *.js public\ -Force
```

### Step 5: Commit Changes to Git

```bash
git add .
git commit -m "Update website with ASPM & FLMA and company branding"
git push origin main
```

### Step 6: Push to Wix

```bash
wix push
```

This uploads your changes to your Wix site.

### Step 7: Publish Your Site

```bash
wix publish
```

Or publish manually in Wix Editor.

## Alternative: Use Wix Custom Code Sections

If you want to add CSS/JS directly via CLI:

### For CSS:
1. Copy `styles.css` content
2. In Wix Editor → Settings → Custom CSS → Paste
3. Or use Wix CLI to update custom code

### For JavaScript:
1. Copy `script.js` content  
2. In Wix Editor → Settings → Custom Code → Add Code to Site
3. Select "Body - end" → Paste

## Important Notes About Wix CLI

⚠️ **Limitations:**
- Wix CLI works best with **Velo code** (JavaScript in `src/` folder)
- **HTML content** still needs to be manually added via Wix Editor
- Wix doesn't directly render HTML files - you need to use Wix elements

✅ **What Wix CLI CAN do:**
- Push JavaScript/Velo code
- Push custom CSS
- Push static assets (images, files)
- Sync code between GitHub and Wix
- Deploy Velo applications

❌ **What Wix CLI CANNOT do:**
- Automatically convert HTML to Wix elements
- Update page content/text automatically
- Modify Wix Editor layouts

## Recommended Hybrid Approach

**Best workflow:**

1. **Use Wix CLI for:**
   - Custom CSS (`styles.css`)
   - Custom JavaScript (`script.js`)
   - Velo code updates
   - Static file uploads

2. **Use Wix Editor for:**
   - Page content (text, headings, buttons)
   - Layout and design
   - Adding new sections
   - Updating company information

## Quick Commands Reference

```bash
# Login to Wix
wix login

# Pull latest from Wix
wix pull

# Push changes to Wix
wix push

# Publish site
wix publish

# Start local development server
wix dev

# View site information
wix info

# List all commands
wix --help
```

## For Your Specific Updates

Since you've updated:
- Company branding (Army Strong PM Consultants)
- FLMA content
- Contact information
- Footer information

**You'll need to:**
1. **Use Wix Editor** to update text content (company name, contact info, etc.)
2. **Use Wix CLI** to push any custom CSS/JS changes if you modify those files

## Troubleshooting

**"Command not found: wix"**
- Install: `npm install -g @wix/cli`

**"Not authenticated"**
- Run: `wix login`

**"No Wix site connected"**
- Connect in Wix Editor → Settings → Dev Mode → Connect to GitHub

**"Files not showing on site"**
- Check Wix Editor → Settings → Custom Code
- Make sure files are in correct folder structure
- Verify `wix.config.json` is configured correctly

## Next Steps

1. **Install Wix CLI** (if not already): `npm install -g @wix/cli`
2. **Login**: `wix login`
3. **Pull latest**: `wix pull` (to see current structure)
4. **Update content** in Wix Editor OR push code via CLI
5. **Publish**: `wix publish` or use Wix Editor

## Documentation

- Wix CLI Docs: https://dev.wix.com/docs/rest/articles/getting-started/wix-cli
- Wix Velo Docs: https://www.wix.com/velo
- Wix Dev Mode: https://support.wix.com/en/article/about-dev-mode

