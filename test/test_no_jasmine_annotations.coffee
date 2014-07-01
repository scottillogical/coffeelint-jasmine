vows = require 'vows'
assert = require 'assert'
coffeelint = require "coffeelint"


vows.describe('no_jasmine_annotations').addBatch({

    'The iit jasmine annotation statement' :

        topic : ->
            """
            describe "A suite", ->
              iit "contains spec with an expectation", ->
                undefined
            """

        'causes a warning when present' : (source) ->
            config = {no_jasmine_annotations : {module : './src/no_jasmine_annotations'}}
            errors = coffeelint.lint(source, config)
            assert.isArray(errors)
            assert.lengthOf(errors, 1)
            error = errors[0]
            assert.equal(error.level, 'warn')
            assert.equal(error.lineNumber, 2)
            assert.equal(error.rule, 'no_jasmine_annotations')

}).export(module)
