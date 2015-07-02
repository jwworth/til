# Skid Keywords

Ruby has a few interesting old keywords that use the underscore, or 'skid', to convey meta information about the file.

Here they are in action:

```ruby
# test.rb
puts __ENCODING__
puts __FILE__
puts __LINE__
__END__
Because this is after 'end', it should not be executed
```

Running this file produces:

```
$ ruby test.rb
UTF-8
test.rb
3
```

Pretty cool!
