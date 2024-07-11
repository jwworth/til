# Load a Dependency in the Node REPL

Exploring your JS dependencies locally is a great way to learn and experiment. Here's
how to load a dependency from your `/node_modules` directory into the Node REPL.

```
$ node
> cn = require('classnames')
> cn("always", { never: false, sometimes: true })
'always sometimes'
```

