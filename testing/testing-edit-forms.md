# Testing Edit Forms

Today I found a way to assert that an edit form's inputs include a record's saved data. I think it strikes a good balance between broad and narrow scope.

```ruby
# spec/features/user_edits_kit_spec.rb

within 'form' do
  expect(page).to have_selector("input[value='Default copy.']")
end
```

This asserts that some content is inside an input field in the form, rather than just anywhere on the page. You can narrow the scope as needed.
