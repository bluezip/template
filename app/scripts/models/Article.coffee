define ['underscore', 'backbone'],(_ ,Backbone)->
  class App.Models.Article extends Backbone.Model
    default : {
      _id : ''
      title : ''
    }
    url : '/api/article'
    idAttribute : '_id'
    initialize : ->
      @on('change', ->
        @updated_at = new Date();
      ,@);



  return App.Models.Article
