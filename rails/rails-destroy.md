# Rails destroy

The rails `generate` (`g`) command is useful for quickly creating the building blocks of a Rails app. Until you misspell or otherwise mess up a command:

```
% rails g model blurg_post
      invoke  active_record
      create    db/migrate/20151006162244_create_blurg_posts.rb
      create    app/models/blurg_post.rb
      invoke    rspec
      create      spec/models/blurg_post_spec.rb
```

'Blurg post'? I meant 'blog post'. Luckily, we can remove those auto-generated files as fast as we created them, with `destroy` (`d`).

```
% rails d model blurg_post
      invoke  active_record
      remove    db/migrate/20151006162244_create_blurg_posts.rb
      remove    app/models/blurg_post.rb
      invoke    rspec
      remove      spec/models/blurg_post_spec.rb
```

http://edgeguides.rubyonrails.org/command_line.html#rails-destroy
