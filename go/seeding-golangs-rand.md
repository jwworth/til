# Seeding Golang's Rand

'Random' numbers in Go don't always seem random. This is because the `rand` package defaults to a seed of 1.

That's great if you need a bunch of random numbers at the start of your program. Not great if you expect a different outcome each time you run the program.

A solution is to seed `rand` with Unix time. Try it in the `init()` function:

```go
package main

import (
    "math/rand"
    "time"
)

func init() {
    rand.Seed(time.Now().UTC().UnixNano())
}
...
```
