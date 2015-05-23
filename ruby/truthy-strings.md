# Truthy Strings

Ruby strings are truthy, and they evaluate to zero, unless they start with a number.

```ruby
> 'nine to five'.to_i
 => 0
> '9 to 5'.to_i
 => 9
```
