## Apply a Patch in Reverse

Need to undo a code change? You could revert. Or, you could apply the patch
without creating a commit. That's what I want to do much of the time.

Use `git apply` with the `-R` (reverse) flag:

```
git show 8cc13b1 | git apply -R
```

All the changes from `8cc13b1` get applied to your working directory. In a large commit,
do this tactically by limiting to just one file or directory.

```
git show 8cc13b1 src/fileToRevert.ts | git apply -R
```
