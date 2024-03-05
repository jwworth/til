# Re-render Child Component By Changing Key

Today I had a situation where I wanted a child component to re-render on
command. The solution I found was to to put a key on it, and then change the
key when the re-render is desired.

```tsx

const Parent = () => {
  const [childKey, setChildKey] = useState(0);

  const rerenderForm = () => {
    setChildKey(childKey + 1);
  }

  return (
    <>
      <button onClick={rerenderForm} type="button">Rerender the form!</button>
      <Form key={childKey} />
    </>
  )
}
```

In this example, which the button is clicked, our `childKey` is incremented. To
paraphrase the React docs, when the key changes, React "loses track" of the
form. And because of the new key, at the same time React sees a new form; a
re-render has occurred.

