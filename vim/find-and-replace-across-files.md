# Find and Replace Across Files

Vim can find and replace strings across files, just like other text editors. It's really (sort of) easy.

First load all the files you want to change into the buffer with a splatted directory.

```
:args path/to/files/*/*
```

Then, execute the substitution.

```
:argdo %s/old_string/new_string/ge | update
```

The `e` flag is important; it tells Vim not to issue an error if the search pattern fails. This will prevent `No Match` errors from breaking the chain.
