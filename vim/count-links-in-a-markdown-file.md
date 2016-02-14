# Count Links in a Markdown File

Today I learned a great way to count the links in a README or link collection. Vim Regex!

```
:%s/- \[//n
```

In Vimspeak:

> On every line, find all of the times where '- [' (the beginning of a Markdown
> bulleted hyperlink), count them, and report the number of matches.

See `:help subtitute` in Vim for more information.

h/t Josh Branchaud
