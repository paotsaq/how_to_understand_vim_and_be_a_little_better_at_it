## I use Vim - and that's it? Here are a few tips.

Vim is nice. Some people like it, some don't; but those that don't probably are expecting different things from their text editor. So here I have some tips to maybe understand why Vim is so special. But you don't need to, like, understand it. Using whatever is fine. As long as you're happy. 🎈

### Why do you like it so much, Alex?

That is due to its powerful navigation, editing and automation capabilities. I'll give some examples below, but I just find it to be much faster, and it is usually available in many different environments. It does wonders in abstracting patterns in the code that will save you both time and keystrokes. As a consequence, I use the mouse less, and now I'm much more appreciative of keyboard navigation.

### What if my experience with vim was really traumatic? 😥 Like not even knowing how to leave the editor, or losing work because it has no proper _undo history_?

Oh — I'm very sorry about that, and maybe we can mend your relationship with this tool, if you're up for it ❤️‍🩹 in fact, it can be quite frustrating to drop into the world of vim without any proper context. It's like playing [Dwarf Fortress](http://www.bay12games.com/dwarves/) having come from 3D, latest generation games. Yikes! 😱

Here are some tips:

#### take it slow and easy! 🤸 

Vim is a bit dense at first, and it can get frustrating to work at a slower pace than you're used to — at the beginning. It's like learning to write with your other hand: you know _you're faster with your usual hand_, but you're also aware that _eventually_ you'll get it. There are probably better analogies. Just take a breather every once in a while.

#### check some youtube videos, or something

