# Find Or Create By With Block

The Rails `find_or_create_by` method is great for bringing something into existence only once. I like to use it for database seeds, so you get the basic objects you need to make your development site useable, but don't keep creating them over and over again.

One feature I recently learned is that this method takes a block.

```ruby
User.find_or_create_by(first_name: 'Jake') do |user|
  user.last_name = 'Worth'
end
```

This lets you find the object, and if it doesn't exist, create it with whatever attributes you need.
