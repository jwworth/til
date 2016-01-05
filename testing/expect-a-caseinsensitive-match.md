# Expect a Case-Insensitive Match

We had a testing issue this week when a button's text `save changes!` was rendering as `SAVE CHANGES!`, due to the CSS property `text-transform: uppercase`. How do you test that?

One technique is to use RSpec's `match` method, and include case insensitivity with `i` (explored earlier [here](http://til.hashrocket.com/posts/4dc84ebcb8-caseinsensitive-substitution)):

```ruby
> button_text = "foo"
=> "foo"
> expect(button_text).to match("FOO")
RSpec::Expectations::ExpectationNotMetError: expected "foo" to match "FOO"
# stuff
> expect(button_text).to match(/FOO/i)
=> true
```

We ultimately hard coded the expectation to `match("FOO")`, because allowing `fOo` and `FoO` seemed too permissive. But it remains an option.
