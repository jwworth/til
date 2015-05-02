# Modify Attribute on Set

In this example, we want to allow users to enter a twitter handle with or without an at-sign ('@'), just like Twitter, but save it without the at-sign. `twitter_handle` is already an attribute on the class.

```ruby
class User < ActiveRecord::Base
  def twitter_handle=(handle)
    write_attribute(:twitter_handle, handle.to_s.gsub(/^@/, ''))
  end
end
```
