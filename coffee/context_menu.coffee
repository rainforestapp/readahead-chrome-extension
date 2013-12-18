sendMessage = (tabId, url) ->
  chrome.tabs.sendMessage tabId, url: url

chrome.contextMenus.create
  title: "Add this page to readahead"
  contexts: ["page"]
  onclick: (info, tab) -> sendMessage tab.id, tab.url

chrome.contextMenus.create
  title: "Add this link to readahead"
  onclick: (info, tab) -> sendMessage tab.id, info.linkUrl
  contexts: ["link"]