# Md. Golam Mubasshir Rafi - Personal Portfolio Website

A professional, single-page portfolio website showcasing academic achievements, research work, projects, and professional expertise.

## 🎨 Design Features

- **Clean & Professional**: White background with signature color palette (#3D54E6, #1E5A3C, #0D3B66)
- **Fully Responsive**: Optimized for mobile, tablet, and desktop devices
- **Modern UI**: Smooth animations, hover effects, and interactive elements
- **Fast Loading**: Single HTML file with CDN resources
- **Easy to Update**: All content managed through `portfolioData` JavaScript object

## 🚀 Quick Start

### 1. Clone or Download

```bash
git clone https://github.com/gmrafi/gmrafi.github.io.git
cd gmrafi.github.io
```

### 2. Add Your Profile Photo

Create a `photos` folder and add your profile picture:

```
gmrafi.github.io/
├── index.html
├── photos/
│   └── profile.jpg  (Your profile photo - recommended size: 500x500px)
└── files/
    └── CV_Md_Golam_Mubasshir_Rafi.pdf  (Your CV)
```

### 3. Open in Browser

Simply open `index.html` in any modern web browser:
- Double-click the file, or
- Right-click → Open with → Your preferred browser

### 4. Customize Content

All content is stored in the `portfolioData` object at the bottom of `index.html`. 

To update your information:
1. Open `index.html` in any text editor (VS Code, Notepad++, Sublime Text, etc.)
2. Scroll to the `<script>` section (around line 550)
3. Find the `portfolioData` object
4. Update the values with your information
5. Save and refresh your browser

## 🔍 SEO & Google Scholar Integration

### Google Indexing Setup

Your website is optimized for Google indexing with:

- **Sitemap**: `sitemap.xml` - Submit this to Google Search Console
- **Robots.txt**: `robots.txt` - Allows all crawlers
- **Structured Data**: Schema.org markup for all publications
- **Meta Tags**: Complete SEO meta tags including Open Graph and Twitter Cards

### Steps to Get Indexed by Google:

1. **Submit to Google Search Console**:
   - Go to [Google Search Console](https://search.google.com/search-console)
   - Add your property: `https://gmrafi.github.io/`
   - Submit your sitemap: `https://gmrafi.github.io/sitemap.xml`

2. **Submit to Google Scholar**:
   - Go to [Google Scholar](https://scholar.google.com/)
   - Click "My Profile" → "Create new profile"
   - Add your publications manually or import from ORCID
   - Link your website in your profile

### Google Scholar Citation Links

Each publication includes:
- Direct "Cite" buttons linking to Google Scholar searches
- Proper DOI links for published works
- ORCID integration for author verification
- Structured data for automatic indexing

### Eco-Friendly Optimizations

- **Performance**: DNS prefetching and preconnect for faster loading
- **Accessibility**: Proper semantic HTML and ARIA labels
- **Mobile-First**: Responsive design reduces data usage on mobile
- **CDN Resources**: Efficient loading of fonts and icons

## 📁 Project Structure

```
gmrafi.github.io/
│
├── index.html                    # Main portfolio file (complete website)
├── README.md                     # This file
├── CV_INSTRUCTIONS.md           # Guide for adding your CV
├── RESPONSIVE_DESIGN.md         # Testing guidelines
│
├── photos/                      # Your images
│   ├── profile.jpg              # Your profile photo
│   └── aiba-logo.png           # University logo (optional)
│
└── files/                       # Downloadable files
    └── CV_Md_Golam_Mubasshir_Rafi.pdf  # Your CV
```

## 🎯 Sections Included

1. **Fixed Navigation** - Easy access to all sections with mobile hamburger menu
2. **Hero Section** - Profile photo, name, title, and CTA buttons
3. **About Me** - Professional bio and introduction
4. **Research Interests** - 4 key areas of focus
5. **Featured Research** - Spotlight on main research work
6. **Skills & Expertise** - 20+ skills with icons
7. **Featured Projects** - 3 major projects with tech stacks
8. **Education** - University details and achievements
9. **Academic Coursework** - 6 course categories
10. **Certifications & Training** - Professional certifications
11. **Extracurricular Activities** - Leadership and community involvement
12. **Achievements & Honors** - Awards and recognitions
13. **Future Goals & Vision** - Career aspirations
14. **Contact Section** - Multiple email addresses, social links, research profiles
15. **Footer** - Copyright and technical signature

## 🛠️ Technologies Used

- **HTML5** - Semantic markup
- **Tailwind CSS** (via CDN) - Utility-first styling
- **Font Awesome 6** (via CDN) - Icon library
- **Google Fonts** - Inter font family
- **Vanilla JavaScript** - Dynamic content rendering

## 📱 Responsive Breakpoints

- **Mobile**: < 640px (1 column layouts)
- **Tablet**: 640px - 1024px (2 column layouts)
- **Desktop**: > 1024px (3-5 column layouts)

## 🌐 Deployment Options

### Option 1: GitHub Pages (Recommended - FREE)

1. Create a GitHub account (if you don't have one)
2. Create a new repository named `gmrafi.github.io`
3. Upload all files to the repository
4. Go to Settings → Pages
5. Select main branch as source
6. Your site will be live at `https://gmrafi.github.io`

**Detailed Steps:**
```bash
# Initialize git repository
git init

# Add all files
git add .

# Commit changes
git commit -m "Initial portfolio commit"

# Add remote repository
git remote add origin https://github.com/gmrafi/gmrafi.github.io.git

# Push to GitHub
git push -u origin main
```

### Option 2: Netlify (FREE with Custom Domain)

1. Visit [netlify.com](https://netlify.com)
2. Sign up with GitHub/Email
3. Drag and drop your project folder
4. Site is live instantly!
5. Optional: Connect custom domain

### Option 3: Vercel (FREE)

1. Visit [vercel.com](https://vercel.com)
2. Sign up with GitHub
3. Import your repository
4. Deploy with one click

### Option 4: Traditional Web Hosting

Upload files via FTP/cPanel to any web hosting provider:
- Namecheap
- Bluehost
- SiteGround
- HostGator

## ✏️ Updating Your Content

### Update Personal Information

```javascript
personal: {
    name: "Your Full Name",
    shortName: "Your Short Name",
    title: "Your Title/Role",
    tagline: "Your Professional Tagline",
    profilePhoto: "photos/profile.jpg",
    cvLink: "files/Your_CV.pdf"
}
```

### Add/Remove Skills

```javascript
skills: [
    { name: "Skill Name", icon: "fas fa-icon-name" },
    // Add more skills...
]
```

### Update Projects

```javascript
projects: [
    {
        title: "Project Name",
        description: "Project description...",
        techStack: ["Tech1", "Tech2", "Tech3"],
        link: "https://project-url.com",
        icon: "fas fa-icon-name"
    }
]
```

### Update Contact Information

```javascript
contact: {
    emails: [
        {
            label: "Label",
            address: "email@example.com",
            alt: "alternate@example.com", // optional
            icon: "fas fa-envelope"
        }
    ],
    social: [
        {
            platform: "Platform Name",
            url: "https://platform-url.com",
            icon: "fab fa-platform",
            color: "#hexcolor"
        }
    ]
}
```

## 🎨 Color Customization

The portfolio uses your signature color palette:

- **Primary**: #3D54E6 (Blue - Your signature color)
- **Secondary**: #1E5A3C (Green)
- **Accent**: #0D3B66 (Dark Blue)
- **Background**: #FFFFFF (White)

To change colors, search and replace hex codes in the `<style>` section.

## 🔍 SEO Optimization

The portfolio includes:
- Meta descriptions
- Keywords
- Author tags
- Semantic HTML
- Fast loading times

To improve SEO:
1. Add more descriptive meta tags
2. Include alt text for all images
3. Submit sitemap to Google Search Console
4. Register on academic indexing sites

## 🐛 Troubleshooting

### Profile photo not showing?
- Check file path: `photos/profile.jpg`
- Ensure file extension matches (.jpg, .jpeg, .png)
- Try using absolute path or hosting image online

### CV download not working?
- Check file path: `files/CV_Md_Golam_Mubasshir_Rafi.pdf`
- Ensure PDF file exists
- See `CV_INSTRUCTIONS.md` for details

### Mobile menu not working?
- Check JavaScript is enabled
- Clear browser cache
- Try different browser

### Content not updating?
- Hard refresh: Ctrl+F5 (Windows) or Cmd+Shift+R (Mac)
- Clear browser cache
- Check for JavaScript errors in console (F12)

## 📊 Analytics (Optional)

To track visitors, add Google Analytics:

1. Create Google Analytics account
2. Get tracking ID (G-XXXXXXXXXX)
3. Add this code before `</head>` in index.html:

```html
<!-- Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=G-XXXXXXXXXX"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());
  gtag('config', 'G-XXXXXXXXXX');
</script>
```

## 🤝 Support & Contributions

For questions or suggestions:
- Email: rafi@gmrafi.com
- LinkedIn: [linkedin.com/in/gmrafi](https://linkedin.com/in/gmrafi)
- GitHub: [github.com/gmrafi](https://github.com/gmrafi)

## 📄 License

This portfolio template is free to use for personal purposes. Feel free to modify and customize it according to your needs.

## 🙏 Credits

- **Design & Development**: Md. Golam Mubasshir Rafi
- **Built with**: Tailwind CSS, Font Awesome, Google Fonts
- **Initialized by**: GitHub Copilot

---

**Version**: 1.0  
**Last Updated**: December 16, 2025  
**Author**: Md. Golam Mubasshir Rafi

For detailed instructions on adding your CV, see [CV_INSTRUCTIONS.md](CV_INSTRUCTIONS.md)  
For responsive design testing, see [RESPONSIVE_DESIGN.md](RESPONSIVE_DESIGN.md)
# gmrafi.github.io
