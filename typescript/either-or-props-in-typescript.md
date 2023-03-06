### Either/Or Props in TypeScript

Sometimes in TypeScript we'd like to say a function can either have one typed
prop, or the other, never both and never neither. This can be achieved with a
union type and type `never`:

```ts
type Props =
  { markdown: string, copy: never }
  |
  { markdown: never, copy: string}
}

const component = ({ markdown, copy }: Props) => markdown ? parseMarkdown(markdown) : <>copy</>

console.log(component({ markdown: "### Important" })) // <h3>Important</h3>
console.log(component({ copy: "Just information" }))  // <>Just information</>
console.log(component({ }))                           // ❌ error
```

Our component can receive a string of markdown, which it will parse, or raw
copy, which it will not parse. Always just one, never neither.
