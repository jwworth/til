# Command Line Subshell

When chaining commands in the terminal, you may need to do things that affect
the shell's environment, like change directories. Here's an example:

```
$ yarn install && cd ios && pod install && cd .. && yarn build
```

These `cd`'s can clutter up a script, and they're incidental. My solution is to
use a subshell (here's the explanation from `man bash`):

> (list) list is executed in a subshell environment (see COMMAND EXECUTION ENVIRONMENT  below). Variable
> assignments and builtin commands that  affect the shell's environment do not remain in effect
> after the command completes. The return status is the exit status of list.

Note that last sentence; we can chain this subshell just like any command!
Here's our improvement; when the parens close the contextual change of the `cd`
is dropped and we're back in the root of the project.

```
$ yarn install && (cd ios && pod install) && yarn build
```
