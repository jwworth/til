# Read Zsh Built-in Manual Pages

Note: This applies to Zsh, but the process would be similar for any terminal.

In Zsh, if you type `man cd`, instead of a manual page you get an output containing this:

```
See the built-in command description in the appropriate shell manual page.
```

What's going on here? Here's a summary:

> Builtin commands are contained within the shell itself. When the name of a
builtin command is used as the first word of a simple command (see Simple
Commands), the shell executes the command directly, without invoking another
program. Builtin commands are necessary to implement functionality impossible
or inconvenient to obtain with separate utilities. –"Shell Builtin Commands", https://www.gnu.org/

To see Zsh's `cd`, we need to view Zsh's built-in man page. `man zsh` lists all
of its man pages and there you'll find `zshbuiltins`, which you can view:

```
man zshbuiltins
```

Zsh's `cd` is described in this document.
