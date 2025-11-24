# ASPM Agent Website

Complete website structure for the ASPM Agent System. This can be used to rebuild your Wix site or deployed as a standalone website.

## Files Structure

```
website/
├── index.html          # Homepage
├── about.html          # About page
├── features.html       # Features & capabilities
├── agents.html         # Agents overview
├── documentation.html  # Documentation & API docs
├── contact.html        # Contact page
├── styles.css          # Main stylesheet
├── script.js           # JavaScript functionality
└── README.md           # This file
```

## How to Use in Wix

### Option 1: Import Content to Wix

1. **Open your Wix Editor** for https://www.armyspm.info/
2. **Replace Page Content:**
   - Go to each page (Home, About, Features, etc.)
   - Copy content from the corresponding HTML file
   - Paste into Wix text elements

3. **Update Navigation:**
   - Update your site menu to match:
     - Home
     - About
     - Features
     - Agents
     - Documentation
     - Contact

4. **Apply Styling:**
   - Use Wix's design tools to match the color scheme:
     - Primary: #2563eb (blue)
     - Accent: #0ea5e9 (light blue)
     - Text: #1e293b (dark gray)
   - Apply fonts: Inter (or similar sans-serif)

### Option 2: Use as Standalone Website

1. **Upload to Web Hosting:**
   - Upload all files to your web hosting provider
   - Ensure all files are in the same directory
   - Access via your domain

2. **Local Testing:**
   - Open `index.html` in a web browser
   - All pages should work with relative links

## Pages Overview

### Homepage (index.html)
- Hero section with main value proposition
- Quick start guide
- Key features preview
- Agents overview
- Call-to-action section

### About (about.html)
- System overview
- Architecture details
- Key principles
- Educational context
- System status

### Features (features.html)
- PMO Governance Suite
- Core features
- Tools & infrastructure
- Six Sigma & DMAIC
- Microsoft Copilot integration

### Agents (agents.html)
- Detailed information about all 10 agents
- Personas overview
- Agent capabilities

### Documentation (documentation.html)
- Quick start guide
- API endpoints
- Usage examples
- Documentation links
- GitHub repository link

### Contact (contact.html)
- Contact form
- GitHub links
- Additional resources
- Troubleshooting guides

## Customization

### Colors
Edit `styles.css` and update CSS variables:
```css
:root {
    --primary-color: #2563eb;
    --primary-dark: #1e40af;
    --accent-color: #0ea5e9;
    /* ... */
}
```

### Content
- Edit HTML files directly to update content
- All text is easily editable
- Images can be added by replacing placeholder content

### Styling
- All styles are in `styles.css`
- Responsive design included
- Mobile-friendly navigation

## Features

- ✅ Fully responsive design
- ✅ Modern, professional layout
- ✅ Mobile menu navigation
- ✅ Smooth scrolling
- ✅ Form handling (ready for backend integration)
- ✅ SEO-friendly structure
- ✅ Accessible markup

## Next Steps

1. **Review Content:** Check all pages and update any specific details
2. **Add Images:** Replace text placeholders with relevant images
3. **Update Links:** Ensure all internal and external links are correct
4. **Test:** Test all pages and forms
5. **Deploy:** Upload to Wix or your hosting provider

## Support

For questions or issues:
- GitHub: https://github.com/Taceyes/ASPM-Agent
- Documentation: See documentation.html

