http = require 'http'
server = require './server'
router = require './router'

http.createServer(server.start(router.route)).listen(1337);