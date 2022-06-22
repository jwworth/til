# Validate CircleCI Configuration Locally

The local environment is a great place to iterate on a CircleCI configuration.
You'll catch errors faster than pushing to CI, and help drive a fast, iterative
configuration process.

Install the [CircleCI CLI][cli] via Homebrew (or any package manager of your choice):

```
$ brew install circleci
```

Then, in the same directory as your `.circleci/config.yml`, run:

```
$ circleci config validate
# Config file at .circleci/config.yml is valid
```

[cli]: https://circleci.com/docs/2.0/local-cli
