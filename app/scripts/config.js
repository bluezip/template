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
        'jquery'          : 'vendor/jquery/dist/jquery.min',
        'jquery.mockjax'  : 'vendor/mockjax/jquery.mockjax',
        'underscore'      : 'vendor/underscore/underscore',
        'backbone'        : 'vendor/backbone/backbone'
    },
    shim: {
        'jquery.mockjax':{
            deps: ['jquery']
        }
    }
});