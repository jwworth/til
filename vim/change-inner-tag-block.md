# Change Inner Tag Block

Vim has excellent commands for changing the contents of parentheses (`ci(`), brackets (`ci[`), and squiggly braces (`ci{`) (as well as single quotes, double quotes, backticks, etc.). But what about tags?

Place your cursor anywhere inside the tags, type `cit` in Visual mode, and this:

```haml
<div>Begone</div>
```

Becomes:

```haml
<div></div>
```

`d` works too, but I prefer `c` because it puts you in Insert mode at the end of the opening tag, ready to type.

Check out `:h v_it` for more information.

h/t Josh Branchaud
