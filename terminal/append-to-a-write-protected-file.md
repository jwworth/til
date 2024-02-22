# Append to a Write-Protected File

Suppose you want to append to a file that's write-protected and can only be
edited via `sudo`. Is that possible? It is!

A technique I discovered today is to use `tee` with `sudo`:

```
$ cat file.txt | sudo tee -a /etc/hosts
```

This lets me append the contents of `file.txt` to the write-protected
`/etc/hosts` file by entering my password.

