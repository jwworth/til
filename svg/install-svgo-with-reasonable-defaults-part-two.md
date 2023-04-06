# Install SVGO With Reasonable Defaults, Part Two

We're back with another SVGO configuration you'll probably want: disabling ID
minification.

SVGO has a default plugin called `cleanupIds` that takes every ID in the SVG
(e.g. `clip0_506_1332`) and minifies it to `a`. This works okay until there are
two different SVG's on the page. When that happens, the ID's become invalid and
conflicting HTML and your images don't compose correctly.

Disable this in the SVGO config file:

```js
// svgo.config.js

module.exports = {
  plugins: [
    {
      name: 'preset-default',
      params: {
        overrides: {
          cleanupIds: false,
        },
      },
    },
  ],
};
```
