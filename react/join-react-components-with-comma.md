# Join React Components With Comma

Want to connect a list of React components with a delimiter, like a comma? Imagine a sentence of:

> <a href="#">Link A</a>, <a href="#">Link B</a>, <a href="#">Link C</a>.

How could we programmatically achieve this in React?

Here's one answer, inserting a comma before all but the first list item:

```tsx
{items.map((item, index) => (
  <React.Fragment key={item.id}>
    {index > 0 && ', '}
    <a href={`/items/${item.id}`}>{item.name}</a>{' '}
  </React.Fragment>
))}
```

Lots of other good suggestions in [this Gist](https://gist.github.com/granmoe/274c299b792b039deecfb619753ea32c).
