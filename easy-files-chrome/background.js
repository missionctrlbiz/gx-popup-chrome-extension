chrome.downloads.onCreated.addListener((downloadItem) => {
  // Get recent downloads from local storage, or initialize an empty array.
  chrome.storage.local.get({ recentDownloads: [] }, (result) => {
    let recentDownloads = result.recentDownloads;
    // Add the new download to the list and keep only the latest 3.
    recentDownloads.unshift(downloadItem);
    recentDownloads = recentDownloads.slice(0, 3);
    // Save the updated list.
    chrome.storage.local.set({ recentDownloads: recentDownloads });
  });
});
