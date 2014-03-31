require(['config'],->
  require(['models/Article','collections/Article','views/Article','mocks/Article','underscore','TweenMax','TimelineMax','jquery'],(Model,Collection,View,Mocks,_,TweenMax,TimelineMax,$) ->

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
      t = new TimelineMax();
      t.add(TweenMax.to($('.logo'),.5,{marginLeft:"50px", ease: Bounce.easeParams }))
    });
  )
);