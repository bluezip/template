define(['underscore', 'backbone', 'backbone.offline', 'models/article'], (_, Backbone, Offline, Article) ->
  class App.Collections.Articles extends  Backbone.Collection

    url : '/api/articles'
    model : Article

    initialize: ->
      @storage = new Offline.Storage('article', @);

  return App.Collections.Articles
)