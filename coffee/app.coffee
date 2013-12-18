#
# Setup Ember App
#
App = Ember.Application.create()

console.log chrome

App.Router.map ->
  # put your routes here

App.IndexRoute = Ember.Route.extend
  model: ->
    ["red", "yellow", "blue", "yolo"]

  # get current URL
  # send it to server
    # trigger banner render on success / fail

# 
# Add message listener to trigger ember stuff
# 
chrome.runtime.onMessage.addListener (request, sender, sendResponse) ->
  console.log request, sender, sendResponse