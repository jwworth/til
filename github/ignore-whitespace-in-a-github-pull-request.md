# Ignore Whitespace in a GitHub Pull Request

Reviewing a GitHub PR on that contains a lot of whitespace changes? Extra
whitespace can make it challenging to evaluate the substance of a PR. It's
high on my list of things that should generally [not be refactored][refactor].
Ignore whitespace by adding the query parameter `?w=1` to your diff URL.

[refactor]: https://jakeworth.com/when-should-i-not-refactor/

