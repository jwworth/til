# Show How A File Is Ignored in Git

Today I solved a mystery: a file was being Git-ignored in a new project that didn't have a
`.gitignore`. Here's me learning this by trying and failing to add it:

```
$ git add destroy.sh
The following paths are ignored by one of your .gitignore files:
destroy.sh
```

This output tells me some `.gitignore` is telling Git to ignore my script. Another way to confirm this is the `check-ignore` command:

```
$ git check-ignore destroy.sh
destroy.sh
```

The output here is the match; a file named `destroy.sh` is indeed being ignored. But how? We can answer that question
with the `-v` flag:

```
$ git check-ignore destroy.sh -v
/Users/dev/.gitignore:14:*.sh      destroy.sh
```

My root `.gitignore` ignores all files ending in `.sh` on line 14. If I want this file, I need to edit or go around that policy.
