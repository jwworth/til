# fields_for exclude ID

Rails' `fields_for` helper inserts a hidden ID field into your form. This is
generally helpful, because you'll want that information when you're updating
the record. But what if you don't?

This is the scenario I encountered today: a 'read-only' form nested inside a
`fields_for` helper, with no inputs. It almost worked: unfortunately, due to
the default ID-inserting behavior of `fields_for`, there was a _hidden_ ID
input. It was getting submitted with the rest of the form and breaking things.

`include_id: false` is the option we need.

```ruby
<%= person_form.fields_for :projects, {}, include_id: false do |project_fields| %>
  Project #<%= project_fields.index %>
<% end %>
```

This this option, no hidden ID will be inserted into the fields.

[fields_for](https://guides.rubyonrails.org/form_helpers.html#understanding-parameter-naming-conventions-the-fields-for-helper)
