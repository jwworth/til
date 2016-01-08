# Set a Default Scope

ActiveRecord  provides `default_scope`, which you can use to control how records are returned. An example:

```ruby
# app/model/chapter.rb
class Chapter < ActiveRecord::Base
  default_scope { order(:title) }
end
```

Now, instead of this (ordered by ID):

```ruby
Chapter.all.pluck(:title).take(5)
=> ["BALINESE CAUSE",
"BUILDING RAT",
"TAIL",
"LILAC MERCURY",
"PUMP SQUARE"]
```

We get this:

```ruby
Chapter.all.pluck(:title).take(5)
=> ["AFGHANISTAN COAT",
"ALCOHOL GONG",
"ANTARCTICA BULL",
"ASPARAGUS",
"BALINESE CAUSE"]
```

Beware, this decision can lead to inexplicable behavior down the road. Use with caution.

One use case I've heard is soft deletes. We might not want soft-deleted records appearing in `.all`:

```ruby
# app/model/chapter.rb
class Chapter < ActiveRecord::Base
  default_scope { where('soft_deleted is false') }
end
```

h/t Brian Dunn
