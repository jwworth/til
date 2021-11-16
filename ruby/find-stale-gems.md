# Find Stale Gems

Unused dependencies are bad: they increase the size of your project, slow down
processes, require maintenance, and send incorrect messages to fellow
developers about what's important.

To get find unused dependencies in Ruby, I've been using `gem stale`:

```
gem stale
```

`gem stale` list gems along with most recent access times. If the last access
time was the day you set up the app, that gem is a candidate for removal.
