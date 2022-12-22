# Build a Sentence from a JavaScript Array

Have you ever wanted to take a JavaScript array of strings and turn them into a
sentence?  Here's how you do that.

```javascript
const toLearn = [
  'object-oriented programming',
  'frontend engineering',
  'testing',
]

const sentence = new Intl.ListFormat().format(toLearn)
> "object-oriented programming, frontend engineering, and testing"
```

`ListFormat` takes [options][docs].

This has cross-browser support! The days of building a 'to sentence' function
in JavaScript are over.

[docs]: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Intl/ListFormat

