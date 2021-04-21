Adding `| pbcopy` to the end of any command will send the standard output to your clipboard.

`ls -al | pbcopy` inside a rails project directory allowed me to paste this:

```
Gemfile
Gemfile.lock
README.md
Rakefile
app
bin
config
config.ru
db
features
lib
log
public
script
spec
test
tmp
vendor
```
