// Generated by CoffeeScript 1.7.1
(function() {
  define(['jquery.mockjax', 'underscore'], function(mockjax, _) {
    App.Mocks.Article = (function() {
      function Article() {}

      Article.prototype.getId = function() {
        return _.uniqueId();
      };

      Article.prototype.dataAll = function() {
        return [
          {
            '_id': this.getId(),
            'title': 'title-1',
            'age': '1234'
          }, {
            '_id': this.getId(),
            'title': 'title-2',
            'age': '1234'
          }
        ];
      };

      Article.prototype.article = function() {
        $.mockjax({
          url: '/api/article',
          responseTime: 200,
          contentType: 'text/json',
          responseText: {
            '_id': this.getId(),
            'title': 'title 15',
            "age": 37
          }
        });
        return $.mockjax({
          url: '/api/articles',
          responseTime: 200,
          contentType: 'text/json',
          responseText: this.dataAll()
        });
      };

      return Article;

    })();
    return App.Mocks.Article;
  });

}).call(this);

//# sourceMappingURL=Article.map