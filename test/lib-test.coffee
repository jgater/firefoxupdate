#
# mocha test framework for lib.coffee
#

# libraries
chai = require 'chai' 
should = chai.should() 
async = require "async"

settings = require "../settings"
FirefoxUpdater = require "../lib"

firefoxUpdater = new FirefoxUpdater


describe "FirefoxUpdater:", ->
	describe "listDirs", ->
		it "responds with a list of all user folders", (done) ->
			firefoxUpdater.listDirs (err, res) ->
				return done(err)  if err
				res.should.have.length > 0
				done()

