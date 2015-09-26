# Fetch Your Environmental Variables

It's important to `fetch` Ruby environmental variables rather than directly referencing them.

This code depends on 'secret_key':

```ruby
key = ENV['secret_key']
```

When 'secret_key' is not set, 'key' will be assigned `nil`, which is an object.

Later, a call to `key.upcase` will produce a `NoMethodError`, because Ruby doesn't know how to uppercase `nil`.

This is better:

```ruby
key = ENV.fetch('secret_key')
```

Now, when 'secret_key' is not set, `KeyError` will be raised. The code fails fast.

`fetch` takes a second argument as a default, which means you can even prevent `KeyError` entirely, if you choose.

http://ruby-doc.org/core-2.2.3/ENV.html#method-c-fetch