Just to make sure _you understand why vim is an option for some people_. And see what proper Vim usage can do. If it resonates with you, the added motivation will probably help you get farther, and be a little easier on yourself for not getting it right away 🫶 [here's a classic StackOverflow thread](https://stackoverflow.com/questions/1218390/what-is-your-most-productive-shortcut-with-vim/1220118#1220118) in which people discuss their most productive Vim workflows:

⚠️ **currently missing content on macros, which are very useful, and copy pasting across different files** ⚠️ 

#### do <code>vimtutor</code> on your terminal

This is a command you run in your shell, launching an interactive tutorial on basic Vim motions. With this, you should learn how to navigate the file using the proper movements. Ideally you would do half, practice a day or two, and then finish the other half.

#### here are some tips for efficient navigation. From broader to more particular instructions:
- <code>h, j, k, l</code> fine movements for small adjustments (if you do these motions **repeatedly**, odds are there was a more efficient way);
 - <code>G/gg</code> to reach the top and bottom of a page, respectively.
 - <code>ctrl + u/d</code> to scroll up or down a page;
 - <code>nG</code> jumps to the *n*th line;
    *or*
 - <code>[?/][pattern]</code> jumps [backwards/forward] to a specific *pattern*;
 - <code>f</code> *finds* a character - this is *immensely* useful - and then ``;`` jumps to the next occurence (``F``will lookup *backwards*);
 - <code>nw</code> jump to the *n*th word from where your cursor stands;
 - <code>$/^</code> jump to the beginning or end of line, respectively;
 
Thus, the general procedure should be to move with a major movement (a jump or a search), and then fine tune using word motions and then character motions.

#### Having the basic workflow to navigate around the code, now you can unlock some simple specific keybindings for insertion and editing:
 - <code>i</code> inserts text as cursor (I'd recommend avoiding this mode to navigate the text 😗). 
 - <code>a</code> appends (inserts) text *after* the cursor (instead of ``INSERT MODE`` to right arrow after a line break);
 - <code>x</code> deletes a character *under* the cursor (instead of ``INSERT MODE`` to backspace the text);
 - <code>r</code> replaces a character *under* the cursor (instead of ``INSERT MODE`` to backspace the text, and then rewrite);
 - <code>o</code> opens a line *below* the cursor (instead of ``INSERT MODE`` to press enter);

And don't let your future self be thrown off by this - but all of these commands have the UPPER CASE equivalent (``i`` becomes ``I``) which slightly (and most conveniently) modifies its behaviour. Try it out!

#### All that's missing is some major editing and navigation commands, and you're done. Select, copy and paste, right?
 - <code>y</code> *yanks* text - this is equivalent to *copying*;
 - <code>p</code> *puts* text - this is equivalent to *pasting*;
 - <code>d</code> *deletes* text; 
 - <code>c</code> *changes* text (deletes text, but also puts you on ``INSERT MODE``); 
 - <code>v</code> *selects* text;

#### Now, just learn about some major motions and you'll be fine. **This** is what Vim is all about, but I probably suck at explaining this part.

We can combine what we can think as *actions* (let's say, everything that was under heading number three) with motions (which we haven't really done yet). Practical example: suppose you have these rhymes in your file, and your cursor is at the beginning: ``M`` in Mary. 

*Mary had a little lamb,  
   Its fleece was white as snow*

We want to change ``little`` for, say, ``loving``. Consider ``f l cw loving ESC`` (with no spaces), which we will read as "*find ```l```; change word*", after which we input ``loving`` and then exit ``INSERT MODE``. That was nice!

Whenever you do *any* of ``d, c, v`` motions, you can use ``b, e, w`` (and some more to come) motions to specify *begin* or *end* of word ¹, or just the whole *word*. You might want, however, to change/delete/select - more generally, an *action* - up until a certain character. Suppose cursor at the beginning: ``d`` in ``def``. 

```python
def very_sexy_function(my_arg, another_arg):
    return "most_holyness_of_sexy_vim"
```

Now my boss just came into work; he sees me doing some silly powerful stuff in Python, and *of course* that function is sexy - but that is a very innapropriate behaviour in the workplace. I want to (most quickly!) change that!
 - <code>t/f</code> I don't really have good mnemonics for these (except *(un)til* for ``t``), but these are fundamental;
So then, one could do ``fs``, which reads as "*find `s`*", and then `ct_` ("*change (un)til underscore*") - which would now place the cursor under ``
INSERT MODE`` - and the name could now be ``very_appropriate_function`` instead.

```python
def very_appropriate_function(my_arg, another_arg):  
    return "most_holyness_of_sexy_vim"
```

All is good, except for the second line - our command didn't take care of that. However - and this is another very powerful command - all that's needed is ``jfs.``, where the ``.`` (dot) will **repeat your last action**. In this case, it will ``ct_`` on the line just below (we did ``j``).

#### There's more, but this is already too much information, and I want to go touch some grass 🌳

Here are some good resources to improve your Vim:
- DuckDuckGo: it's likely whatever problem you have, or feature you need implemented, is out there already — good luck in finding it out! 🔍 
- Vim Wiki: you will learn something on each visit. https://vim.fandom.com/wiki/
- **Mastering Vim Quickly: From WTF to OMG in no time** by Jovica Ilic: the title is a little over-the-top 😀 but the content is very good.

#### Regarding my (minimalistic) ``.vimrc``:

```vimscript
syntax on
filetype plugin on
filetype plugin indent on
set smartindent
set hlsearch
set showcmd
set laststatus=2
set statusline+=%F
```

These are almost obligatory. ``smartindent`` works really well for C (I mostly do that and Python), and ``hlsearch``is great to highlight matches on ``s``substitutions. ``showcmd`` is useful to show people some Vim tricks (the typed commands appear in the bottom right corner), and the last two lines just show the current file I am at.

``:set nu! rnu!"`` Some people like relative numbers (really useful to repeat macros across any given number of lines)

```
set undodir=~/.vim/undodir
set undofile 
```

This enables permanent undo history. It's curious how so many people don't ever care about enabling this — you can close the file, come back later, and your undo history _will be there_. It's so reassuring 💞

```
set foldenable 
set foldmethod=indent
```

Also obligatory. Sometimes you want an overview on the file without having to endlessly scroll through hundreds of lines of code. ``zc`` closes the current fold; ``zo`` will open it. ``C`` and `O` close and open *all* folds.

```let mapleader = " "
map <leader>b :buffers<CR>:buffer<Space>
```

Leader keys are a great concept in Vim. After you map a key as ``leader``, you can produce specific commands tailored to your own experience. This is an early experiment with that, since buffer management is not too intuitive. Now I press ``SPC b`` to see the list of open buffers. Real nice.

```
map <Down> <NOP>
map <Up> <NOP>
map <Left> <NOP>
map <Right> <NOP>
```

Deactivates the arrow keys. Useful if you're transitioning to ``hjkl``, but then you have to explain why your arrows do not work when other people work on your machine 🙃

¹ it's likely that you and Vim will disagree on the definition of *word*. Assume this_is_a_word, but this.is.not.a.word. So it will come with experience. 
