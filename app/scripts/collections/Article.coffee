define(['underscore', 'backbone', 'models/article'], (_, Backbone, Model) ->
  class App.Collections.Article extends  Backbone.Collection

    url   : '/api/articles'
    model : Model

    initialize: ->


  return App.Collections.Article
)