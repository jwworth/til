# Default to Empty Array in Postgres

Today I added an array of integers to a Postgres table, and like all such migrations, it will default to `null` for each new record.

This was a problem, because I wanted to use Rails 4's built-in Postgres array support to make decisions based on that data. Ruby array methods like `include?` will raise `NoMethodError: undefined method 'include?' for nil:NilClass` if that array is ever `nil`, which it is by default.

This led me to learn how to set the default value to an empty array using Postgres array literal syntax. I was then able to include a not null constraint as an added benefit:

```rb
# db/migrate/20160211043316_add_slack_notified.rb

def up
  execute <<-SQL
    alter table posts
      add column slack_notified integer[] not null default '{}';
  SQL
end
```
