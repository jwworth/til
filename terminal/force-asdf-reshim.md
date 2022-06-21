# Force ASDF Reshim

When I upgrade ASDF, I sometimes get an error like this when I try to run a
command:

```
/Users/jakeworth/.asdf/shims/jq: line 3: 
/usr/local/Cellar/asdf/0.9.0/libexec/bin/asdf: 
No such file or directory
```

The issue is that I've upgraded ADSF to v0.10.2, but the jq shim doesn't know
that and can't find it in a directory called "0.9.0". This issue persists even
after running `asdf reshim`.

My solution is to force ASDF to rebuild shims directory by renaming it. A
rename lets me get back to where I am now, in case I need to.

```
$ mv ~/.asdf/shims ~/.asdf/shims-bak
$ asdf reshim
```

The shims are rebuilt with the correct ASDF version.
