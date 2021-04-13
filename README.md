## I use Vim - and here's why you should use it too.

Either I am very wrong - as in, DuckDuckGo has been omitting critical results for the last couple of years - or, yes: **vim is the best text (code) editor out there**. And by a large margin.

### Why is it better?

That is due to its powerful editing and navigation capabilities. But also to the competition being *bad*. Text (code) editing has existed for more than 50 years now - what has VSCode really done for you in terms of innovation or typing efficiency?

### You know nothing! Vim is ugly and slow and clunky. Plus it has no colors. And sometimes it won't let me use the mouse. I need the mouse. I like my text editors as I like my games: first person shooters.

[**"Your problem with Vim is that you don't grok vi."**](https://stackoverflow.com/questions/1218390/what-is-your-most-productive-shortcut-with-vim/1220118#1220118). There - I just sent you down through a rabbitwhole from which you shall emerge a different person. But in case you don't really care for in-depth StackOverflow replies that *should* change your life, here's my take on where Vim is:
 - **ugly**: no, *you are*. Vim is *barebones*, maybe. Never ugly;
 - **slow**: no - *all others are*. A good (or, mind you, just *decent* will do) understanding how Vim modes work, and a handful of shortcuts, will make your productivity skyrocket;
 - **clunky**: no - *only if you use it wrong*. It will certainly punish you for not looking out for help *if you feel you're not doing it right*. Be critical about your usage: *"is this the best way for me to handle this task?* I will, later on, provide some examples of clunkyness. Please bear with my ranting first.
 - **colors**: oh it definitely has colors.
 - **the mouse**: don't use it. Never ever. Mouses are **not good**. Learn how to navigate the file directories using the shell; command line interfaces (CLI) over graphical user interfaces (GUI) generally yield more powerful tools. You do not need the mouse - the mouse was invented much later than computers. With basic knowledge of Vim, you can *select text* and *nagivate the code*. Isn't that what you're using the mouse for?

### I bet you're a no lifer anyway who's got no friends because all the efforts into nurturing and caring for a relationship go towards your stupid Vim.

I spend more time at the computer than I do with virtually any person *in my life*. It might not be healthy - but that's my job. So yes: I want Vim to be a lifelong companion that will make my life easier; at least, I need it to *actively avoid making my life miserable*. If you want to get better at Vim (and opening the possibility that you will *grok vi* sometime later), here are some tips:

1. do <code>vimtutor</code>. This is a command you run in your shell, launching an interactive tutorial on basic Vim motions. With this, you should learn how to navigate the file using the proper movements. 
2. Do proper and efficient navigation. From broader to more particular application:
 - <code>nG</code> jumps to the ``n``th line;
    *or*
 - <code>[?/][pattern]</code> jumps [backwards/forward]  to a specific ``pattern``
 - <code>nw</code> jump to the ``n``th word in line;
 - <code>h, j, k, l</code> fine movements for small adjustments;
    Thus, the general procedure should be to move with a major movement (a jump or a search)
