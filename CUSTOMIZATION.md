# Customization Guide

This guide will help you customize your personal homepage with your own information.

## Quick Start Checklist

- [ ] Update profile information
- [ ] Replace profile photo
- [ ] Update social media links
- [ ] Add your publications
- [ ] Update CV link
- [ ] Customize colors (optional)

## Step-by-Step Instructions

### 1. Update Your Profile Information

Open `index.html` and find the profile section (around line 30):

```html
<h1>Your Name</h1>
<p>
    I am a Ph.D. student/researcher at 
    <a href="https://www.example.edu/" target="_blank">Your University</a> 
    advised by 
    <a href="#" target="_blank">Prof. Advisor Name</a>. 
    I obtained my degree from 
    <a href="#" target="_blank">Previous University</a>. 
    I am interested in [your research interests], with a focus on [specific areas].
</p>
```

**Replace:**
- `Your Name` - Your actual name
- `Your University` - Link and text for your university
- `Prof. Advisor Name` - Your advisor's name and website
- `Previous University` - Your previous institution
- `[your research interests]` - Your research areas

### 2. Add Your Profile Photo

1. Save your profile photo as `assets/img/profile.jpg`
2. Recommended size: 280x280px or larger
3. Supported formats: JPG, PNG

### 3. Update Social Media Links

Find the social icons section (around line 50):

```html
<div class="social-icons">
    <a href="https://scholar.google.com/" target="_blank" aria-label="Google Scholar">
    <a href="https://github.com/yourusername" target="_blank" aria-label="GitHub">
    <a href="mailto:your.email@example.com" aria-label="Email">
    <!-- ... more links -->
</div>
```

**Update the `href` attributes with your actual profiles:**
- Google Scholar: `https://scholar.google.com/citations?user=YOUR_ID`
- GitHub: `https://github.com/yourusername`
- LinkedIn: `https://www.linkedin.com/in/yourusername`
- Twitter: `https://twitter.com/yourusername`
- Email: `mailto:your.email@example.com`

### 4. Add Your Publications

Each publication follows this structure with a video demo:

```html
<li class="publication-item">
    <div class="pub-video">
        <video autoplay loop muted playsinline>
            <source src="assets/videos/YOUR_VIDEO.mp4" type="video/mp4">
            <source src="assets/videos/YOUR_VIDEO.webm" type="video/webm">
            Your browser does not support the video tag.
        </video>
        <span class="pub-badge">CVPR</span>  <!-- Change badge text -->
    </div>
    <div class="pub-content">
        <h3 class="pub-title">Your Paper Title</h3>
        <div class="pub-authors">
            Your Name, 
            <a href="#" target="_blank">Co-Author</a>, 
            and <a href="#" target="_blank">Last Author</a>
        </div>
        <div class="pub-venue">
            <em>Conference Name</em> (ABBREVIATION), YEAR
        </div>
        <div class="pub-links">
            <a href="paper.pdf" class="btn-pub" target="_blank">PDF</a>
            <a href="https://..." class="btn-pub" target="_blank">Video</a>
            <a href="https://github.com/..." class="btn-pub" target="_blank">Code</a>
            <a href="https://..." class="btn-pub" target="_blank">Website</a>
        </div>
    </div>
</li>
```

**For each publication:**
1. Add a short video demo to `assets/videos/` (MP4 format, 3-10 seconds)
   - Optional: Also provide WebM format for better compatibility
   - See `assets/videos/README.md` for video requirements and creation tips
2. Update the badge (CVPR, ICCV, NeurIPS, etc.)
3. Add paper title, authors with links, venue, and year
4. Link to PDF, video, code, and project website

**Video Demo Tips:**
- Keep videos short (3-10 seconds) for smooth looping
- Use 720p resolution (1280x720) for good quality and small file size
- Compress to under 5MB for fast loading
- Videos will autoplay, loop, and play muted automatically

**Preprint Badge:**
For preprints, use: `<span class="pub-badge pub-badge-preprint">preprint</span>`

### 5. Conference Badge Colors

You can customize badge colors in `style.css`:

```css
.pub-badge {
    background: #4169e1;  /* Default blue */
}

.pub-badge-preprint {
    background: #999999;  /* Gray for preprints */
}

/* Add custom badges */
/* Example: Red badge for specific conferences */
```

### 6. Add Your CV

1. Save your CV as `assets/pdf/cv.pdf`
2. Or update the link in the navigation (line 22):

```html
<li><a href="assets/cv.pdf" target="_blank">CV</a></li>
```

### 7. Customize Colors and Theme

Edit CSS variables in `style.css` (lines 1-30):

**Light Theme:**
```css
:root {
    --bg-color: #ffffff;
    --text-color: #000000;
    --link-color: #0066cc;     /* Change link color */
    --badge-bg: #4169e1;       /* Change badge background */
    /* ... more variables */
}
```

**Dark Theme:**
```css
[data-theme="dark"] {
    --bg-color: #1a1a1a;
    --text-color: #e0e0e0;
    --link-color: #6ba4ff;     /* Change link color */
    /* ... more variables */
}
```

## Common Conference Badges

Here are common conference abbreviations you might use:

- **Computer Vision:** CVPR, ICCV, ECCV, 3DV, WACV
- **Machine Learning:** NeurIPS, ICML, ICLR
- **Robotics:** RSS, IROS, ICRA, CoRL
- **AI:** AAAI, IJCAI
- **Journals:** TPAMI, IJCV, T-RO, RA-L
- **Preprints:** preprint, arXiv

## Tips

1. **Keep it simple:** Don't overcrowd your page with too much information
2. **Update regularly:** Keep your publications and CV current
3. **Test on mobile:** Check how your page looks on different devices
4. **Optimize images:** Compress images to improve loading speed
5. **Use relative links:** For better portability across different hosting platforms

## Testing Locally

To view your changes:

```bash
cd /path/to/homepage
python3 -m http.server 8000
```

Then open `http://localhost:8000` in your browser.

## Deployment

### GitHub Pages
1. Create a repository named `username.github.io`
2. Push your files
3. Enable GitHub Pages in settings
4. Access at `https://username.github.io`

### Netlify
1. Drag and drop your folder to [Netlify Drop](https://app.netlify.com/drop)
2. Or connect your Git repository
3. Your site will be live instantly

## Need Help?

- Check the `README.md` for more information
- Review the template at https://jianglongye.com/ for inspiration
- All HTML, CSS, and JavaScript are well-commented for easy understanding

---

**Happy customizing!** 🎉

