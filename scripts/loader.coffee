define (require) ->
  Backbone = require('backbone')
  router = require('cs!router')

  init = (options = {}) ->
    # Start monitoring history with Backbone
    Backbone.history.start
      pushState: true
      root: '/backbone-querystring-route-test'

    # Force Backbone to register the full path including the
    # query string in its history on load
    if location.search
      router.navigate(Backbone.history.fragment, {replace: true})

  return {init: init}
