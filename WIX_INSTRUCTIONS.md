# How to Add Code to Your Wix Website

## Method 1: Using Wix Dev Mode (Recommended for Full Control)

If you have Wix Dev Mode enabled:

1. **Enable Dev Mode:**
   - In Wix Editor, click "Dev Mode" in the top menu
   - If not available, you may need to upgrade your plan

2. **Add Custom Code:**
   - Go to "Add" → "Embed" → "HTML iframe"
   - Or use "Add" → "Embed" → "Custom Code"
   - Paste your HTML code

3. **Add CSS:**
   - Go to "Settings" → "Custom CSS"
   - Paste the contents of `styles.css`

4. **Add JavaScript:**
   - Go to "Settings" → "Custom Code" → "Add Code to Site"
   - Select "Body - end" or "Head"
   - Paste the contents of `script.js`

## Method 2: Manual Content Transfer (Easiest - No Code Required)

### Step 1: Update Your Pages

1. **Delete Old Content:**
   - Select and delete the current "Create Studio" content
   - Keep your header/navigation structure

2. **Update Navigation Menu:**
   - Click on your menu/navigation element
   - Update menu items to:
     - Home
     - About
     - Features
     - Agents
     - Documentation
     - Contact

### Step 2: Build Homepage

1. **Add Hero Section:**
   - Click "Add" → "Strip" → Choose a full-width strip
   - Add a "Heading" element: "ASPM Agent System"
   - Add a "Text" element below with the subtitle
   - Style with gradient background (blue to light blue)

2. **Add Quick Start Cards:**
   - Click "Add" → "Strip" → Add a strip
   - Click "Add" → "Repeater" or "Gallery"
   - Create 3 cards with:
     - Card 1: 🚀 Dashboard (Streamlit) - Copy content from index.html
     - Card 2: ⚡ API Server (FastAPI) - Copy content from index.html
     - Card 3: 📚 Documentation - Copy content from index.html

3. **Add Features Section:**
   - Add another strip
   - Add "Heading": "Key Capabilities"
   - Add multiple "Text" elements or cards with feature descriptions

### Step 3: Create New Pages

1. **Add Pages:**
   - Click "Pages & Menu" in left sidebar
   - Click "+ Add Page" for each:
     - About
     - Features
     - Agents
     - Documentation
     - Contact

2. **Copy Content to Each Page:**
   - Open the corresponding HTML file (e.g., `about.html`)
   - Copy the text content (skip HTML tags)
   - Paste into Wix text elements
   - Use Wix headings, text boxes, and buttons

### Step 4: Apply Styling

1. **Set Site Colors:**
   - Click "Site Design" in left sidebar
   - Go to "Color Palette"
   - Set primary color: `#2563eb`
   - Set accent color: `#0ea5e9`

2. **Set Fonts:**
   - In "Site Design" → "Fonts"
   - Choose "Inter" or similar sans-serif font
   - Apply to headings and body text

3. **Style Elements:**
   - Select each element
   - Use Wix's design panel to:
     - Add shadows
     - Set border radius
     - Adjust spacing

## Method 3: Using HTML Embed Elements (Partial Code)

For specific sections:

1. **Add HTML Embed:**
   - Click "Add" → "Embed" → "HTML iframe"
   - Or "Add" → "Embed" → "Custom Code"

2. **For Each Page Section:**
   - Copy relevant HTML from the files
   - Paste into the embed element
   - Note: This may have limitations with Wix styling

## Method 4: Copy Content Manually (Most Reliable)

### Homepage Content to Copy:

**Hero Section:**
- Title: "ASPM Agent System"
- Subtitle: "A comprehensive multi-agent system for enterprise architecture, change management, and strategic planning"
- Description: "Designed for ServiceNow CTA/CMA consultants working with enterprise clients. Intelligent agents specialized in strategic portfolio management, PMO governance, organizational change, and more."

**Quick Start Section:**
- Title: "Quick Start"
- Three cards with content from `index.html`

**Features Section:**
- Title: "Key Capabilities"
- Copy all feature cards from `index.html`

### For Each Page:

1. Open the HTML file (e.g., `about.html`)
2. Read through the content
3. Copy text (not HTML tags)
4. Paste into Wix text elements
5. Format using Wix's text editor

## Quick Reference: Content from Each File

### index.html
- Hero section text
- Quick start cards
- Features grid
- Agents overview

### about.html
- System overview
- Architecture details
- Key principles
- Educational context
- System status

### features.html
- PMO Governance Suite details
- Core features
- Tools & infrastructure
- Six Sigma & DMAIC

### agents.html
- All 10 agents with descriptions
- Personas information

### documentation.html
- Quick start code examples
- API endpoints
- Usage examples
- Documentation links

### contact.html
- Contact information
- Contact form fields
- Resources links

## Tips for Wix

1. **Use Wix Elements:**
   - Text boxes for content
   - Buttons for CTAs
   - Strips for sections
   - Repeaters for card grids

2. **Maintain Consistency:**
   - Use same colors throughout
   - Use same fonts
   - Keep spacing consistent

3. **Mobile Responsive:**
   - Wix automatically makes sites responsive
   - Check mobile view frequently
   - Adjust element sizes for mobile

4. **Save Frequently:**
   - Click "Save" button often
   - Preview before publishing

## Need Help?

- Wix Help Center: https://support.wix.com/
- Wix Editor Guide: https://support.wix.com/en/article/using-the-wix-editor

