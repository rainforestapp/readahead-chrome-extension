// Generated by CoffeeScript 1.3.3
(function() {
  var App;

  App = Ember.Application.create();

  console.log(chrome);

  App.Router.map(function() {});

  App.IndexRoute = Ember.Route.extend({
    model: function() {
      return ["red", "yellow", "blue", "yolo"];
    }
  });

  chrome.runtime.onMessage.addListener(function(request, sender, sendResponse) {
    return console.log(request, sender, sendResponse);
  });

}).call(this);
