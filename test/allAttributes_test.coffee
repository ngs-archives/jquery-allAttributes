(($) ->

  module "jquery-allAttributes"

  test '$.fn.attr', ->
    deepEqual $("""<a href="foo" data-foo-bar="baz">Yay</a>""").attr(), href: 'foo', data: foo: bar: 'baz'
    deepEqual $("""<a href="foo" data-foo="1" data-foo-bar="baz">Yay</a>""").attr(), href: 'foo', data: foo: _: 1, bar: 'baz'
    deepEqual $("""<a href="foo" data-foo-bar="1" data-foo-bar-baz="qux" data-foo="2">Yay</a>""").attr(), href: 'foo', data: foo: _: 2, bar: baz: 'qux', _: 1
    deepEqual $("""<a string="hello" number-int="1" number-float="1.1" boolean-t="true" boolean-f="false">Yay</a>""").attr(), boolean: { f: false, t: true }, number: { int: 1, float: 1.1 }, string: 'hello'
    div = $("<div><a>Yay</a></div>")
    div.find("a").attr("foo", "bar")
    equal div.html(), """<a foo="bar">Yay</a>"""
    equal div.find("a").attr("foo"), "bar"

) jQuery
