# CV Instructions - Adding Your CV to Portfolio

This guide explains how to add your Curriculum Vitae (CV) to your portfolio website and make it downloadable.

## 📋 Quick Steps

1. Prepare your CV file (PDF format recommended)
2. Create a `files` folder in your project directory
3. Add your CV to the folder
4. Update the link in `portfolioData` object
5. Test the download functionality

## 📁 Step-by-Step Guide

### Step 1: Prepare Your CV

**Recommended Format: PDF**
- Most universally compatible
- Maintains formatting across devices
- Professional standard
- Smaller file size

**File Naming Convention:**
```
CV_Md_Golam_Mubasshir_Rafi.pdf          ✅ Good
CV_GM_Rafi.pdf                          ✅ Good
Mubasshir_Rafi_CV.pdf                   ✅ Good

cv.pdf                                   ❌ Not descriptive
my resume.pdf                            ❌ Contains spaces
curriculum vitae final final v2.pdf     ❌ Too long
```

**Best Practices:**
- Use underscores (_) instead of spaces
- Include your name in the filename
- Keep it professional and simple
- Use lowercase or CamelCase consistently
- File size: Keep under 5MB for fast downloads

### Step 2: Create Files Folder

In your project directory, create a folder structure:

```
gmrafi.github.io/
│
├── index.html
├── README.md
│
├── photos/
│   └── profile.jpg
│
└── files/                              ← Create this folder
    └── CV_Md_Golam_Mubasshir_Rafi.pdf  ← Add your CV here
```

**Creating the Folder:**

**Windows:**
```bash
# Using Command Prompt
cd d:\Projects\gmrafi.github.io
mkdir files
```

**PowerShell:**
```powershell
cd d:\Projects\gmrafi.github.io
New-Item -ItemType Directory -Name files
```

**Manual Method:**
1. Open File Explorer
2. Navigate to your project folder
3. Right-click → New → Folder
4. Name it `files`

### Step 3: Add Your CV

**Method 1: Copy-Paste**
1. Locate your CV file
2. Copy it (Ctrl+C)
3. Navigate to the `files` folder
4. Paste (Ctrl+V)

**Method 2: Drag and Drop**
1. Open two File Explorer windows
2. One with your CV location
3. One with the `files` folder
4. Drag your CV file to the `files` folder

### Step 4: Update Portfolio Link

Open `index.html` in your text editor and find the `portfolioData` object (around line 550).

Update the CV link:

```javascript
personal: {
    name: "Md. Golam Mubasshir Rafi",
    shortName: "GM Rafi",
    title: "BBA Student @ Army Institute of Business Administration Sylhet",
    tagline: "Researcher | Web Developer | Digital Marketing Enthusiast",
    profilePhoto: "photos/profile.jpg",
    cvLink: "files/CV_Md_Golam_Mubasshir_Rafi.pdf"  // ← Update this line
}
```

**If your filename is different:**
```javascript
cvLink: "files/Your_Actual_Filename.pdf"
```

### Step 5: Test the Download

1. Save `index.html`
2. Open (or refresh) the portfolio in your browser
3. Click the "Download CV" button in the hero section
4. Your CV should download automatically

## 🔧 Troubleshooting

### Problem: CV button doesn't work

**Solution 1: Check file path**
```javascript
// Make sure path matches exactly
cvLink: "files/CV_Md_Golam_Mubasshir_Rafi.pdf"  ✅
cvLink: "file/CV_Md_Golam_Mubasshir_Rafi.pdf"   ❌ Wrong folder name
cvLink: "Files/CV_Md_Golam_Mubasshir_Rafi.pdf"  ❌ Case-sensitive
```

**Solution 2: Check file exists**
- Open File Explorer
- Navigate to `gmrafi.github.io/files/`
- Verify your PDF is there
- Check exact filename (including extension)

**Solution 3: Check file extension**
```
CV_Md_Golam_Mubasshir_Rafi.pdf   ✅ Correct
CV_Md_Golam_Mubasshir_Rafi.PDF   ⚠️ May cause issues (case-sensitive)
CV_Md_Golam_Mubasshir_Rafi.docx  ❌ Wrong format
```

### Problem: CV downloads with wrong name

**Solution: Use download attribute**

In `index.html`, find the download CV button (around line 145):

```html
<a href="#" id="download-cv-btn" class="btn-secondary px-8 py-3 rounded-lg font-semibold text-center touch-target">
    <i class="fas fa-download mr-2"></i>Download CV
</a>
```

Change it to:

```html
<a href="files/CV_Md_Golam_Mubasshir_Rafi.pdf" 
   download="CV_Md_Golam_Mubasshir_Rafi.pdf"
   class="btn-secondary px-8 py-3 rounded-lg font-semibold text-center touch-target">
    <i class="fas fa-download mr-2"></i>Download CV
</a>
```

### Problem: PDF doesn't open, just shows code

**Cause**: File is not actually a PDF, just renamed

