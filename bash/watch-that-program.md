# Watch That Program

Have you ever been working in the terminal and found yourself repeating the same command many times? Delegate that work to the computer.

`watch` comes with Linux and can be installed on OSX via homebrew. It executes a program periodically, defaulting to every two seconds.

We used it today while writing a database backup script. Instead of checking our dump directory every time a cron job executed, we ran `watch ls`, and watched the script succeed or fail with live updates.

`man watch` for more information.
