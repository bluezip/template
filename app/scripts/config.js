window.App = {
    Models: {},
    Views: {},
    Collections: {},
    Router: {},
    Applications : {},
    Mocks: {}
};

require.config({
    paths: {
        'jquery'            : 'vendor/jquery/dist/jquery.min',
        'jquery.mockjax'    : 'vendor/mockjax/jquery.mockjax',
        'underscore'        : 'vendor/underscore/underscore',
        'backbone'          : 'vendor/backbone/backbone',
        'TweenMax'          : 'vendor/greensock/src/minified/TweenMax.min',
        'TimelineMax'       : 'vendor/greensock/src/minified/TimelineMax.min',
        "bootstrap"         : 'vendor/bluezip.bootstrap/index'
    },
    shim: {
        'jquery.mockjax':{
            deps: ['jquery']
        }
    }
});

require(['backbone','underscore','jquery','bootstrap'],function(Backbone,_,jQuery){
    window.vent = _.extend({}, Backbone.Events)
});