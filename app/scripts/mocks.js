

define(['jquery.mockjax'], function(){

    var article = function (){
        $.mockjax({
            url: '/api/article',
            responseTime: 200,
//            data: { action: "post" },
            contentType: 'text/json',
            responseText:
                {
                    "_id" : 1,
                    "title" : "xxxx",
                    "age" : 28
                }
        });
    }
    var articles = function (){
        $.mockjax({
            url: '/api/articles',
            responseTime: 200,
            responseText: [
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
    }
});


