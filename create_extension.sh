#!/bin/bash

# Create the folder for the extension
mkdir -p easy-files-chrome

# Navigate into the new folder
cd easy-files-chrome

# Create manifest.json and write content to it
echo '{
  "manifest_version": 3,
  "name": "Easy Files for Chrome",
  "version": "1.0",
  "description": "Previews recent downloads and clipboard content.",
  "permissions": [
    "downloads",
    "clipboardRead"
  ],
  "background": {
    "service_worker": "background.js"
  },
  "action": {
    "default_popup": "popup.html",
    "default_icon": "icon.png"
  }
}' > manifest.json

# Create popup.html and write content to it
echo '<!DOCTYPE html>
<html>
<head>
  <style>
    body { font-family: sans-serif; width: 300px; padding: 10px; }
    h4 { margin-top: 0; }
    ul { list-style: none; padding: 0; }
    li { padding: 8px 0; border-bottom: 1px solid #eee; cursor: pointer; }
  </style>
</head>
<body>
  <h4>Recent Downloads</h4>
  <ul id="downloads-list"></ul>
  <h4>Clipboard</h4>
  <p id="clipboard-content"></p>
  <script src="popup.js"></script>
</body>
</html>' > popup.html

# Create background.js and write content to it
echo 'chrome.downloads.onCreated.addListener((downloadItem) => {
  // Get recent downloads from local storage, or initialize an empty array.
  chrome.storage.local.get({ recentDownloads: [] }, (result) => {
    let recentDownloads = result.recentDownloads;
    // Add the new download to the list and keep only the latest 3.
    recentDownloads.unshift(downloadItem);
    recentDownloads = recentDownloads.slice(0, 3);
    // Save the updated list.
    chrome.storage.local.set({ recentDownloads: recentDownloads });
  });
});' > background.js

# Create popup.js and write content to it
echo 'document.addEventListener("DOMContentLoaded", () => {
  // Load recent downloads
  chrome.storage.local.get({ recentDownloads: [] }, (result) => {
    const list = document.getElementById("downloads-list");
    if (result.recentDownloads.length === 0) {
      list.innerHTML = "<li>No recent downloads.</li>";
    } else {
      result.recentDownloads.forEach(item => {
        const li = document.createElement("li");
        li.textContent = item.filename.split("/").pop(); // Show just the filename
        li.addEventListener("click", () => {
          chrome.downloads.open(item.id);
        });
        list.appendChild(li);
      });
    }
  });

  // Load clipboard content
  const clipboardContent = document.getElementById("clipboard-content");
  navigator.clipboard.readText()
    .then(text => {
      clipboardContent.textContent = text.substring(0, 100) + "...";
    })
    .catch(err => {
      clipboardContent.textContent = "Clipboard content not available.";
    });
});' > popup.js

# Use touch to create a placeholder icon file
# You will need to replace this with an actual image file
touch icon.png

echo "Chrome extension files created successfully in the 'easy-files-chrome' folder."
