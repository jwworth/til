# Show Proc Source Location

Today I was investigating a Ruby Proc created in a gem, and I wanted to know
how it was defined. Other than reading source code, there doesn't seem to be a
good way to do this! Prove me wrong.

We can get close by using Ruby's `#source_location` function on `Proc`:

```
some_proc.source_location
=> ["/gems/2.4.0/bundler/gems/spree/core/app/models/spree/order.rb", 34]
```

This command shows us the line where Proc is defined. Go there to continue
source-diving.
