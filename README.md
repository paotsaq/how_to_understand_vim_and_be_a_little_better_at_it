## I use Vim - and here's why you should use it too.

Either I am very wrong - as in, DuckDuckGo 🦆 has been omitting critical results for the last couple of years - or, yes: **vim is the best text (code) editor out there**. And by a large margin.

### Why is it better?

That is due to its powerful navigation, editing and automation capabilities - it does wonders in abstracting patterns in the code that will save you both time and keystrokes. But Vim is also good just because the competition is *bad*. Text (code) editing has existed for more than 50 years now - an what has VSCode *really* done for you in terms of innovation or typing efficiency?

### Hey, man - you know nothing! Vim is ugly, and slow, and clunky 😠 Plus it has no colors. And sometimes it won't let me use the mouse. I need the mouse. I like my text editors as I like my games: first person shooters 🔫

[*"Your problem with Vim is that you don't grok vi."*](https://stackoverflow.com/questions/1218390/what-is-your-most-productive-shortcut-with-vim/1220118#1220118). There - I just sent you down a rabbitwhole from which you shall emerge a different person. But in case you don't really care for in-depth StackOverflow replies that *should* change your life, here's my take on whether Vim is:
 - **👹 ugly**: no, *you are*. Vim is *barebones*, maybe. And Vim works in a command line. That is, at most, quirky. Never ugly;
 - **😴 slow**: no - *all others are*. A good (or, mind you, just *decent* will do) understanding how Vim modes work, plus and a handful of shortcuts, will make your productivity skyrocket - you will type less and have more code done;
 - **🛠 clunky**: no - *only if you use it wrong*. It will certainly punish you for not looking out for help *if you feel you're not doing it right*. Be critical about your usage: *"is this the best way for me to handle this task?* If you repeatedly use the arrow keys to delete text: wrong. If you enter ``INSERT MODE`` to delete text: wrong. I will, later on, provide some more examples of clunkyness. Please bear with my ranting first.
 - **🌈 colors**: oh - it most definitely has colors.
 - **🐁 the mouse**: don't use it. Never ever. Mice are **not good**. Have the same attitude towards the computer mouse as you do with the *real* mice. Learn how to navigate the file directories using the shell; command line interfaces (CLI) over graphical user interfaces (GUI) generally yield more powerful tools. You do not need the mouse - the mouse was invented much later than computers. With basic knowledge of Vim, you can *select text* and *nagivate the code*. Isn't that what you're using the mouse for?

### I bet you're a no lifer anyway who's got no friends because all the efforts into nurturing and caring for a relationship go towards your stupid Vim.

I spend more time at the computer than I do with virtually any person *in my life*. It might not be healthy - but that's my job. So yes: I want Vim to be a lifelong companion that will make my life easier; at least, I need it to *actively avoid making my life miserable*. If you want to get better at Vim (and opening the possibility that you will *grok vi* sometime later), here are some tips:

#### do <code>vimtutor</code>.
This is a command you run in your shell, launching an interactive tutorial on basic Vim motions. With this, you should learn how to navigate the file using the proper movements. Ideally you would do half, practice a day or two, and then finish the other half.

#### Do proper and efficient navigation. From broader to more particular instructions:
 - <code>G/gg</code> to reach the top and bottom of a page, respectively.
 - <code>ctrl + u/d</code> to scroll up or down a page;
 - <code>nG</code> jumps to the *n*th line;
    *or*
 - <code>[?/][pattern]</code> jumps [backwards/forward] to a specific *pattern*;
 - <code>f</code> *finds* a character - this is *immensely* useful - and then ``;`` jumps to the next occurence (``F``will lookup *backwards*);
 - <code>nw</code> jump to the *n*th word in line;
 - <code>$/^</code> jump to the beginning or end of line, respectively;
 - <code>h, j, k, l</code> fine movements for small adjustments (if you do these motions **repeatedly**, odds are there was a more efficient way);
Thus, the general procedure should be to move with a major movement (a jump or a search), and then fine tune using word motions and then character motions.

#### Having the basic workflow to navigate around the code, now you can unlock some simple specific keybindings for insertion and editing:
 - <code>i</code> inserts text as cursor - but you already knew that (except you most likely used it to navigate the text too - naughty!). 
 - <code>a</code> appends (inserts) text *after* the cursor (no more ``INSERT MODE`` to right arrow after a line break!);
 - <code>x</code> deletes a character *under* the cursor (no more ``INSERT MODE`` to backspace the text!);
 - <code>r</code> replaces a character *under* the cursor (no more ``INSERT MODE`` to backspace the text, and then rewrite!);
 - <code>o</code> opens a line *below* the cursor (no more ``INSERT MODE`` to press enter!);

And don't let your future self be thrown off by this - but all of these commands have the UPPER CASE equivalent (``i`` becomes ``I``) which slightly (and most conveniently) modifies its behaviour. Try it out!

#### All that's missing is some major editing and navigation commands, and you're done. Select, copy and paste, right?
 - <code>y</code> *yanks* text - this is equivalent to *copying*;
 - <code>p</code> *puts* text - this is equivalent to *pasting*;
 - <code>d</code> *deletes* text; 
 - <code>c</code> *changes* text (deletes text, but also puts you on ``INSERT MODE``); 
 - <code>v</code> *selects* text;

#### Now, just learn about some major motions and you'll be fine. **This** is what Vim is all about, but I probably suck at explaining this part.

You can (and **should**) combine what we can think as *actions* (let's say, everything that was under heading number three) with motions (which we haven't really done yet). Practical example: suppose you have these rhymes in your file, and your cursor is at the beginning: ``M`` in Mary. 

*Mary had a little lamb,
   Its fleece was white as snow*

We want to change ``little`` for, say, ``loving``. The past you would right key to oblivion, of course, and all in ``INSERT MODE``; but future you will, more efficiently, ``f l cw loving ESC`` (with no spaces), which we will read as "*find ```l```; change word*", after which we input ``loving`` and then exit ``INSERT MODE``. That was sexy.
Whenever you do *any* of ``d, c, v`` motions, you can use ``b, e, w`` (and some more to come) motions to specify *begin* or *end* of word ¹, or just the whole *word*. You might want, however, to change/delete/select - more generally, an *action* - up until a certain character. Suppose cursor at the beginning: ``d`` in ``def``. 

<code>
def very_sexy_function(my_arg, another_arg):
    return "most_holyness_of_sexy_vim"
</code>

Now my boss just came into work; he sees me doing some silly powerful stuff in Python, and *of course* that function is sexy - but that is a very innapropriate behaviour in the workplace. I want to (most quickly!) change that!
 - <code>t/f</code> I don't really have good mnemonics for these (except *(un)til* for ``t``), but these are fundamental;
So then, one could do ``fs``, which reads as "*find `s`*", and then `ct_` ("*change (un)til underscore*") - which would now place the cursor under ``
INSERT MODE`` - and the name could now be ``very_appropriate_function`` instead.

<code>
def very_appropriate_function(my_arg, another_arg):
    return "most_holyness_of_sexy_vim"
</code>

All is good, except for the second line - our command didn't take care of that. However - and this is another very powerful command - all that's needed is ``jfs.``, where the ``.`` (dot) will **repeat your last action**. In this case, it will ``ct_`` on the line just below (we did ``j``).

#### There's more, but this is already too much information, and it's likely that I lost you halfway for VSCode anyway.

Here are some good resources to improve your Vim:
- DuckDuckGo: it's likely whatever problem you have, or feature you need implemented, is out there already. Look for it.
- Vim Wiki: you will learn something on each visit. https://vim.fandom.com/wiki/
- **Mastering Vim Quickly: From WTF to OMG in no time** by Jovica Ilic: the title is a little over-the-top (not that you're not used to that, right?) but the content is very good.

#### Regarding my (minimalistic) ``.vimrc``:

``syntax on
filetype plugin on
filetype plugin indent on
set smartindent
set hlsearch
set showcmd
set laststatus=2
set statusline+=%F
``

These are obligatory. ``smartindent`` works really well for C (I mostly do that and Python), and ``hlsearch``is great to highlight matches on ``s``substitutions. ``showcmd`` is useful to show people some Vim tricks (the typed commands appear in the bottom right corner), and the last two lines just show the current file I am at.

``:set nu! rnu!"`` Some people like relative numbers (really useful to repeat macros across any given number of lines)

``set undodir=~/.vim/undodir
set undofile ``

I honestly don't get how some people use Vim on a daily basis without ever wondering *why the fuck doesn't it have permanent undo history by default*. Use this. 

```
set foldenable 
set foldmethod=indent
```

Also obligatory. Sometimes you want an overview on the file without having to endlessly scroll through hundreds of lines of code. ``zc`` closes the current fold; ``zo`` will open it. ``C`` and `O` close and open *all* folds.

``let mapleader = " "
map <leader>b :buffers<CR>:buffer<Space>``

Leader keys are a great concept in Vim. After you map a key as ``leader``, you can produce specific commands tailored to your own experience. This is an early experiment with that, since buffer management is not too intuitive. Now I press ``SPC b`` to see the list of open buffers. Real nice.

``map <Down> <NOP>
map <Up> <NOP>
map <Left> <NOP>
map <Right> <NOP>``

Deactivates the arrow keys. Useful if you're transitioning to ``hjkl`` and also if you want to be an ass when people come over to your computer.

``command! MakeTags !ctags -R.``

This emulates a much needed feature when working with big projects. After you do ``MakeTags``, Vim will generate a ``tags`` folder that includes all the function definitions and what not. From there, you can ``ctrl + ]`` on any function declaration to jump to its definition. ``gt`` lets you come back to the previous file.

¹ it's likely that you and Vim will disagree on the definition of *word*. Assume this_is_a_word, but this.is.not.a.word. So it will come with experience. 
