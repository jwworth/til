# Classify and Constantize

Metaprogramming! Today I created a variable `event` that calls a serializer unique to the value of `event`.  Along the way I learned about the Rails methods `classify` and `constantize`.

`classify` takes a plural table name and returns a class name.

```ruby
> 'some_things'.classify
=> "SomeThing"
```

`constantize` tries to find a constant with the name specified in the argument string.

```ruby
> "Module".constantize
=> Module

> "Nothing".constantize
NameError: uninitialized constant Nothing
```

Here's a sample of how I used these methods today (on the 'Today I Learned' app itself):

```ruby
# app/models/post.rb
event = 'some_important_event'

# app/workers/event_notifier.rb
"#{event.classify}Serializer".constantize.new
```

This will new up an instance of `SomeImportantEventSerializer`, if such a class exists.
