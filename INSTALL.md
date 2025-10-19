# Installation Guide

This guide will help you install and set up the Easy Files for Chrome extension.

## Method 1: Install from Source (Recommended for Development)

### Prerequisites

- Google Chrome browser (version 88 or later)
- Basic understanding of Chrome extensions

### Step-by-Step Installation

1. **Download the Extension**

   ```bash
   git clone https://github.com/yourusername/gx-popup.git
   cd gx-popup
   ```

2. **Open Chrome Extensions Page**

   - Open Google Chrome
   - Navigate to `chrome://extensions/`
   - Or use menu: Chrome Menu → More Tools → Extensions

3. **Enable Developer Mode**

   - Toggle the "Developer mode" switch in the top-right corner
   - This will reveal additional options

4. **Load the Extension**

   - Click "Load unpacked" button
   - Navigate to the `easy-files-chrome` folder in your downloaded files
   - Select the folder and click "Select Folder"

5. **Verify Installation**
   - The extension should appear in your extensions list
   - You should see the "Easy Files for Chrome" icon in your Chrome toolbar
   - If the icon doesn't appear, click the puzzle piece icon and pin it

### Troubleshooting Installation

**Extension not loading?**

- Make sure you selected the `easy-files-chrome` folder, not the parent folder
- Check that all required files are present: `manifest.json`, `background.js`, `popup.html`, `popup.js`

**Icon not showing?**

- The extension might be hidden - click the puzzle piece (extensions) icon in Chrome toolbar
- Pin the extension by clicking the pin icon next to it

**Permission errors?**

- The extension requests minimal permissions (downloads, clipboard)
- These are necessary for core functionality

## Method 2: Chrome Web Store (Coming Soon)

The extension will be available on the Chrome Web Store in the future for easier installation.

## Using the Extension

### First Use

1. **Click the extension icon** in your Chrome toolbar
2. **Grant permissions** if prompted:
   - Downloads access (to show recent downloads)
   - Clipboard access (to preview clipboard content)

### Daily Usage

- **View Recent Downloads**: Click the extension icon to see your last 3 downloads
- **Open Files**: Click any download item to open it
- **Check Clipboard**: See a preview of your current clipboard content

## Permissions Explained

The extension requests these permissions:

| Permission      | Purpose                                      | Privacy Impact            |
| --------------- | -------------------------------------------- | ------------------------- |
| `downloads`     | Access download history to show recent files | No data sent externally   |
| `clipboardRead` | Read clipboard to show preview               | Only when popup is opened |

## Updating the Extension

For source installations:

1. Pull the latest changes: `git pull origin main`
2. Go to `chrome://extensions/`
3. Click the refresh icon on the Easy Files extension card

## Uninstalling

1. Go to `chrome://extensions/`
2. Find "Easy Files for Chrome"
3. Click "Remove"
4. Confirm removal

## Support

If you encounter issues:

1. Check this installation guide
2. Review the [troubleshooting section](README.md#troubleshooting)
3. Create an issue on GitHub with details about your problem
