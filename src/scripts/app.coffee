define (require) ->
  Backbone = require('backbone')

  return class AppView extends Backbone.View
    el: 'body'

    events:
      'change input': 'updateSearch'

    render: () ->
      query = location.search
      str = query.match(/(?:\?q=)?(.*)/)[1]
      $html = "<div>
                 <span>Enter your search here and hit 'enter': </span>
                 <input type='text' value='#{str}' />
               </div>
               <iframe src='http://www.bing.com/search#{query}'
                 style='width: 100%; height: 800px; border: none;'>
               </iframe>"

      @$el.html $html

    updateSearch: (e) ->
      query = $(e.currentTarget).val()

      require ['cs!router'], (router) ->
        router.navigate("search?q=#{query}", {trigger: true})
