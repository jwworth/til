# Run Previous Command

The command `!!` prints the last command you ran, then runs it. Here is an example:

```shell
$ ls
LICENSE.md README.md  bash       cucumber   rails
$ !!
ls
LICENSE.md README.md  bash       cucumber   rails
```

Replace the second `!` with the first few letters of a command you have previously run, and bash will search for, print, and run that command.

```shell
$ !rsp
rspec spec/models/user.rb
...
```

Both of these commands are tab-completable.

