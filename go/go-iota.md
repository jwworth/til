# Go iota

Go has an interesting feature called `iota`. When declaring a list of constants, this keyword represents successive untyped integer constants.

```go
const (
	foo = iota  // foo == 0
	bar = iota  // bar == 1
	baz = iota  // baz == 2
)
```

Anytime `const` is invoked, the counter resets.

```go
const foo = iota  // foo == 0
const bar = iota  // bar == 0
```

This is a cool way to quickly define a list of integer constants, such as 'true' and 'false', for later use.
