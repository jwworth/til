# The Alpha Commit

I like to read commit logs.

Today I wanted to see the first commit on a project. Here's what I used:

```
git rev-list --max-parents=0 HEAD
```

*Show me the commits that led to* `HEAD` *in reverse chronological order; then limit that list to the commits with no parent.*

Here's a small modification, to show the entire commit rather than the SHA alone:

```
git show $(git rev-list --max-parents=0 HEAD)
```
