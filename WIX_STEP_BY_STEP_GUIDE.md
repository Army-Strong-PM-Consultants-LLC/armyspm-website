# Complete Step-by-Step Guide: Rebuilding Your Wix Site with ASPM Agent System Content

This guide will walk you through updating your Wix site at https://www.armyspm.info/ with the ASPM Agent System content.

## 🎯 Overview

You'll be:
1. Updating the homepage with new content
2. Creating/updating pages (About, Features, Agents, Documentation, Contact)
3. Updating navigation menu
4. Applying new colors and styling
5. Adding custom code (optional)

**Estimated Time:** 1-2 hours

---

## 📋 PREPARATION

### Before You Start

1. **Open Wix Editor:**
   - Go to https://editor.wix.com/html/editor/web/renderer/edit/d4c1dbff-561a-42b4-8030-4b5491cf752d
   - Or log into Wix and open your site

2. **Have Content Ready:**
   - Open `WIX_CONTENT_EXTRACTION.md` in a separate window
   - This file has all the text content ready to copy

3. **Backup (Optional):**
   - Take screenshots of current pages if you want to reference them later

---

## 🏠 STEP 1: UPDATE HOMEPAGE (20 minutes)

### 1.1 Update Hero Section

1. **Find the hero section** (the large banner at the top)
2. **Update the main heading:**
   - Click on the current heading
   - Replace with: **"ASPM Agent System"**
   - Make it large and bold

3. **Add/Update subtitle:**
   - Add a text element below the heading
   - Paste: **"A comprehensive multi-agent system for enterprise architecture, change management, and strategic planning"**
   - Style as medium-sized text

4. **Add description:**
   - Add another text element
   - Paste: **"Designed for ServiceNow CTA/CMA consultants working with enterprise clients. Intelligent agents specialized in strategic portfolio management, PMO governance, organizational change, and more."**

5. **Update buttons:**
   - Update button 1 text to: **"Get Started"**
   - Update button 2 text to: **"Explore Features"**
   - Link button 1 to Documentation page
   - Link button 2 to Features page

### 1.2 Add Quick Start Section

1. **Add a new strip** (section) below the hero
2. **Add heading:** "Quick Start"
3. **Create 3 cards/boxes:**
   - Click "Add" → "Box" (repeat 3 times)
   - Arrange them side by side

4. **Card 1 - Dashboard:**
   - Add emoji: 🚀
   - Add heading: "Dashboard (Streamlit)"
   - Add text:
     ```
     Start: Double-click start_dashboard.bat
     Access: http://localhost:8501
     No login required - runs locally
     ```

5. **Card 2 - API Server:**
   - Add emoji: ⚡
   - Add heading: "API Server (FastAPI)"
   - Add text:
     ```
     Start: Double-click start_api_server.bat
     Access: http://localhost:8000/docs
     Interactive API documentation
     ```

6. **Card 3 - Documentation:**
   - Add emoji: 📚
   - Add heading: "Documentation"
   - Add text:
     ```
     Comprehensive guides and API docs
     Local setup and deployment guides
     ```
   - Add a link: "View Docs →" (link to Documentation page)

### 1.3 Add Key Capabilities Section

1. **Add another strip**
2. **Add heading:** "Key Capabilities"
3. **Create 6 feature cards** (use boxes or repeater)
4. **For each card, add:**
   - Emoji icon
   - Feature title
   - Feature description

   **Card 1:**
   - 🎯 Strategic Portfolio Management
   - SPM pattern detection, resource management, and portfolio advisory

   **Card 2:**
   - 🏛️ PMO Governance
   - PMO Value Ring Engine for service catalog assessment and value scoring

   **Card 3:**
   - 🔄 Organizational Change
   - Prosci ADKAR Intake Engine for change readiness assessment

   **Card 4:**
   - 📊 OKR & KPI Management
   - OKR composition and KPI signal generation for strategic alignment

   **Card 5:**
   - 🏗️ Enterprise Architecture
   - Certified Technical Architect (CTA) and Master Architect (CMA) support

   **Card 6:**
   - 🧠 Cynefin Analysis
   - Domain classification and intervention mapping for complex problems

5. **Add button:** "View All Features" (link to Features page)

### 1.4 Add Intelligent Agents Preview

1. **Add another strip**
2. **Add heading:** "Intelligent Agents"
3. **Add subtitle:** "10 specialized agents for enterprise consulting"
4. **Create agent cards** (use repeater or grid of boxes)
5. **Add all 10 agents:**
   - CTA Agent - Certified Technical Architect guidance
   - CMA Agent - Certified Master Architect support
   - EA/TOGAF Agent - Enterprise Architecture & TOGAF
   - PMO Governance - PMO governance and best practices
   - OCM Agent - Organizational Change Management
   - Lean Six Sigma - DMAIC and process improvement
   - Cynefin Agent - Complexity analysis and classification
   - Strategy Alignment - Strategic planning and alignment
   - Value/Benefits - Value and benefits management
   - SPM Advisor - Strategic Portfolio Management

