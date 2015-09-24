# Build URLs with Window Location

Want to build URLs with JavaScript? Try the`window.location` object.

This came from a React.js project we're working on. It uses ES6 template string interpolation, which isn't necessary but definitely is nice:

```
`${window.location.protocol}//${window.location.host}/posts/${this.props.postID}/edit`
```

Which becomes:

```
"https://secret-project.com/posts/42/edit"
```
