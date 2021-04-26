## I use Vim - and here's why you should use it too.

Either I am very wrong - as in, DuckDuckGo has been omitting critical results for the last couple of years - or, yes: **vim is the best text (code) editor out there**. And by a large margin.

### Why is it better?

That is due to its powerful navigation, editing and automation capabilities - it does wonders in abstracting patterns in the code that will save you both time and keystrokes. But Vim is also good just because the competition is *bad*. Text (code) editing has existed for more than 50 years now - an what has VSCode *really* done for you in terms of innovation or typing efficiency?

### Hey, man - you know nothing! Vim is ugly, and slow, and clunky. Plus it has no colors. And sometimes it won't let me use the mouse. I need the mouse. I like my text editors as I like my games: first person shooters.

[*"Your problem with Vim is that you don't grok vi."*](https://stackoverflow.com/questions/1218390/what-is-your-most-productive-shortcut-with-vim/1220118#1220118). There - I just sent you down a rabbitwhole from which you shall emerge a different person. But in case you don't really care for in-depth StackOverflow replies that *should* change your life, here's my take on whether Vim is:
 - **ugly**: no, *you are*. Vim is *barebones*, maybe. And Vim works in a command line. That is, at most, quirky. Never ugly;
 - **slow**: no - *all others are*. A good (or, mind you, just *decent* will do) understanding how Vim modes work, plus and a handful of shortcuts, will make your productivity skyrocket - you will type less and have more code done;
 - **clunky**: no - *only if you use it wrong*. It will certainly punish you for not looking out for help *if you feel you're not doing it right*. Be critical about your usage: *"is this the best way for me to handle this task?* If you repeatedly use the arrow keys to delete text: wrong. If you enter ``INSERT MODE`` to delete text: wrong. I will, later on, provide some more examples of clunkyness. Please bear with my ranting first.
 - **colors**: oh - it most definitely has colors.
 - **the mouse**: don't use it. Never ever. Mice are **not good**. Have the same attitude towards the computer mouse as you do with the *real* mice. Learn how to navigate the file directories using the shell; command line interfaces (CLI) over graphical user interfaces (GUI) generally yield more powerful tools. You do not need the mouse - the mouse was invented much later than computers. With basic knowledge of Vim, you can *select text* and *nagivate the code*. Isn't that what you're using the mouse for?

### I bet you're a no lifer anyway who's got no friends because all the efforts into nurturing and caring for a relationship go towards your stupid Vim.

I spend more time at the computer than I do with virtually any person *in my life*. It might not be healthy - but that's my job. So yes: I want Vim to be a lifelong companion that will make my life easier; at least, I need it to *actively avoid making my life miserable*. If you want to get better at Vim (and opening the possibility that you will *grok vi* sometime later), here are some tips:

0. do <code>vimtutor</code>. This is a command you run in your shell, launching an interactive tutorial on basic Vim motions. With this, you should learn how to navigate the file using the proper movements. Ideally you would do half, practice a day or two, and then finish the other half.

1. Do proper and efficient navigation. From broader to more particular instructions:
 - <code>G/gg</code> to reach the top and bottom of a page, respectively.
 - <code>ctrl + u/d</code> to scroll up or down a page;
 - <code>nG</code> jumps to the *n*th line;
    *or*
 - <code>[?/][pattern]</code> jumps [backwards/forward] to a specific *pattern*;
 - <code>f</code> *finds* a character - this is *immensely* useful - and then ``;`` jumps to the next occurence;
 - <code>nw</code> jump to the *n*th word in line;
 - <code>h, j, k, l</code> fine movements for small adjustments (if you repeat these motions, odds are there was a more efficient way);
Thus, the general procedure should be to move with a major movement (a jump or a search), and then fine tune using word motions and then character motions.

2. Having the basic workflow to navigate around the code, now you can unlock some simple specific keybindings for insertion and editing:
 - <code>i</code> inserts text as cursor - but you already knew that (except you most likely used it to navigate the text too - naughty!). 
 - <code>a</code> appends (inserts) text *after* the cursor (no more ``INSERT MODE`` to right arrow after a line break!);
 - <code>x</code> deletes a character *under* the cursor (no more ``INSERT MODE`` to backspace the text!);
 - <code>r</code> replaces a character *under* the cursor (no more ``INSERT MODE`` to backspace the text, and then rewrite!);
 - <code>o</code> opens a line *below* the cursor (no more ``INSERT MODE`` to press enter!);

And don't let your future self be thrown off by this - but all of these commands have the UPPER CASE equivalent (``i`` becomes ``I``) which slightly (and most conveniently) modifies its behaviour. Try it out!

3. All that's missing is some major editing and navigation commands, and you're done. Select, copy and paste, right?
 - <code>y</code> *yanks* text - this is equivalent to *copying*;
 - <code>p</code> *puts* text - this is equivalent to *pasting*;
 - <code>d</code> *deletes* text; 
 - <code>c</code> *changes* text (deletes text, but also puts you on ``INSERT MODE``); 
 - <code>v</code> *selects* text;

4. Now, just learn about some major motions and you'll be fine. **This** is what Vim is all about. I probably suck at explaining this.

You can (and should) combine what we can think as *actions* (let's say, everything that was under heading number three) with motions (which we haven't really done yet). Practical example: suppose you have these rhymes in your file, and your cursor is at the beginning: ``M`` in Mary. 

*Mary had a little lamb,
   Its fleece was white as snow*

We want to change ``little`` for, say, ``loving``. Past you would right key to oblivion, of course, and all in ``INSERT MODE``. Future you will, more efficiently, ``f l cw loving ESC`` (with no spaces), which we will read as "*find ```l```; change word*", after which we input ``loving`` and then exit ``INSERT MODE``. That was sexy.
Whenever you do *any* of ``d, c, v`` motions, you can use ``b, e, w`` (and some more to come) motions to specify *begin* or *end* of word, or just the whole *word*. Try it out.

*Mary had a loving lamb,
   Its fleece was white as snow*

You might want, however, to change/delete/select - more generally, an *action* up until a certain character. Suppose cursor at the beginning: ``d`` in ``def``. 

<code>
def very_sexy_function(my_arg, another_arg):
    return "most_holyness_of_sexy_vim"
</code>

Now my boss just came into work; he sees me doing some silly powerful stuff in Python and *of course* that function is sexy. But that is a very innapropriate behaviour in the workplace. I want to (most quickly!) change that!
 - <code>t/f</code> I don't really have good mnemonics for these (except *(un)til* for ``t``), but these are fundamental;


