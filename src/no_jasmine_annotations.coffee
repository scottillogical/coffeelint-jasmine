module.exports = class NoJasmineAnnotations

    rule:
        name: 'no_jasmine_annotations'
        level : 'warn'
        message : 'xit, iit, ddescribe, xdescribe statements should be removed before submitting code'
        description: """
            This rule detects jasmine annotations such as iit, ddescribe.
            This rule is `warn` by default.
            """


    lintLine : (line, lineApi) ->
        tokens = line.trim().split(" ")
        if tokens[0] in [ 'xit', 'iit', 'fit', 'ddescribe', 'xdescribe', 'fdescribe' ]
            true
