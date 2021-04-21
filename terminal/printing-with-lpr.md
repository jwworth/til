# Printing with lpr

Recently while trying to fix a printer I used `lpr` a bunch of times. It's not exactly new to me, but never fails to surprise people when I use it.

`lpr` submits files for printing to your default printer in OSX.

Print a file:

```
lpr README.md
```

Print the current file in your Vim session, with a *cool job name*:

```
:! lpr -T 'cool job name' %
```

Print two copies to a specific printer:

```
lpr -# 2 -P specific_printer README.md
```

This is an invaluable command-line trick.
