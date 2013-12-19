chrome.browserAction.onClicked.addListener (tab) ->
  $.ajax
    url: "http://readahead.herokuapp.com/links.json"
    dataType: "json"
    success: (data) ->
      console.log data
      chrome.tabs.query
        active: true
        currentWindow: true
      , (tabs) ->
        chrome.tabs.update tabs[0].id,
        url: data[0].url
