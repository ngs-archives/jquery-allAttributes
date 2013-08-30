# jQuery All Attributes

jQuery plugin to override proper $.fn.attr method to return all attributes if no arguments provided.

[![Build Status](https://travis-ci.org/ngs/jquery-allAttributes.png?branch=master)](https://travis-ci.org/ngs/jquery-allAttributes)

## Getting Started
```html
<script src="jquery.js"></script>
<script src="dist/allAttributes.min.js"></script>
```

## Examples
```html
<a id="test"
   href="#foo"
   data-foo-bar="1"
   data-foo-bar-baz="qux"
   data-foo-bar-baz2="true">Yay</a>
```

```javascript
$("a#test").attr();
// { href: "#foo", data: { foo: bar: { _: 1, baz: "qux", baz2: true } } }
```

## Testing
```bash
$ npm install
$ npm test
```

## Author

* Atsushi Nagase ([http://ngs.io/](http://ngs.io/))

## License
[MIT License](http://en.wikipedia.org/wiki/MIT_License)
