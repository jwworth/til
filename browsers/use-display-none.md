# Use Display None

I recently delivered a form that was hidden via CSS, using the BassCSS
[`hide`](https://basscss.com/#accessible-hide) class, and encountered an issue:
iOS customers' browsers were and trying to autofill this hidden form with their
saved passwords. What was going on here?

`hide` it imparts these styles on its target in my Chrome:

```
.hide {
  position: absolute !important;
  height: 1px;
  width: 1px;
  overflow: hidden;
  clip: rect(1px,1px,1px,1px);
}
```

This worked visually, but it didn't hide the form from iOS. Browsing the
BassCSS docs, I learned that this is an 'accessible' hide, meant to visually
hide an element from view but keep it available to screen readers. No wonder
iOS was confused.

If you're hiding something with CSS, use `display: none`. BassCSS gives us a
`display-none` class to preserve our utility-first design:

```
.display-none {
  display: none !important;
}
```
