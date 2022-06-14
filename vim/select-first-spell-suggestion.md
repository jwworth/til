# Select First Spell Suggestion

I use Vim's spell feature when writing blog posts. Very often, the first
suggestion it makes is the one that I choose. Think of a work like 'Rubysit.'
My dictionary contains the word 'Rubyist' (naturally) and that's what spell
check is going to suggest to me first. For transposition errors like this I'd
like to skip the word picker as often as I can.

To automatically choose the first suggestion in normal mode, put your cursor
over the word and type `1z=`.

