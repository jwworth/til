# Bypass Basic Auth

Rails comes with HTTP Basic authentication built in. Adding this to a controller is how it's done:

```ruby
# app/controllers/application_controller.rb

http_basic_authenticate_with name: 'name', password: 'password'
```

When you visit a URL requiring authentication, you can bypass the authentication screen by adding your username and password to the beginning of the URL. For localhost, this would look like:

```
name:password@localhost:3000
```
