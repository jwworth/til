# Show Model and Grep with Pry-rails

This week Josh Branchaud wrote about `show-models` in Pry-rails:

http://til.hashrocket.com/posts/62f61ee06f-show-rails-models-with-pry

This method has two nice variants. `show-model User` shows you that model, useful in a large database.

`show-models` also accepts `--grep` for searching:

```ruby
[1] pry(main)> show-models --grep published
Post
  id: integer
  title: string
  published_at: datetime # 'published' is highlighted
```
