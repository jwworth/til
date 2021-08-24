# Highlighted Routes Searching

On a non-trivial Rails app, the output from `rake routes` will be huge. Many
people develop a reflex for searching through this output via something like:

```
$ rake routes | grep "<string>"
```

Which filters the output to matches on the string. I'd like to suggest a better option: use
a command-line search tool that highlights the output! Here's that same command with RipGrep:

```
$ rake routes | rg "<string>"
```

The results are the same (although much faster 😈), but even better is that
that each match will be colorized. It's bright red in my terminal. The
colorizing makes the matches much easier to interpret.
