# Delete a Line From Another Line

Today I was cleaning up a test with an extra empty line at the top of the file, away from my Vim cursor. I wanted to delete it... without moving the cursor.

It seems like Vim almost lets you do this, with `:[range]d`. But it leaves the cursor on the deleted line, which isn't very magical.

This is the hack we found:

```
:[range]d
```

Then:

```
''
```

`''` returns the cursor to the last jump point.

h/t Josh Branchaud
