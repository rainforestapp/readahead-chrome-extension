chrome.runtime.onMessage.addListener (request, sender, sendResponse) ->
  console.log request.url
  $.ajax
    url: "http://readahead.herokuapp.com/links.json"
    type: "POST"
    data:
      url: request.url

    dataType: "json"
    success: (data) ->
      console.log data