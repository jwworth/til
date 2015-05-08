# Git Snapshot

To save a snapshot of your current work in git, try this command:

```shell
git stash save "snapshot: $(date)" && git stash apply "stash@{0}"
```

This saves your current work in a timestamped stash, without removing it. In Hashrocket's dotmatrix this command is aliased to `git snapshot`.
