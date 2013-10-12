define (require) ->
  Backbone = require('backbone')
  AppView = require('cs!app')
  
  appView = new AppView()

  return new class Router extends Backbone.Router
    initialize: () ->
      # Default Route
      @route '*actions', 'default', () =>
        query = location.search
        @navigate("search#{query}", {trigger: true, replace: true})

      @route /^search/, 'search', () ->
        appView.render()
