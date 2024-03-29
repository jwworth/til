# Ctags Dotfiles

Something I took for granted at Hashrocket was the file that configures
[Exhuberant Ctags](http://ctags.sourceforge.net/). Without configuration,
recursive tag generation will tag many things and cause problems.  overindex
badly.

Here's how you configure Ctags to ignore things:

```
/ctags.cnf (on MSDOS, MSWindows only)
/etc/ctags.conf
/usr/local/etc/ctags.conf
$HOME/.ctags
$HOME/ctags.cnf (on MSDOS, MSWindows only)
.ctags
ctags.cnf (on MSDOS, MSWindows only)

If any of these configuration files exist, each will be expected to contain a
set of default options which are read in the order listed when ctags starts,
but before the CTAGS environment variable is read or any command line options
are read. This makes it possible to set up site-wide, personal or project-level
defaults.
```

Here's the `head` of my root `.ctags`, which even this far in is excluding a
lot:

```
--exclude=.gem
--exclude=.git
--exclude=node_modules
```
