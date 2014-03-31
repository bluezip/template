require(['config'],->
  require(['models/Article','collections/Article','views/Article','mocks/Article','underscore'],(Model,Collection,View,Mocks,_) ->

    mock  = new Mocks();
    mock.article();

    article   = new Model();
    article.save({title: 'title 14'},{success : (d)->
      console.log(d);
    });

    articles  = new Collection();
    view      = new View({el : '#xxx'});
    articles.fetch({success:(d) ->
      view.list(d);
    });
  )
);