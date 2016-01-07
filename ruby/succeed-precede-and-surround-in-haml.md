# Succeed, Precede, and Surround in Haml

Haml's design makes HTML and Ruby tricky to mix inline. But we have Haml helper methods to make it easier.

Here is `succeed` in action:

```haml
Developer at
  = succeed ', ' do
    = link_to "Hashrocket", "https://hashrocket.com/"
```

This becomes:

```html
Developer at
<a href="https://hashrocket.com/">Hashrocket</a>,
```

Notice the comma at the end, outside of the `a` tag?

`precede` and `surround` work in a similar fashion, and do what we'd expect.

http://haml.info/docs/yardoc/file.REFERENCE.html#succeed
