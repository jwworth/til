# Keyword Precedence

The Ruby keyword `not` and the unary `!` aren't the same. They have a different precedence, and therefore are not interchangeable, despite seeming very similar.

```
irb > not 3 == 4
=> true
irb > !3 == 4
=> false
```

The first example is evaluated as `not (3 == 4)`, or `not false`, which is true. The second example is evaluated as `(not 3) == 4`, or `false == 4`, which is false.

Just use `!`. It's terser, it's less ambiguous, and it can be overridden.

Ruby's `and` and `or` have similar gotchas, which I plan to write about here in the future.