6. **Add button:** "Learn About All Agents" (link to Agents page)

### 1.5 Add Call-to-Action Section

1. **Add another strip**
2. **Add heading:** "Ready to Get Started?"
3. **Add text:** "Install dependencies and start using ASPM Agent System today"
4. **Add 2 buttons:**
   - "View Documentation" (link to Documentation page)
   - "GitHub Repository" (link to https://github.com/Taceyes/ASPM-Agent)

---

## 📄 STEP 2: UPDATE NAVIGATION MENU (5 minutes)

1. **Click on your navigation menu** (header)
2. **Update menu items to:**
   - Home
   - About
   - Features
   - Agents
   - Documentation
   - Contact

3. **Remove old items** if they exist (like "Blog", "Podcast", etc.)
4. **Link each item** to the corresponding page

---

## 📖 STEP 3: CREATE/UPDATE ABOUT PAGE (15 minutes)

1. **Go to Pages & Menu** (left sidebar)
2. **If About page doesn't exist:**
   - Click "+ Add Page"
   - Name it "About"
3. **If About page exists:**
   - Click on it to edit

### Add Content:

1. **Page Header:**
   - Add heading: "About ASPM Agent System"
   - Add subtitle: "Comprehensive multi-agent system for enterprise architecture, change management, and strategic planning"

2. **System Overview Section:**
   - Add heading: "System Overview"
   - Add text: (Copy from WIX_CONTENT_EXTRACTION.md - About Page - System Overview)
   - Add bullet list with "What We Provide" items

3. **System Architecture Section:**
   - Add heading: "System Architecture"
   - Add text: (Copy from WIX_CONTENT_EXTRACTION.md)
   - Create cards for each architecture component (Agents, Core Engine, Orchestrator, Personas, Safety Wrapper)

---

## 🎯 STEP 4: CREATE/UPDATE FEATURES PAGE (20 minutes)

1. **Create/Open Features page**

### Add Content:

1. **Page Header:**
   - Title: "Features & Capabilities"
   - Subtitle: "Comprehensive tools and modules for enterprise architecture and strategic planning"

2. **PMO Governance Suite Section:**
   - Add heading: "PMO Governance Suite"
   - Create 3 feature cards:
     - PMO Value Ring Engine
     - Prosci ADKAR Intake Engine
     - SPM Pattern Library
   - Copy details from WIX_CONTENT_EXTRACTION.md

3. **Core Features Section:**
   - Add heading: "Core Features"
   - Create 6 feature cards with details from content extraction file

---

## 🤖 STEP 5: CREATE/UPDATE AGENTS PAGE (25 minutes)

1. **Create/Open Agents page**

### Add Content:

1. **Page Header:**
   - Title: "Intelligent Agents"
   - Subtitle: "10 specialized agents for enterprise consulting and strategic planning"

2. **Create Agent Cards:**
   - Use a grid layout (repeater or multiple boxes)
   - For each of the 10 agents, create a card with:
     - Agent icon/emoji
     - Agent name
     - Agent subtitle
     - Description
     - Key capabilities (bullet list)

   **Copy agent details from WIX_CONTENT_EXTRACTION.md**

---

## 📚 STEP 6: CREATE/UPDATE DOCUMENTATION PAGE (20 minutes)

1. **Create/Open Documentation page**

### Add Content:

1. **Page Header:**
   - Title: "Documentation"
   - Subtitle: "Comprehensive guides, API documentation, and resources"

2. **Quick Start Section:**
   - Add heading: "Quick Start"
   - Add code blocks (use Wix code element or text with monospace font):
     - Installation code
     - Start Dashboard code
     - Start API Server code

3. **API Endpoints Section:**
   - Add heading: "API Endpoints"
   - Create cards for each endpoint:
     - PMO Value Ring Assessment
     - ADKAR Change Readiness
     - SPM Pattern Detection
     - OKR Composition
     - KPI Composition
   - Add button: "View Interactive API Docs" (link to http://localhost:8000/docs)

4. **Usage Examples Section:**
   - Add heading: "Usage Examples"
   - Add code examples (use code blocks)

---

## 📧 STEP 7: CREATE/UPDATE CONTACT PAGE (15 minutes)

1. **Create/Open Contact page**

### Add Content:

1. **Page Header:**
   - Title: "Contact Us"
   - Subtitle: "Get in touch with questions, feedback, or support requests"

2. **Contact Information Section:**
   - Add heading: "Get in Touch"
   - Add description
   - Create 3 contact method cards:
     - 📧 GitHub Issues
     - 💬 GitHub Discussions
     - 📚 Documentation
   - Add buttons with links

3. **Contact Form:**
   - Click "Add" → "Contact" → "Form"
   - Or use Wix form element
   - Add fields: Name, Email, Subject, Message
   - Style the form

---

## 🎨 STEP 8: APPLY DESIGN & STYLING (15 minutes)

### 8.1 Set Site Colors

1. **Click "Site Design"** (left sidebar)
2. **Go to "Color Palette"**
3. **Set colors:**
   - Primary Color: `#2563eb` (blue)
   - Accent Color: `#0ea5e9` (light blue)
   - Text Color: `#1e293b` (dark gray)

### 8.2 Set Fonts

1. **In "Site Design" → "Fonts"**
2. **Choose font:** "Inter" or "Open Sans"
3. **Apply to:**
   - Headings: Bold (700)
   - Body text: Regular (400)

### 8.3 Style Elements

1. **Style buttons:**
   - Select any button
   - Set background: Primary color
   - Set border radius: 8px
   - Add shadow

2. **Style cards:**
   - Add border radius: 8px
   - Add shadow
   - Add padding

3. **Check spacing:**
   - Ensure consistent spacing between sections
   - Use Wix spacing tools

---

## 💻 STEP 9: ADD CUSTOM CODE (Optional - 10 minutes)

If you want to add custom JavaScript functionality:

1. **Go to Settings** → **Custom Code**
2. **Click "Add Code to Site"**
3. **Select "Body - end"**
4. **Copy code from `wix-velo-code.js`**
5. **Paste and save**

**Note:** This is optional. The site will work without it.

---

## ✅ STEP 10: FINAL CHECKS (10 minutes)

### 10.1 Test All Pages

- [ ] Homepage loads correctly
- [ ] All navigation links work
- [ ] About page displays correctly
- [ ] Features page displays correctly
- [ ] Agents page displays correctly
- [ ] Documentation page displays correctly
- [ ] Contact page displays correctly

### 10.2 Test Mobile View

1. **Click device toggle** (top bar)
2. **Check mobile view:**
   - [ ] Navigation menu works on mobile
   - [ ] All content is readable
   - [ ] Buttons are clickable
   - [ ] Forms work correctly

### 10.3 Test Links

- [ ] Internal links work (between pages)
- [ ] External links work (GitHub, etc.)
- [ ] Buttons link correctly

### 10.4 Check Content

- [ ] All text is correct
- [ ] No placeholder text remains
- [ ] Images/icons display correctly
- [ ] Colors are applied correctly

---

## 🚀 STEP 11: PUBLISH (5 minutes)

1. **Click "Save"** (top right)
2. **Click "Preview"** to review
3. **Make any final adjustments**
4. **Click "Publish"** when ready
5. **Visit your live site** to verify

---

## 🆘 TROUBLESHOOTING

### Issue: Can't find an element
- **Solution:** Use Wix's search function (top bar) to find elements

### Issue: Content doesn't look right
- **Solution:** Check spacing, alignment, and text formatting in Wix's design panel

### Issue: Links don't work
- **Solution:** Right-click element → "Link" → Select page or enter URL

### Issue: Mobile view looks broken
- **Solution:** Use Wix's responsive design tools to adjust element sizes for mobile

### Issue: Colors not applying
- **Solution:** Make sure you're setting colors in "Site Design" → "Color Palette", not just individual elements

---

## 📝 QUICK REFERENCE

### Content Source
- All text content: `WIX_CONTENT_EXTRACTION.md`

### Code Files
- Custom code: `wix-velo-code.js`
- Original HTML: `website/*.html` (for reference)

### Design Specs
- Primary Color: #2563eb
- Accent Color: #0ea5e9
- Font: Inter or Open Sans

---

## ✨ TIPS

1. **Save frequently** - Wix auto-saves, but click Save button often
2. **Use Wix elements** - Don't try to paste HTML directly
3. **Copy text only** - From content extraction file, copy text, not HTML
4. **Use repeaters** - For card grids, use Wix Repeater element
5. **Test on mobile** - Check mobile view frequently
6. **Use preview** - Preview before publishing

---

## 🎉 YOU'RE DONE!

Your Wix site should now be updated with all the ASPM Agent System content. Visit https://www.armyspm.info/ to see your updated site!

If you need help with any step, refer back to this guide or check the content extraction file for specific text to copy.

