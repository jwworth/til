# Override Vim's Filetype

Vim's filetype auto-detection is great for effortless syntax highlighting, but what if a certain kind of file (i.e. Ruby) contains lots of another kind of code (i.e. SQL)? The Ruby code will be highlighted and readable, the SQL a large monochrome blob. Hard to read and reason about. We can do better!

Override the automatic assignment with:

```
:set ft=sql
```

This command with no assignment returns the current setting:

```
:set ft
=> filetype=lua
```

We can easily revert to the auto-detected extension as needed.

h/t Josh Branchaud
