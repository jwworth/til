# Variable Hoisting in Ruby

This afternoon my pair and I spent quite a while on a subtle bug. The culprit? Variable hoisting.

Take this file:

```ruby
class Test
  def self.hoist
    require 'pry'; binding.pry;
    bar = 1
  end
end

Test.hoist
```

When we hit the PRY debugger, what will the value of `bar` be? I would have thought it would raise `NameError`, because `bar` has seemingly not yet been defined.

Wrong:

```
$ ruby test.rb

From: /test.rb @ line 4 Test.hoist:

    2: def self.hoist
    3:   require 'pry'; binding.pry;
 => 4:   bar = 1
    5: end

[1] pry(Test)> bar
=> nil
```

When Ruby parses a file, it 'hoists' each variable to the top of its scope, declaring and setting it to `nil`, even if that variable is never assigned by our code. So variables inside an `if false` conditional get hoisted and set to `nil`, as described in this [blog post](http://eftimov.net/variable-hoisting-ruby).

This is can be a real gotcha.

h/t Jack Christensen
