# Personal Academic Homepage

A clean and modern academic personal homepage template inspired by professional research websites.

## Features

- 🎨 **Clean, Modern Design** - Minimalist academic aesthetic
- 🌓 **Dark/Light Mode** - Theme toggle with persistent preference
- 📱 **Fully Responsive** - Works beautifully on all devices
- 🎯 **Easy to Customize** - Simple HTML structure with clear sections
- 🚀 **Fast Loading** - No heavy frameworks, pure HTML/CSS/JS

## Structure

```
homepage/
├── index.html          # Main HTML file
├── style.css           # Styles and theme variables
├── script.js           # JavaScript for interactivity
├── assets/
│   ├── img/           # Images folder
│   │   └── profile.jpg    # Your profile photo
│   ├── videos/        # Publication video demos
│   │   ├── pub1.mp4       # Publication demo 1
│   │   ├── pub2.mp4       # Publication demo 2
│   │   └── pub3.mp4       # Publication demo 3
│   └── pdf/
│       └── cv.pdf         # Your CV/Resume
└── README.md
```

## Customization Guide

### 1. Update Profile Information

Edit `index.html` and replace:

- **Your Name** - Update the `<h1>` tag and page title
- **Bio/Description** - Update the paragraph in the profile section
- **University/Advisor Links** - Replace placeholder links with actual URLs
- **Research Interests** - Describe your research focus

### 2. Add Your Photo

Replace `assets/img/profile.jpg` with your own profile photo.

- Recommended size: 280x280px or larger
- Format: JPG or PNG
- Keep aspect ratio square or portrait

### 3. Add Your Publication Videos

Place short video demos in `assets/videos/`:

- `pub1.mp4`, `pub2.mp4`, etc.
- Duration: 3-10 seconds (for smooth looping)
- Resolution: 720p or 1080p
- Keep under 5MB for fast loading
- See `assets/videos/README.md` for detailed instructions

### 4. Update Social Links

In `index.html`, update the social icons section with your profiles:

- Google Scholar
- Semantic Scholar
- GitHub
- LinkedIn
- Twitter/X
- Email

### 5. Add Your Publications

For each publication, update:

- **Video Demo** - Add to `assets/videos/` (MP4 format, 3-10 seconds)
- **Title** - Main publication title
- **Authors** - List with links to co-author pages
- **Venue** - Conference/journal name and year
- **Badge** - Conference abbreviation (CVPR, ICCV, etc.)
- **Links** - PDF, Video, Code, Website buttons

#### Badge Colors

Customize badge colors in `style.css`:

```css
.pub-badge {
  background: #4169e1;
} /* Default blue */
.pub-badge-preprint {
  background: #999999;
} /* Gray for preprints */
```

### 6. Theme Customization

Edit CSS variables in `style.css` to customize colors:

```css
:root {
  --link-color: #0066cc; /* Link color */
  --badge-bg: #4169e1; /* Badge background */
  /* ... more variables */
}
```

### 7. Add Your CV

Place your CV/Resume PDF in `assets/pdf/cv.pdf` or update the link in the navigation.

## Quick Start

1. **Clone or download** this repository
2. **Edit** `index.html` with your information
3. **Add** your images to `assets/img/`
4. **Upload** your CV to `assets/pdf/`
5. **Open** `index.html` in a browser to preview
6. **Deploy** to GitHub Pages, Netlify, or your preferred hosting

## Browser Support

- ✅ Chrome/Edge (latest)
- ✅ Firefox (latest)
- ✅ Safari (latest)
- ✅ Mobile browsers

## Deployment

### GitHub Pages

1. Create a repository named `username.github.io`
2. Push your files to the repository
3. Enable GitHub Pages in repository settings
4. Your site will be live at `https://username.github.io`

### Netlify

1. Drag and drop the folder to [Netlify Drop](https://app.netlify.com/drop)
2. Or connect your Git repository
3. Your site will be live instantly

## Credits

Design inspired by the [al-folio](https://github.com/alshedivat/al-folio) Jekyll theme.

## License

Free to use and modify for your personal academic homepage.
