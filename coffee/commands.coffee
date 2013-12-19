chrome.commands.onCommand.addListener (command) ->
  Link.next() if command == 'list:show'