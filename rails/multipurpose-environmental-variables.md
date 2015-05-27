# Multipurpose Environmental Variables

I use HTTP Basic auth in non-production environments because it ships with Rails and is easy to implement. The first time I used it, I set it up like this:

```ruby
# app/controllers/application_controller.rb
if ENV['http_basic_auth']
  http_basic_authenticate_with name: ENV['username'], password: ENV['password']
end
```

I used environmental variables so that no credentials were hard-coded, and so I could toggle it without deploying.

Today I learned you can also implement it like this:

```ruby
# app/controllers/application_controller.rb
if creds = ENV['basic_auth_credentials']
  username, password = creds.split(':', 2)
  http_basic_authenticate_with name: username, password: password
end
```

This requires an environmental variable called `basic_auth_credentials`, set to `<username>:<password>`. I prefer this because it allows one variable to serve two purposes: it toggles the feature and also contains the information the feature needs to work.

It's a tradeoff; slightly less explicit, but simpler to set and unset (one variable versus three).
