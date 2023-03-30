### Clear React Router's Location State From the Console

The return of React Router's `useLocation` hook has a key called `state` which
contains values passed during a redirect or navigation. But where is that state
stored by the browser, and how do we clear it?

I found it in Chrome on `window.history.state`:

```javascript
> window.history.state
<
{
  "usr": {
    "pageTitle": "Redirected!"
  },
  "key": "31ytq582",
  "idx": 4
}
```

And cleared it using `replaceState`:

```javascript
> window.history.replaceState({}, '')
< undefined
> window.history.state
< {}
```

[Window.history docs](https://developer.mozilla.org/en-US/docs/Web/API/Window/history)
