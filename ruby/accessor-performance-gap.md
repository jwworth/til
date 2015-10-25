# Accessor Performance Gap

This week I learned that `attr_reader` is more performant than a simple getter method.

Here’s a gist from five years ago where Aaron Patterson explains:

https://gist.github.com/pjb3/629716

I ran that same benchmarking script today on Ruby 2.2.3. The gap has narrowed, but still exists:

```
ruby-2.2.3
Rehearsal -----------------------------------------------
method        0.070000   0.000000   0.070000 (  0.074840)
attr_reader   0.050000   0.000000   0.050000 (  0.052603)
-------------------------------------- total: 0.120000sec

                  user     system      total        real
method        0.070000   0.000000   0.070000 (  0.072229)
attr_reader   0.050000   0.000000   0.050000 (  0.053374)
```

I like `attr_reader` because it’s a Ruby convention and is one line instead of three. Now, I also like its performance relative to a getter.

h/t Josh Davey
