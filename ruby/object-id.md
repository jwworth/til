# Object ID

Today I learned about the method `__id__`, aliased `object_id`, in Ruby. It
returns a unique integer identifier for any Ruby object.

A few examples:

```ruby
> Object.new.object_id
=> 7024702983434
> name = "jake"
=> "jake"
> name.object_id == name.object_id
=> true
> "thawed".object_id == "thawed".object_id
=> false
> "frozen".freeze.object_id == "frozen".freeze.object_id
=> true
```

I've never used this method in practice, but I hope to someday.
