### Encoding Plus Signs in URLS

If you're creating a hyperlink with query params, and those param values
can have plus signs, it's important to encode them values. We do this with
`encodeURIComponent`:

```js
const email = `jake+testing@example.com`
const loginLink = `https://example.com/login?email=${encodeURIComponent(email)}`

window.open(loginLink)
```

If you skip this step and try to read the query parameters received by
'example.com' your email param value may be interpreted as with spaces instead
of pluses, i.e. `jake testing@example.com`.
