# Sort Alphabetically

One way to make a list nicer to read is to sort it. Vim comes with a command built in for just this purpose.

Here is a snippet from a Gemfile:

```
gem 'coffee-rails', '~> 4.1.0'
gem 'uglifier', '>= 1.3.0'
gem 'sass-rails', '~> 5.0'
gem 'puma'
gem 'gravatar_image_tag'
gem 'authem'
gem 'jquery-rails'
gem 'pg'
gem 'redcarpet'
gem 'rails_12factor', group: :production
gem 'sdoc', '~> 0.4.0', group: :doc
```

These gems might have been added during the development process. To sort them, enter visual mode, highlight the desired range, and enter `:sort`. Here's the result:

```
gem 'authem'
gem 'coffee-rails', '~> 4.1.0'
gem 'gravatar_image_tag'
gem 'jquery-rails'
gem 'pg'
gem 'puma'
gem 'rails_12factor', group: :production
gem 'redcarpet'
gem 'sass-rails', '~> 5.0'
gem 'sdoc', '~> 0.4.0', group: :doc
gem 'uglifier', '>= 1.3.0'
```
