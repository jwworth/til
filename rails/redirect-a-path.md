# Redirect a Path

To redirect a path in Rails:

```ruby
# config/routes.rb

get "/authors" => redirect("/designers")
```

This lets you take a difficult-to-type path name and expose it to your users as a simpler path name:

```ruby
# config/routes.rb

get "/login" => redirect("/auth/google_oauth2")
```
