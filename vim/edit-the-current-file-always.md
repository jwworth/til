# Edit the Current File Always

The Vim command `:e` edits a file. Add a bang, `:e!`, to edit the current file 'always', discarding any changes to the current buffer.

This is useful if you rename a file with a new file extension (i.e. `.txt` to `.rb`). `:e!` reloads the file in Vim, picking up any customizations you have in your configuration files such as syntax highlighting.
