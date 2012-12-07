# required modules
{EventEmitter} = require "events" 
async = require "async"
path = require "path"
fs = require "fs"
util = require "util"

settings = require "./settings" 

class FirefoxUpdater extends EventEmitter
	constructor: ->

	listDirs: (callback) ->
		callback null, []


module.exports = FirefoxUpdater