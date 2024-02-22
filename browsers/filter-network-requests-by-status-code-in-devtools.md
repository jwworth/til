# Filter Network Requests By Status Code in DevTools

The Chrome DevTools Network Tab is incredibly useful for frontend web
development, but it can be noisy.

Perhaps you'd like to filter it down by HTTP status code? See only redirects,
so you can fix routes?  Or only successful requests, so you can know what's
working?

The Network Tab supports this. Here's a filter to just temporary redirects:

```
status-code:307
```

