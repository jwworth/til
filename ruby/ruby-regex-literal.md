# Ruby Regex Literal

Ruby has a nice percent string literal for regular expressions, `%r`. It's like `//` but allows your regex to contain backslashes without escaping them.

Check it out:

```
2.1.0 :001 > 'http://google.com'.gsub(/http:\/\/google.com/, 'fine')
 => "fine"
2.1.0 :002 > 'http://google.com'.gsub(%r{http://google.com}, 'better')
 => "better"
```

As the example implies, this is useful when matching URLs.

[Documentation](http://ruby-doc.org/core-2.2.3/doc/syntax/literals_rdoc.html#label-Percent+Strings)
