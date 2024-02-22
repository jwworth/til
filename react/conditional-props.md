# Conditional Props

Passing props conditionally a component makes sense in many situations. Imagine
a select box that receives an `isDisabled` prop that disables the
input. Maybe we only want to set it if it's true. For one, it's a bit cleaner
than setting it to its default `false` much of the time. And maybe we want to
select a certain default value in that same scenario.

Enough theorizing! Here's the code:

```tsx
<Select
  options={itemOptions}
  {...(someCondition && { isDisabled: true, defaultValue: [itemOptions[0]] })}
/>
```

Let me explain the magic.

When our our boolean condition `someCondition` is `false`, we short-circuit the
`&&` and return `false`. 

[Per
MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Operators/Spread_syntax):
"Only strings have enumerable own
properties, and spreading anything else doesn't create properties on the new
object." And so, `false` puts nothing into the object literal: empty object, no-op to
React (I'm a bit fuzzy on this last part).

When `someCondition` is `true`, we return the object after `&&`, which is
spread into the outer object and received by React as props.
