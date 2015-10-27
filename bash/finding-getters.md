# Finding Getters

After writing the other day about why you [might not want to use simple getters](http://til.hashrocket.com/posts/7d6b8eb8d3-accessor-performance-gap), I decided that I wanted to eliminate all such methods from a project.

Here is the regex I wrote to isolate the pattern:

```
ag 'def (\w+);?\s+@\1;?\s+end'
```

The semicolon catches one-line getter methods as well as the more common three-line.
