#
# jQuery All Attributes
# https://github.com/ngs/jquery-allAttributes
#
# Copyright (c) 2013 Atsushi Nagase
# Licensed under the MIT license.
#
(($) ->

  "use strict"

  getAttributes = (element)->
    hash = {}
    return hash unless attrs = element.attributes
    for attr in attrs
      names = attr.name.split '-'
      value = attr.value
      ref = hash
      if /^(\d[\d\.]*)$/.test value
        value = parseFloat(value)
      else if /^(true|false)$/.test value
        value = value is 'true'
      while names.length > 1
        name = names.shift()
        ref[name] = '_': ref[name] if /^(number|string|boolean)$/.test typeof ref[name]
        ref[name] = {} unless ref[name]
        ref = ref[name]
      name = names[0]
      if typeof ref[name] is 'object'
        ref[name]['_'] = value
      else
        ref[name] = value
    hash

  _attr = $.fn.attr

  $.fn.attr =->
    if arguments.length
      _attr.apply @, arguments
    else if @[0]
      getAttributes @[0]

  @
) jQuery
