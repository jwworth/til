# Apply a Conditional Border Without Moving Element

When you allow a user's behavior to add or remove a border from an element,
that can cause the page to 'jump around' as the border is added or removed. A
common example is a border around an element that is 'selected'.

Fix this issue by adding a transparent border around the element and giving it
color when it's selected. No more jumps.

```css
.element {
  border: 1px solid transparent;
}

.selectedElement {
  border-color: $selected-color;
}
```
