# Steps Within Steps

Cucumber step definitions are useful for explaining in detail the actions a user might take on your site. But after a while, they become repetitive. Certain sequences of steps, like a user signing in, happen frequently in a robust test suite. We should not have to repeat them all every time we build a feature.

One solution is calling several steps from within another step:

```ruby
Given 'I am a signed in developer' do
  steps %Q{
    Given I am a developer with credentials
    And I see the homepage
    When I click sign in
    Then I see the signin page
    When I enter my credentials
    And I click the sign in button
    Then I see my username in the upper right
  }
end
```

When you assert the topmost `Given`, all steps in the block will be interpolated and called. You still get the confidence of a rigorous test, but with a more concise declaration.
