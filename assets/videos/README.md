# Publication Video Demos

Place your short video demonstrations here for each publication.

## Video Requirements

### Format

- **Primary format:** MP4 (H.264 codec)
- **Alternative format:** WebM (VP9 codec) - for better browser compatibility
- Both formats should be provided for optimal compatibility

### Specifications

- **Duration:** 3-10 seconds (short loops work best)
- **Resolution:** 720p (1280x720) or 1080p (1920x1080)
- **Aspect Ratio:** 16:9 recommended
- **File Size:** Keep under 5MB for fast loading
- **Framerate:** 24-30 fps

### Naming Convention

- `pub1.mp4` and `pub1.webm` - First publication
- `pub2.mp4` and `pub2.webm` - Second publication
- `pub3.mp4` and `pub3.webm` - Third publication
- etc.

## Creating Video Demos

### Option 1: Convert from GIF

If you have a GIF:

```bash
ffmpeg -i demo.gif -c:v libx264 -pix_fmt yuv420p -vf "scale=1280:720" pub1.mp4
ffmpeg -i demo.gif -c:v libvpx-vp9 -vf "scale=1280:720" pub1.webm
```

### Option 2: Extract from Video

From a longer video:

```bash
# Extract 5 seconds starting at 10s
ffmpeg -i input.mp4 -ss 00:00:10 -t 00:00:05 -c:v libx264 -crf 23 pub1.mp4
ffmpeg -i input.mp4 -ss 00:00:10 -t 00:00:05 -c:v libvpx-vp9 -crf 30 pub1.webm
```

### Option 3: Record Screen

Use tools like:

- **macOS:** QuickTime Screen Recording
- **Windows:** Xbox Game Bar
- **Linux:** SimpleScreenRecorder
- **Cross-platform:** OBS Studio

Then compress and convert:

```bash
ffmpeg -i recording.mov -c:v libx264 -crf 23 -preset slow -vf "scale=1280:720" pub1.mp4
```

## Optimization Tips

1. **Keep it short:** 3-10 seconds is ideal for auto-looping demos
2. **Compress:** Use CRF 23-28 for good quality/size balance
3. **Resize:** 720p is usually sufficient for web
4. **Test:** Make sure videos loop smoothly
5. **Fallback:** Always provide both MP4 and WebM formats

## Browser Compatibility

- **MP4 (H.264):** Supported by all modern browsers
- **WebM (VP9):** Better compression, supported by Chrome, Firefox, Edge
- The browser will automatically choose the best format it supports

## Example

```html
<video autoplay loop muted playsinline>
  <source src="assets/videos/pub1.mp4" type="video/mp4" />
  <source src="assets/videos/pub1.webm" type="video/webm" />
  Your browser does not support the video tag.
</video>
```

The videos will:

- ✅ Autoplay when the page loads
- ✅ Loop continuously
- ✅ Play without sound (muted)
- ✅ Work on mobile devices (playsinline)
