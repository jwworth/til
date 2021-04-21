# Run Previous Command

Previously run commands can be viewed with the `history` command.

```shell
$ history
10048  git checkout master
10049  gpr
10050  rake
```

With this list, you can rerun any command using `!n`:

```shell
$ !10048
Already on 'master'
```

The command `!!` prints the last command you ran, then runs it. Here is an example:

```shell
$ ls
LICENSE.md README.md  bash       cucumber   rails
$ !!
ls
LICENSE.md README.md  bash       cucumber   rails
```

Replace the second `!` with the first few letters of a command you have previously run, and bash will search for, print, and run the most recent instance.

```shell
$ !rsp
rspec spec/models/user.rb
...
```
