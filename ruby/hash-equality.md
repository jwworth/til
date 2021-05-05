# Hash Equality

Ruby's 'principle of least surprise' strikes me again. From the docs:

> Equality— Two hashes are equal if they each contain the same number of keys
and if each key-value pair is equal to (according to `Object#==`) the
corresponding elements in the other hash.

An example:

```
hash = { 7 => 35, "c" => 2, "a" => 1 }
doppelganger = { "a" => 1, "c" => 2, 7 => 35 }
hash == doppelganger  #=> true
```
