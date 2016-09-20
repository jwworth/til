# Vim Regex Word Boundaries

Today while writing a Vim regex to change every instance of `it` (ignoring larger matches like `itemized`), we stumbled upon Vim regex word boundary matching.

Given this file:

```
foo
foobar
```

The following Vim regex will match on both the first and second line:

```vim
:%s/foo/baz/g
```

But with word boundaries, we'll only match (and change) the first line, because only the first `foo` is a standalone word:

```vim
:%s/\<foo\>/baz/g
```
