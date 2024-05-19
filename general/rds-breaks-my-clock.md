# RDS Breaks My Clock

When using radio, you might experience a strange phenomenon: the radio clock
refuses to stay correctly set. I saw this recently on a car stereo that
continued to reset its clock to an hour early for my timezone.

The culprit is a system called RDS, Radio Data System. RDS allows radio
transmitters to encode their program information, station identification,
and... the local time.

Though I didn't have a tool to debug the signal on hand, my theory is that a
local radio station was sending the incorrect time of 10:15 AM instead 11:15
AM. My car was read it and preferred this data. We live near the border of the
Atlantic timezone, so that's one reason an incorrect message could have been
sent. Disabling the RDS Clock Sync feature and setting the time correctly fixed
the issue.

