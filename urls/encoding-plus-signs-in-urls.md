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
of pluses, i.e. `jake testing@example.com`. Per the [docs][docs]:

> Within the query string, the plus sign is reserved as shorthand notation for
> a space. Therefore, real plus signs must be encoded. This method was used to
> make query URIs easier to pass in systems which did not allow spaces.

[docs]: https://www.w3.org/Addressing/URL/4_URI_Recommentations.html#:~:text=Within%20the%20query%20string%2C%20the,plus%20signs%20must%20be%20encoded.
