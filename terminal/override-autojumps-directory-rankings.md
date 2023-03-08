# Override Autojump's Directory Rankings

[Autojump](https://github.com/wting/autojump) is my tool of choice for
navigating directories. If I enter the following into the terminal:

```
$ j til
```

Autojump will try to guess where I want to go among directories I've previously
visited. It uses a database of directories and their relative rankings to do
so.

But there's a problem! These day I only want to visit `~/oss/til`. In the past
I've visited `~/oss/hr-til` and `~/oss/tilex` hundreds of times. Autojump
always sends me there first. I don't want that!

```
$ j til
~/oss/hr-til
$ j til
~/oss/tilex
$ j til
~/oss/hr-til
```

After some source-diving I learned that Autojump stores this database on my
machine at `~/Library/autojump/autojump.txt`. There, I found that
`tilex` is ranked highly in several places, and `hr-til` is ranked twenty times
higher than the initial rating of 10. 

Manually changing those rankings back to the starting value or deleting the
entries entirely solves the issue. Now, Autojump goes where I want on the first
try:

```
$ j til
~/oss/til
```
