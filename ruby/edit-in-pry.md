# Edit in Pry

Here's a scenario: you're hacking on Ruby code in `pry`, and it's a mess.
Blocks chained on blocks, variables named `a` and `other_one`, assignments to
`_`.  You can understand it, but nobody else can, and one extra `}` breaks
everything.

The solution is the `edit` command. Typing `edit` in `pry` loads the current
buffer into your editor of choice. Jump in there and turn those inline blocks
into `do`/`end`, assign some variables, write a method: iterate on some quality
code in the comfortable, predictable setting of your text editor.
