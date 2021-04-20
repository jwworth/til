# Reset a Gem

If you've been mucking around in your Ruby dependencies, `bundle pristine` is
your friend; it resets all of the gems in your Gemfile to their pristine
condition.

This can be a slow on a big project. Target the specific gems you worked on today with:

```
$ bundle pristine <gemname>
```
