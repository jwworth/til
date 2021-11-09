# Ignore Rubocop Block Length Lint in RSpec

Linters are great, except when they aren't. One example is Rubocop's
`BlockLength` lint. For example, I don't care if my RSpec `describe` and
`context` blocks are too long. Nontrivial test blocks will never be short
enough to match a reasonable rule about blocks.

I've disabled this lint for these blocks with Rubocop's configuration file:

```
# .rubocop.yml
Metrics/BlockLength:
  IgnoredMethods: ['context', 'describe']
```

Opting out of just these blocks lets me enforce this rule everywhere else.
