# Man pages in Vim

Hit `K` on a keyword, and Vim looks up the program under the keyword. It's a
big jarring because Vim appears to shell out from your buffer to show the
definition.

To see that man page _in_ Vim, load the `man.vim` plugin from command mode or
in your `.vimrc`:

```
:runtime! ftplugin/man.vim
```

Now, you can read man pages as a Vim buffer:

```
:Man curl
```
