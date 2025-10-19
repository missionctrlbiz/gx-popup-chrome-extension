# Changelog

All notable changes to Easy Files for Chrome will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

### Planned

- File type icons for different download types
- Download history search functionality
- Keyboard shortcuts for quick access
- Support for different clipboard content types (images, links)
- Customizable number of recent downloads to display
- Dark mode support
- Download file size and date information

## [1.0.0] - 2025-10-20

### Added

- Initial release of Easy Files for Chrome extension
- Recent downloads display (last 3 items)
- Clipboard content preview (first 100 characters)
- One-click file opening functionality
- Clean, minimal popup interface (300px width)
- Chrome Manifest V3 compliance
- Background service worker for download monitoring
- Local storage for download persistence
- Error handling for clipboard access issues
- Automated build script (`create_extension.sh`)

### Technical Details

- **Permissions**: `downloads`, `clipboardRead`
- **Architecture**: Service worker + popup interface
- **Storage**: Chrome local storage API
- **UI**: HTML/CSS/JavaScript with responsive design

### Files Structure

- `manifest.json` - Extension configuration
- `background.js` - Download event monitoring
- `popup.html` - User interface
- `popup.js` - Frontend logic and interactions
- `icon.png` - Extension icon placeholder

---

## Release Notes Format

### Added

- New features

### Changed

- Changes in existing functionality

### Deprecated

- Soon-to-be removed features

### Removed

- Removed features

### Fixed

- Bug fixes

### Security

- Security improvements
