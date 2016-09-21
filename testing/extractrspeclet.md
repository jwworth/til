# ExtractRSpecLet

*From the Hashrocket Vault...*

Today I got to see the `:ExtractRspecLet` command from the [vim-weefactor](https://github.com/jgdavey/vim-weefactor) plugin. It does what the names suggests, converting this:

```ruby
# spec/model/foobar_spec.rb

foo = FactoryGirl.create :foobar
```

To this:

```ruby
# spec/model/foobar_spec.rb

let(:foo) { FactoryGirl.create :foobar }
```

It also moved the new `let` from inside my `it` block to right underneath my `context` block. Awesome!

h/t Josh Davey and Dillon Hafer
