define ['jquery.mockjax'], ->
  class App.Applications.Mockjax
    article : ->
      $.mockjax({
        url: '/api/article',
        responseTime: 200,
        contentType: 'text/json',
        responseText:{
          "_id" : 1,
          "title" : "xxxx",
          "age" : 28
        }
    });

    articles : ->
      $.mockjax({
        url: '/api/articles',
        responseTime: 200,
        contentType: 'text/json',
        responseText:[
          {
            "_id" : 1,
            "title" : "xxxx",
            "age" : 28
          },
          {
            "_id" : 2,
            "title" :"yyyyy",
            "age": 39
          }
        ]
    });

  return App.Applications.Mockjax