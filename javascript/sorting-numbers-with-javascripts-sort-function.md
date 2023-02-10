# Sorting Numbers with JavaScript's sort Function

Today in "Let JavaScript Surprise You":

```js
let array = [1, 20, 11, 10, 7, 17, 2];
console.log(array.sort());

> [1, 10, 11, 17, 2, 20, 7]
```

😳 The numbers are not sorted as we might expect. What's going on here? From
Mozilla's [docs][sort]:

>  The default sort order is ascending, built upon converting the elements into
>  strings, then comparing their sequences of UTF-16 code units values.

Now this sorting makes sense! Luckily, `sort` accepts a function, so here's the sorting
we intended:

```js
const sortNumbers = (first, second) => first - second
console.log(array.sort(sortNumbers))

> [1, 2, 7, 10, 11, 17, 20]
```

[sort]: http://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/sort
