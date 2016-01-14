# Get help with Pathogen

Today I found a great command in Pathogen.vim, `:Helptags`. This is a riff off `:helptags {dir}`, a Vim feature that builds helptags for directory `{dir}`.

`:Helptags` does the same for all the directories in your `runtimepath`, which defaults on Unix and Mac OS X to:

```
"$HOME/.vim,
$VIM/vimfiles,
$VIMRUNTIME,
$VIM/vimfiles/after,
$HOME/.vim/after"
```

The use case here is when you've just loaded a new plugin into your Vim bundle, you open up Vim, and `:h {my_new_plugin}` isn't 'helping' you out.
