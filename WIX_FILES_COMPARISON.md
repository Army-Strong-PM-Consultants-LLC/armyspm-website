# Wix Files Comparison - Which Files to Use?

## 📋 Overview

You have multiple Wix-related files in this repository. This document helps you understand which files to use based on your needs.

---

## 🎯 Two Different Approaches

### Approach 1: ASPM + FLMA Combined (Existing)
**Files:**
- `UPDATE_WIX_SITE.md` - Complete guide for dual-system site
- `QUICK_START_WIX.md` - Quick reference for dual-system

**Use this if:**
- You want to showcase BOTH ASPM and FLMA systems
- You want company information (Army Strong PM Consultants LLC)
- You want contact details and certifications
- Your site is at **armyspm.com**

**Content includes:**
- ASPM & FLMA Agent Systems
- Company information
- Certifications (SDVOSB, VOSB, MBE)
- Contact information
- FLMA development status

---

### Approach 2: ASPM Only (New Files)
**Files:**
- `WIX_STEP_BY_STEP_GUIDE.md` - Complete step-by-step guide
- `WIX_CONTENT_EXTRACTION.md` - All text content ready to copy
- `WIX_UPDATE_SUMMARY.md` - Quick reference
- `wix-velo-code.js` - Custom JavaScript code

**Use this if:**
- You want to focus ONLY on ASPM Agent System
- You want detailed technical documentation
- You want comprehensive content extraction
- Your site is at **armyspm.info** (or you want ASPM-only content)

**Content includes:**
- ASPM Agent System only
- Technical documentation
- API endpoints
- Agent descriptions
- No company-specific information

---

## 📊 File Comparison Table

| File | Purpose | ASPM Only? | FLMA Included? | Company Info? | Best For |
|------|---------|-------------|----------------|---------------|----------|
| `UPDATE_WIX_SITE.md` | Complete dual-system guide | ❌ | ✅ | ✅ | armyspm.com |
| `QUICK_START_WIX.md` | Quick reference | ❌ | ✅ | ❌ | Quick updates |
| `WIX_STEP_BY_STEP_GUIDE.md` | Detailed step-by-step | ✅ | ❌ | ❌ | armyspm.info |
| `WIX_CONTENT_EXTRACTION.md` | Copy-paste content | ✅ | ❌ | ❌ | Content extraction |
| `WIX_UPDATE_SUMMARY.md` | Quick reference | ✅ | ❌ | ❌ | Quick overview |
| `wix-velo-code.js` | Custom JavaScript | ✅ | ❌ | ❌ | Enhanced functionality |

---

## 🔀 Conflict Resolution

### If You Have a Separate Wix Repo (`aspmcs`)

**The files DON'T conflict** - they serve different purposes:

1. **This ASPM-Agent repo** (`website/` folder):
   - Contains source HTML/CSS/JS files
   - Contains documentation and guides
   - Can be copied to your Wix repo

2. **Your Wix repo** (`aspmcs`):
   - Contains Wix-specific files
   - Connected to your live Wix site
   - Uses Wix CLI for deployment

**How they work together:**
- Use files from `ASPM-Agent/website/` as source material
- Copy content to your Wix repo or use Wix Editor directly
- No direct conflict - they're complementary

---

## ✅ Recommended Approach

### ✅ YOU'VE CHOSEN: Option A - Combined ASPM + FLMA Site

**👉 START HERE:** [`START_HERE.md`](START_HERE.md)

### For armyspm.com (Your Main Site):

**Use:** `UPDATE_WIX_SITE.md` ⭐ **YOUR MAIN GUIDE**
- Includes both ASPM and FLMA
- Has company information
- Has contact details
- More complete for business site

### For armyspm.info (If Separate):

**Use:** New files (`WIX_STEP_BY_STEP_GUIDE.md`, etc.)
- ASPM-only focus
- Technical documentation
- Clean, focused content

---

## 🛠️ How to Use Both

You can use BOTH sets of files:

1. **For your main business site (armyspm.com):**
   - Follow `UPDATE_WIX_SITE.md`
   - Use company information from that file

2. **For technical documentation site (armyspm.info):**
   - Follow `WIX_STEP_BY_STEP_GUIDE.md`
   - Use content from `WIX_CONTENT_EXTRACTION.md`
   - Focus on ASPM technical details

---

## 📝 Action Items

### Decide Your Approach:

**Option A: Single Site (armyspm.com) with Both Systems**
- ✅ Use: `UPDATE_WIX_SITE.md`
- ✅ Ignore: New ASPM-only files (or use as reference)
- ✅ Result: Combined ASPM + FLMA site

**Option B: Two Separate Sites**
- ✅ armyspm.com: Use `UPDATE_WIX_SITE.md` (ASPM + FLMA)
- ✅ armyspm.info: Use new files (ASPM only)
- ✅ Result: Two focused sites

**Option C: ASPM Only Everywhere**
- ✅ Use: New files (`WIX_STEP_BY_STEP_GUIDE.md`, etc.)
- ✅ Ignore: `UPDATE_WIX_SITE.md`
- ✅ Result: ASPM-only site

---

## 🚨 Important Notes

1. **No Direct Conflicts:**
   - Files don't overwrite each other
   - They're documentation/guides, not code
   - You choose which to follow

2. **Content Differences:**
   - `UPDATE_WIX_SITE.md` = ASPM + FLMA + Company
   - New files = ASPM only, no company info

3. **Your Wix Repo (`aspmcs`):**
   - Separate repository
   - Connected to Wix via CLI
   - Can pull content from this repo
   - No conflict - they work together

---

## 💡 Recommendation

Based on your setup:

1. **Keep both sets of files** - they serve different purposes
2. **Use `UPDATE_WIX_SITE.md`** for your main business site (armyspm.com)
3. **Use new files** if you want a separate technical documentation site
4. **Your Wix repo (`aspmcs`)** can reference this repo for source files

**No conflicts - just different use cases!**

---

## 📞 Questions?

- **Which site are you updating?** (armyspm.com or armyspm.info)
- **Do you want ASPM + FLMA or ASPM only?**
- **Do you need company information included?**

Answer these to determine which files to use!

