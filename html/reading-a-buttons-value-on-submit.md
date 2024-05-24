# Reading a Button's Value on Submit 

Complex HTML forms often end up with multiple submit buttons. Consider a form
for taxes: there's a button to save a draft and another button to submit for
processing. They both trigger the submit action on the same form. How could we
accomplish this while keeping the buttons fairly simple?

One solution is to set the buttons' value:

```html
<form onsubmit={onSubmit}>
  <!-- Form fields here -->
  <input type="submit" value="save" />
  <input type="submit" value="submit" />
</form>
```

Then in the submit handler, we read the value.

```js
const onSubmit = (event) => {
  // Read the value
  const action = event.submitter.value;

  // Conditionally choose handler
  const handle = { save: handleSaveDraft, submit: handleSubmit }[action];

  // Handle!
  handle();
};
```

Value docs:
https://developer.mozilla.org/en-US/docs/Web/HTML/Element/input/button#value
