# Edit in Pry

Here's a scenario: you're hacking on Ruby code in `pry`, and it's a mess. You
have block chained on blocks, variables named `a` and `o`, assignments to `_`.
You can read it, but nobody else can, and one missing `}` breaks everything.

The solution is the `edit` command. Typing `edit` in `pry` loads the current
buffer into your editor of choice. Jump in there and turn those inline blocks
into `do`/`end`, assign some variables, write a method: iterate on some quality
code in the comfortable, predictable setting of your text editor.
