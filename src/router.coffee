route = (handler) ->
	if typeof handler isnt 'function'
		return 'mehtod ' + handler + ' is not supported.'
	else
		return handler()

	#if typeof handler isnt 'function'
	#	return handler + ' is not function' 
	#else 
	#	return handler + ' is function'

exports.route = route