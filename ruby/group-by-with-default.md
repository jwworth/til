# `group_by` with default

Here's some code that made me do a double take.

```ruby
something = items[nil]
```

It's that `[nil]`. What's going on here?

It turns out that `items` is the return of a call to Ruby's `group_by`.
`group_by` groups by whatever the block evaluates to, including `nil`.

```ruby
[
  { shipping: 'fedex', id: 1 },
  { shipping: 'fedex', id: 2 },
  { id: 3 }
].group_by { |item| item[:shipping] }

=> {
  'fedex' => [{ shipping: 'fedex', id: 1 }, { shipping: 'fedex', id: 2 }],
  nil => [{ id: 3 }]
}
```

Hence the key `nil`.

Here's another technique that I think is friendlier to the programmer:

```ruby
[
  { shipping: 'fedex', id: 1 },
  { shipping: 'fedex', id: 2 },
  { id: 3 }
].group_by { |item| item[:shipping] || 'no_carrier' }

=> {
  'fedex' => [{ shipping: 'fedex', id: 1 }, { shipping: 'fedex', id: 2 }],
  'no_carrier' => [{ id: 3 }]
}
```

And if we rename our variable `item` to `shipment_groups`, then `items[nil]`
becomes `shipment_groups['no_carrier']`. A clear readability upgrade.
