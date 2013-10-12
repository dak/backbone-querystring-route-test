define (require) ->
  Backbone = require('backbone')
  AppView = require('cs!app')
  
  appView = new AppView()

  return new class Router extends Backbone.Router
    initialize: () ->
      # Default Route
      @route '*actions', 'default', () =>
        appView.render()
