# Change Column Null

The `not null` constraint is a great way to ensure data integrity. If a Rails model `validates_presence_of` an attribute, that column should be `not null` in the database.

Rails has a special migration method for setting this constraint.

```ruby
change_column_null :users, :mandatory_attribute, false
```