**Solution**: 
1. Open your CV in Word/Google Docs
2. Click File → Save As / Download As
3. Choose "PDF" format explicitly
4. Save with proper name
5. Replace the old file

### Problem: File size too large

**Solution 1: Compress PDF**

**Online Tools:**
- [SmallPDF](https://smallpdf.com/compress-pdf)
- [ILovePDF](https://www.ilovepdf.com/compress_pdf)
- [PDF Compressor](https://pdfcompressor.com/)

**Desktop Tools:**
- Adobe Acrobat Pro
- Preview (Mac): File → Export → Reduce File Size
- PDFtk

**Solution 2: Optimize CV**
- Reduce image quality if embedded
- Remove unnecessary graphics
- Use efficient fonts
- Aim for under 2MB

## 🌐 Deployment Considerations

### GitHub Pages
```
# Folder structure on GitHub
gmrafi.github.io/
├── index.html
├── photos/
│   └── profile.jpg
└── files/
    └── CV_Md_Golam_Mubasshir_Rafi.pdf
```

**Important**: Commit and push the `files` folder:
```bash
git add files/
git commit -m "Add CV file"
git push origin main
```

### Netlify / Vercel
- Ensure `files` folder is included in upload
- Check deployment logs for missing files
- Use lowercase filenames to avoid issues

### Traditional Hosting (cPanel/FTP)
1. Upload `files` folder to public_html or www
2. Maintain same structure as local
3. Test download link after upload

## 🔒 Privacy Considerations

### Should you include personal information in CV?

**Include:**
- ✅ Professional email
- ✅ LinkedIn profile
- ✅ GitHub profile
- ✅ Academic email
- ✅ Professional phone (optional)

**Avoid:**
- ❌ Personal home address (unless required)
- ❌ Personal phone number (use professional if any)
- ❌ Date of birth (unless standard in your region)
- ❌ National ID numbers
- ❌ Passport numbers

### Alternative: CV on Request

If you prefer not to host CV publicly:

**Option 1: Remove Download Button**
```javascript
// In portfolioData, comment out or remove CV link
cvLink: "" // Empty means no CV download
```

**Option 2: Change to Contact Form**
```html
<a href="#contact" class="btn-secondary px-8 py-3 rounded-lg font-semibold text-center">
    <i class="fas fa-envelope mr-2"></i>Request CV
</a>
```

**Option 3: Password-Protected Link**
- Host CV on Google Drive with restricted access
- Host on Dropbox with password
- Use Notion with private link

## 📊 Tracking CV Downloads (Optional)

Want to know when people download your CV?

### Using Google Analytics

Add this to your CV download link:

```html
<a href="files/CV_Md_Golam_Mubasshir_Rafi.pdf" 
   onclick="gtag('event', 'download', {'event_category': 'CV', 'event_label': 'CV Download'});"
   class="btn-secondary px-8 py-3 rounded-lg font-semibold text-center">
    <i class="fas fa-download mr-2"></i>Download CV
</a>
```

### Using JavaScript

```javascript
document.getElementById('download-cv-btn').addEventListener('click', function() {
    // Track download
    console.log('CV downloaded at: ' + new Date().toISOString());
    
    // You can send this to your analytics service
    // Or just log it for debugging
});
```

## 🔄 Keeping CV Updated

### Regular Updates
- Update CV every 3-6 months
- After major achievements
- Before job applications
- When skills change significantly

### Versioning (Optional)
```
files/
├── CV_Md_Golam_Mubasshir_Rafi.pdf          # Current version
├── CV_Md_Golam_Mubasshir_Rafi_2024.pdf     # Yearly backup
└── CV_Md_Golam_Mubasshir_Rafi_v2.pdf       # Version backup
```

**Keep only current version on website, archive old ones locally**

## ✅ Final Checklist

Before going live:
- [ ] CV file is in PDF format
- [ ] File size is under 5MB
- [ ] Filename is professional (no spaces)
- [ ] `files` folder exists in project
- [ ] CV file is in `files` folder
- [ ] Link in `portfolioData` is correct
- [ ] Download button works in browser
- [ ] CV displays correctly when opened
- [ ] All personal information is accurate
- [ ] No typos or formatting issues
- [ ] Date on CV is current
- [ ] Contact information matches portfolio

## 📞 Need Help?

If you encounter issues:

1. **Check Console**: Press F12 in browser → Console tab → Look for errors
2. **Verify Path**: Right-click CV file → Properties → Check exact name
3. **Test Locally**: Download should work before deploying online
4. **Browser Cache**: Clear cache (Ctrl+Shift+Delete) and retry

For further assistance:
- Email: rafi@gmrafi.com
- LinkedIn: [linkedin.com/in/gmrafi](https://linkedin.com/in/gmrafi)

---

**Remember**: Your CV is often the first detailed impression recruiters get. Keep it updated, professional, and easily accessible!

**Last Updated**: December 16, 2025
