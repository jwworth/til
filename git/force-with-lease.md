# Force with Lease

When I rebase, I force-push altered history using the flag `--force-with-lease`
instead of the commonly-used `--force`.

```
git push --force-with-lease
```

But why? This is a TIL for me because I've used this command for years without
reading the docs.

Take it away, docs:

> This option allows you to say that you expect the history you are updating is
> what you rebased and want to replace. If the remote ref still points at the
> commit you specified, you can be sure that no other people did anything to
> the ref.

Practically, this says: "I changed history and I'm overwriting it _forcefully_.
Don't stop me unless somebody else has already done the same thing." It's the
collaborator version of a force-push.

Hashrocket aliases this as `gplease`, which is helps me remember it as a
kinder, permission-asking version of a force push.
