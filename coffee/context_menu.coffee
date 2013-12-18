onClick = ->
  console.log 'sending message', chrome
  # chrome.runtime.sendMessage greeting: "hello"
  chrome.tabs.query {}, (tabs) ->
    message = greeting: "hello"
    i = 0

    while i < tabs.length
      chrome.tabs.sendMessage tabs[i].id, message
      ++i


chrome.contextMenus.create
  title: "Add to my readahead list"
  onclick: onClick