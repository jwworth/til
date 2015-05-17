# Call a Vimscript Method in Vim

To call a Vimscript method in Vim, first source the file.

```vim
:source ~/path/to/vimscript.vim
```

Next, put the cursor over the method call, and run that line.

```vim
:exec getline(".")
```
