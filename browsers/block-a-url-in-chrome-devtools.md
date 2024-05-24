# Block a URL in Chrome DevTools

I'm using a JavaScript text editor library and when it fails to load, there is
no form field on the page at all. While pondering that potential issue, I
learned how to block a URL in Chrome's DevTools.

There are a few way to do this; the most direct for me is:

- Open DevTools and the Network Tab
- Click "JS" and find the JavaScript file I want to block
- Right-click and choose "Block request URL" or "Block request domain"

Reload the page to see the result.
