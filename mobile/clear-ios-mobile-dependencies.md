# Clear iOS Mobile Dependencies

When working on a React Native app on the iOS side, switching between branches
with different dependencies can wreak havoc on your development environment. To
ensure they're you're running the right libraries, blow everything away and
start over:

```
rm -rf node_modules && yarn && (cd ios && pod deintegrate && pod install)
```

Replace `yarn` with `npm install` if you're using NPM.
