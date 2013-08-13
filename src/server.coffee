url = require 'url'
handler = require './requestHandler'

start = (router) ->
	processor = (request, response) -> 
		# get path name for routing.
		pathName = url.parse(request.url).pathname

		console.log 'PathName in server.js is: ' + pathName
		# define handlers.
		myhandler =
			'/':		handler.start
			'/start':	handler.start
			'/stop':	handler.stop

		content = router(myhandler[pathName])
		#console.log myhandler[pathName]
		#content = myhandler[pathName]()

		# write route result.
		response.writeHead(200, {'Content-Type':'text/plain'})
		response.write(content)
		response.end()

exports.start = start