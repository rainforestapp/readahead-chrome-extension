class @Link
  @next = ->
    $.ajax
      url: "http://readahead.herokuapp.com/links.json"
      dataType: "json"
      success: (data) ->
        console.log data
        chrome.tabs.query
          active: true
          currentWindow: true
        , (tabs) ->
          nextPage = null
          for item in data
            unless item.read_at
              nextPage = item
              break
          return unless nextPage
          chrome.tabs.update tabs[0].id,
          url: nextPage.url
          $.ajax
            url: "http://readahead.herokuapp.com/links/#{nextPage.id}.json"
            dataType: "json"
            type: 'PUT'
            success: (ret) -> console.log(ret)