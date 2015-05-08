# Close a File

In Vim there are many ways to close a file. One of the best is `:x`, also know as `:xit`.

`:x` writes and quits a file when changes have been made, like `:wq`, but with one less keystroke.

*An important distinction:*

`:x` and `:wq` are similar, but not identical commands.

The difference is that `:wq` writes the current file and quits, as long as the file is not read-only and has a name, while `:x` only writes if changes have been made. So, if you were to generate a file with Vim, make no changes, and try to write and quit with `:x`, the file would not be written. Doing the same thing with `:wq` would write the file.
