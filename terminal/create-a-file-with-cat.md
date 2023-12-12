# Create a File With `cat`

When you combine `cat` (concatenate) with `>` (output redirection),
you can create and write to a file from the command line.

```
$ cat > test.txt
```

Hit enter after the file name, and your terminal will wait for input. End the
file with `CTRL + D`.

```
$ cat > test.txt
one
two
three
$ cat test.txt
one
two
three
```

`>>` works, too; appending to the file as expected.
