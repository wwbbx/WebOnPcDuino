requestHandler = require '../src/requestHandler'

describe 'Test requestHandler', ->
	it 'start function', ->
		expect(requestHandler.start()).toBe('handle start method')

	it 'stop function', ->
		expect(requestHandler.stop()).toBe('handle stop method.')