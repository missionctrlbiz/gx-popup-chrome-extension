document.addEventListener("DOMContentLoaded", () => {
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
});
