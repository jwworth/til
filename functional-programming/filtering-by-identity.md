# Filtering By Identity

I'm reading _Functional-Light JavaScript_ by Kyle Simpson, and learning a lot!
Today I learned about the functional programming utility known as 'identity'.

Identity is a unary function that simply returns its argument. A simple idea
that can be powerfully applied, as JavaScript coerces the returned argument to
boolean:

```js
> const identity = (arg) => arg
> ["", false, "keep", null, undefined, "these"].filter(identity)
[ 'keep', 'these' ]
```

I've done something similar for years by filtering to boolean, or writing my own
(I didn't know it had this name) anonymous identity function.

```js
> ["", false, "keep", null, undefined, "these"].filter(Boolean)
[ 'keep', 'these' ]
> ["", false, "keep", null, undefined, "these"].filter(arg => arg)
[ 'keep', 'these' ]
```

I like that functional programming has a concept for this and am excited so see
how it can be applied to future work.
