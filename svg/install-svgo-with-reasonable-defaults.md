# Install SVGO With Reasonable Defaults

A project I'm working on uses [SVGO][https://github.com/svg/svgo] to clean and
minify SVG files. There's one problem: SVGO by default removes the `viewBox`
attribute, which comes embedded in the SVG's I receive and have stylistic
meaning in my codebase.

You can override this default by using an SVGO config file:

```js
// svgo.config.js
module.exports = {
  plugins: [
    {
      name: 'preset-default',
      params: {
        overrides: {
          removeViewBox: false,
        },
      },
    },
  ],
};
```

Applied like so:

```
svgo --config svgo.config.js input.svg --output output.svg
```

This reduces my SVG's by about ~25%, without changing their presentation.
There's an issue on the SVGO repo where this default is discussed a length.
