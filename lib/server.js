// Generated by CoffeeScript 1.6.3
(function() {
  var handler, start, url;

  url = require('url');

  handler = require('./requestHandler');

  start = function(router) {
    var processor;
    return processor = function(request, response) {
      var content, myhandler, pathName;
      pathName = url.parse(request.url).pathname;
      console.log('PathName in server.js is: ' + pathName);
      myhandler = {
        '/': handler.start,
        '/start': handler.start,
        '/stop': handler.stop
      };
      content = router(myhandler[pathName]);
      response.writeHead(200, {
        'Content-Type': 'text/plain'
      });
      response.write(content);
      return response.end();
    };
  };

  exports.start = start;

}).call(this);