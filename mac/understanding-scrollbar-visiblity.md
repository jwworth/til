# Understanding Scrollbar Visibility

When doing web programming in a context where scroll might be expected, you may
see some surprising behavior in the scrollable HTML– an inexplicable gray bar
on the bottom or right of the element:

![scollbar-always](../images/scrollbar-always.png)

One culprit, on Mac, is the user's scrollbar setting.

As a UX and accessibility aid, Mac allows users to always show scrollbars when
they are available. Considering this feature as a programmer, you can make sure
you only offer scrolling when it makes sense, and educate users who don't know
they have this setting enabled.

See "Settings > Appearance > Show scroll bars" to see and adjust this setting.
