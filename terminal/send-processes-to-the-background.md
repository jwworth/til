# Send Processes to the Background

Processes on any POSIX-compliant computer can be sent to the background with `CTRL-Z` (`<prefix> + Z` for the tmux-ers) and returned to the foreground with `fg`.

Here is an example:

```shell
user@computer:~% ping www.google.com
PING www.google.com (74.125.228.212): 56 data bytes
64 bytes from 74.125.228.212: icmp_seq=0 ttl=52 time=41.574 ms
64 bytes from 74.125.228.212: icmp_seq=1 ttl=52 time=42.836 ms
64 bytes from 74.125.228.212: icmp_seq=2 ttl=52 time=53.527 ms
^Z
zsh: suspended  ping www.google.com
user@computer:~% fg
[1]  + continued  ping www.google.com
64 bytes from 74.125.228.212: icmp_seq=3 ttl=52 time=42.433 ms
64 bytes from 74.125.228.212: icmp_seq=4 ttl=52 time=42.401 ms
64 bytes from 74.125.228.212: icmp_seq=5 ttl=52 time=42.837 ms
64 bytes from 74.125.228.212: icmp_seq=6 ttl=52 time=44.203 ms
^C
--- www.google.com ping statistics ---
7 packets transmitted, 7 packets received, 0.0% packet loss 
```
