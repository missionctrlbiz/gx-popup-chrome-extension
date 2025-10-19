# Easy Files for Chrome

A Chrome extension that provides quick access to your recent downloads and clipboard content through a convenient popup interface.

![Chrome Extension](https://img.shields.io/badge/Chrome-Extension-brightgreen)
![Manifest V3](https://img.shields.io/badge/Manifest-V3-blue)
![Version](https://img.shields.io/badge/Version-1.0-orange)

## Features

- 📥 **Recent Downloads**: View and access your last 3 downloaded files
- 📋 **Clipboard Preview**: Quick preview of your clipboard content
- 🚀 **One-Click Access**: Click on any download to open it instantly
- 💨 **Lightweight**: Minimal resource usage with clean, fast interface

## Screenshots

> Add screenshots of your extension in action here

## Installation

### From Source (Development)

1. Clone this repository:

   ```bash
   git clone https://github.com/yourusername/gx-popup.git
   cd gx-popup
   ```

2. Load the extension in Chrome:
   - Open Chrome and navigate to `chrome://extensions/`
   - Enable "Developer mode" in the top right
   - Click "Load unpacked"
   - Select the `easy-files-chrome` folder

### From Chrome Web Store

> Coming soon! Extension will be available on the Chrome Web Store.

## Usage

1. **Access the Extension**: Click the extension icon in your Chrome toolbar
2. **View Downloads**: See your 3 most recent downloads in the popup
3. **Open Files**: Click any download item to open the file
4. **Check Clipboard**: View a preview of your current clipboard content

## Technical Details

### Permissions Required

- `downloads` - Access to your download history for displaying recent files
- `clipboardRead` - Read clipboard content for preview functionality

### Architecture

- **Manifest Version**: 3 (Latest Chrome extension standard)
- **Background Script**: Service worker that monitors download events
- **Popup Interface**: HTML/CSS/JavaScript interface (300px width)
- **Storage**: Chrome local storage for persistence

### File Structure

```
easy-files-chrome/
├── manifest.json      # Extension configuration
├── background.js      # Service worker for download monitoring
├── popup.html        # Extension popup interface
├── popup.js          # Popup functionality and logic
└── icon.png          # Extension icon (16x16, 48x48, 128x128)
```

## Development

### Prerequisites

- Google Chrome browser
- Basic knowledge of JavaScript, HTML, and CSS
- Chrome Developer Tools

### Building from Source

Use the provided build script to generate all extension files:

```bash
chmod +x create_extension.sh
./create_extension.sh
```

This script will create all necessary files in the `easy-files-chrome` directory.

### Development Workflow

1. Make changes to the source files
2. Reload the extension in `chrome://extensions/`
3. Test the changes in the popup
4. Debug using Chrome Developer Tools

## Contributing

Contributions are welcome! Here's how you can help:

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/amazing-feature`)
3. Make your changes
4. Commit your changes (`git commit -m 'Add amazing feature'`)
5. Push to the branch (`git push origin feature/amazing-feature`)
6. Open a Pull Request

### Code Style

- Use consistent indentation (2 spaces)
- Add comments for complex logic
- Follow Chrome extension best practices
- Test your changes thoroughly

## Roadmap

- [ ] Add file type icons for different download types
- [ ] Implement download history search functionality
- [ ] Add keyboard shortcuts for quick access
- [ ] Support for different clipboard content types (images, links)
- [ ] Customizable number of recent downloads to display
- [ ] Dark mode support
- [ ] Download file size and date information

## Privacy

This extension:

- ✅ Only accesses your downloads and clipboard when you open the popup
- ✅ Stores data locally on your device only
- ✅ Does not send any data to external servers
- ✅ Does not track your browsing activity

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Support

If you encounter any issues or have feature requests:

1. Check the [Issues](https://github.com/yourusername/gx-popup/issues) page
2. Create a new issue with detailed information
3. Include Chrome version and extension version in bug reports

## Changelog

### Version 1.0 (Current)

- Initial release
- Recent downloads display (last 3 items)
- Clipboard content preview
- One-click file opening
- Clean, minimal interface

---

**Made with ❤️ for Chrome users who love efficiency**
