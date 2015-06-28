# Change Column Null

The `not null` constraint is a great way to ensure data integrity. If a Rails model `validates_presence_of` an attribute, that column should be `not null` in the database.

Rails has a special migration method for setting this constraint.

```ruby
change_column_null :users, :mandatory_attribute, false
```

You could also use the `change_column` method. The reason `change_column_null` is a better choice is that `change_column` requires you to state the type of the column; `change_column_null` does not.

```ruby
change_column(table_name, column_name, type, options)
change_column_null(table_name, column_name, null, default = nil)
```
