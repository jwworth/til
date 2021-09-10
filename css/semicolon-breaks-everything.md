### Semicolon Breaks Everything

"Select isn't broken." If you're working on a CSS file, and none of your
changes are being applied, check for typos, crashed servers, misplaced files,
etc. Once you've ruled out simple mistakes, you might have a syntax error like
this:

```css
.klass {
  opacity: 0.5;
};
```

The trailing semicolon is incorrect, and none of the CSS below it can be
understood by the browser.

Change this to:

```css
.klass {
  opacity: 0.5;
}
```

There may be some environments where a broken CSS file fails loudly; Code
Sandbox or Codepens are not among them. If you're changing CSS and nothing is
happening, start looking for syntax errors.

https://stackoverflow.com/a/69121031/2112512
