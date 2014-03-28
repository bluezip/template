window.App = {
  Models: {},
  Views: {},
  Collections: {},
  Router: {}
  Applications : {}
};

require.config({
  paths: {
    'jquery'          : 'vendor/jquery/dist/jquery.min',
    'jquery.mockjax'  :'vendor/mockjax/index',
    'underscore'      : 'vendor/underscore-amd/underscore',
    'backbone'        : 'vendor/backbone-amd/backbone',
    'backbone.offline': 'vendor/backbone.offline/index'
  },
  shim: {
    'backbone.offline': {
      deps: ['underscore', 'backbone'],
      exports: 'Offline'
    },
    'jquery.mockjax':['jquery']
  }
});

require(['models/Article','collections/Articles','underscore','mocks/mockjax'],(Article,Articles,_,Mocks) ->

  mock  = new Mocks();
  mock.article();
  mock.articles();


  article   = new Article({title:'xxxx',_id:'xxxxx'});
  article.save();

  articles  = new Articles();
  articles.fetch({success:(d) ->
    console.log(d);
  });
)