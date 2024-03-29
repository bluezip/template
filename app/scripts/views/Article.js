// Generated by CoffeeScript 1.7.1
(function() {
  var __hasProp = {}.hasOwnProperty,
    __extends = function(child, parent) { for (var key in parent) { if (__hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; };

  define(['backbone', 'underscore'], function(Backbone, _) {
    App.Views.Article = (function(_super) {
      __extends(Article, _super);

      function Article() {
        return Article.__super__.constructor.apply(this, arguments);
      }

      Article.prototype.list = function(Articel) {
        var _el;
        _el = this.el;
        if (Articel.models.length > 0) {
          return _.each(Articel.models, function(d) {
            return $(_el).append($('<p></p>').html(d.attributes.title));
          });
        }
      };

      return Article;

    })(Backbone.View);
    return App.Views.Article;
  });

}).call(this);

//# sourceMappingURL=Article.map
