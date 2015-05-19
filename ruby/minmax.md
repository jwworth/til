# Minmax

Ruby's `Enumerable` class includes `minmax`, which returns a two element array with the minimum and maximum values of an enumerable.

```ruby
> [1, 5, 10].minmax
=> [1, 10]
> ['alpha', 'bravo', 'zulu'].minmax
 => ["alpha", "zulu"]
```
