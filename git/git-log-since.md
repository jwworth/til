# Git Log since

At the end of each day, I try to record what I did, to jog my memory during the next morning's standup. This is a helpful aid:

```
git log --since="24 hours ago"
```

I SSH into my work machine and run this in my project's root directory. Combined with an alias from the Hashrocket Dotmatrix, `glg` (`git log --graph --oneline --decorate --color --all`), I get a terse summary of the day's work, ready to be pasted into your note-taking or project management tool of choice:

```
$ glg --since="24 hours ago"
* 7191b92 (HEAD, origin/master, origin/HEAD, master) Good changes
* 3f4d61e More good changes
* ecd9dcd Even more
...
```
