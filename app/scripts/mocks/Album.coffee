define ['jquery.mockjax','underscore'], (mockjax,_)->
  class App.Mocks.Album

    getId : ->
      _.uniqueId()

    dataAll : ->
      [
        {
          '_id'   : @getId()
          'title' : 'title 123'
          'age'   : '1234'
        },
        {
          '_id' : @getId()
          'title' : 'title 123'
          'age'   : '1234'
        }
      ]

    article : ->
      $.mockjax({
        url: '/api/article',
        responseTime: 200,
        contentType: 'text/json',
        responseText : {
            '_id'   : @getId()
            'title' : 'title 15'
            "age"  : 37
          }
      });
      $.mockjax({
        url: '/api/articles',
        responseTime: 200,
        contentType: 'text/json',
        responseText: @dataAll()
      });


  return App.Mocks.Album