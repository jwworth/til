# Ruby's Kernel::abort

Today I used Ruby's `Kernel::abort` for the first time. It's one of those incredibly useful methods I can't believe I've never seen before.

Observe:

```ruby
# abort.rb                                                                                                                                                    {1}
def no_message
  abort
end

def message
  abort('Process terminated')
end
```

```
$ irb
2.2.2 :001 > require './abort'
 => true
2.2.2 :002 > no_message
$ irb                                 {1}
2.2.2 :001 > require './abort'
 => true
2.2.2 :002 > message
Process terminated
$
```

Use it to bail from a script.

http://ruby-doc.org/core-2.1.2/Kernel.html#method-i-abort
