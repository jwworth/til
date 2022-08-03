# Preserve Whitespace in CSS

Let's say you have a string evaluated into a HTML template that contains
newlines, like `"getting\n\things\ndone"` and you want those newlines to be
reflected in the presentation. Like this:

```
getting
things
done
```

We can solve this with the following CSS on the string's containing element:

```css
white-space: pre-wrap;
```

With `pre-wrap`, "[s]equences of white space are preserved. Lines are broken at
newline characters, at [breaks] and as necessary to fill line boxes."

[white-space docs](https://developer.mozilla.org/en-US/docs/Web/CSS/white-space)
