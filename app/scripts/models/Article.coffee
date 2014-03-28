define ['underscore', 'backbone', 'backbone.offline'],(_ ,Backbone,Offline)->
  class App.Models.Article extends Backbone.Model
    default : {
      title : ''
    }
    url : '/api/article'
    idAttribute : '_id'
    initialize : ->
      @on('change', ->
        @updated_at = new Date();
      ,@);
      @storage = new Offline.Storage('article', @);



  return App.Models.Article
