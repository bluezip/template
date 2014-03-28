define(['backbone','underscore'],(Backbone,_)->
  class App.Views.Article extends Backbone.View

    list : (Articel)->
      _el = @el;
      if(Articel.models.length > 0)
        _.each(Articel.models,(d)->
          $(_el).append($('<p></p>').html(d.attributes.title));
        )

  return App.Views.Article
)