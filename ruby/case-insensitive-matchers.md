# Case Insensitive Matchers

You can make Ruby regex matchers case insensitive with an `i`.

```ruby
2.1.0 :001 > 'Expected output' =~ /expected/
 => nil
2.1.0 :002 > 'Expected output' =~ /expected/i
=> 0
```

This is useful when writing tests, when you care about a message, but are not interested in its exact format.
