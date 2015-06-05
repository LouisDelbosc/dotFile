#Vim shortcut for NormalMode

It is important to know how to use vim and to remember the shortcut, but
to remember easily, you have to understand why are they like it and the logic behind them.

There are 3 kind of shortcut in normal mode.

##Changing mode

As vim is a modal text editor, you have to know how to switch to differents modes.
There is 4 mode in Vim or Vim-like editor (like neovim):
- insert mode
- normal mode
- command mode
- visual mode

Since now, <m> will mean this need a "movement shortcut".

###Every ---> Normal
From every mode, you can go to normal mode by pressing <ESC>

###Normal ---> Insert
Every capital shortcul have a upgraded effect but is similar to the non-capital shortcut

letter | meaning | execution
--- | --- | ---
a | **a**ppend | enter insert mode in the next character
A | **A**PPEND | enter insert mode in the last character of the line
i | **i**nsert | enter insert mode in the previous character
I | **I**NSERT | enter insert mode in the first character of the line
o | unknown | create a ligne below and enter insert mode
O | unknown | create a ligne over and enter insert mode
s | **s**uppr | suppr the character and enter insert mode
S | **S**UPPR | suppr the whole ligne and enter insert mode
c<m> | **c**hange or **c**orrect | delete the text between the cursor and the movement and enter insert mode
C | **C**HANGE or **C**ORRECT | same as S

As you can see, the capital shortcut are not so different from the original one but very efficient for some
From now, i won't tell you the capital version, figure it out by testing

###Normal ---> Command
just press **:**

###Normal ---> Visual
v ---- same behavior than using your mouse
V --- Same thing but select the whole line
<C-v> --- meaning ctrl-v --- can do visual block

##Moving

We will focus on normal mode from now. A particularity of Vim is it's moving shortcut.
You can move your cursor by typing some letter. Thoses shortcut are really useful since
it's use for some other commands

**hjkl** are like the arrow, you can use them if you want to not move your hands too much
To remember, which letter do what, think as **j like a arrow pointing to the ground**

###Word motion
letter | meaning | execution
--- | --- | ---
w | **w**ord | move to the begining next word (word are separeted by special character)
e | **e**nd | move to the end of the next word
b | **b**ack | move to the begining of the previous word
f<x> | **f**orward to <x> | move to the next <x>, for example f<a> move the cursor to the next **a**
gg | unknown | back to the begining of the file
G | unknown | go to the last line of the file
^ | none | move the cursor to the first character of the line
0 | 0 char | move to the begining of the line
$ | none | move to the end of the line

###Command using word motion
You can edit text in normal mode, but some command needs a motion part.
If you don't precise any motion, it generaly does it to the whole line.
To not precise any motion, put the same key (for example : dd or yy).

letter | meaning | execution
--- | --- | ---
d<m> | **d**elete | supress from the cursor to the motion move. Useful to know that **d** is like cut.
y<m> | **y**ank | copy from the cursor to the motion move.
/<w> | unknow | look for the next <w> (same as ctrl-f in broswer)

after using /<w> you can move to the same **n**ext word with **n**
You can type **dfa** to **d**elete the next **a** or **dFa** to delete the previous **a**.

##Command stand-alone
Some other command doesn't need any motion shortcut

letter | meaning | execution
--- | --- | ---
p | **p**aste | paste the string in buffer (by y<m> or d<m>)
u | **u**ndo | undo
<C-r> | ctrl-r for **r**edo | redo
zz | none | put the writing line in the screen center
ZZ | none | save and quit
q<r> | none | record to the <r> registery (in vim buffer) your typing until the next q
@<r> | look at <r> | redo the command use in the <r> buffer
x | none | suppress the character under the cursor


##Command mode

Here some useful command used in command mode:

letter | meaning | execution
--- | --- | ---
:e <path> | **e**dit | open the file in <path>
:w | **w**rite | save file
:q | **q**uit | close the file
:vs | **v**ertical **s**plit | create a vertical split window
:sp | **sp**lit | create an horizontal split window
:tabnew | useless | create an other tab
:<s>s/oldWord/newWord(/g) | **s**tring and **g**lobal | change your old world in the new one, g for doing it for all the oldWord in the line

<s> ={ numberA, numberB | % }
the first <s> is for setting a range, and % for the whole document
if no <s> then it's doing it for the line the cursor is only.
example : :21,45s/yoyo/jaja will change the first yoyo of each line in jaja
if you put /g at the end, it will change each yoyo in each line in jaja

##Playing with tab and split

In normal mode:
<C-w> is use to change split so :
if you want to go the the right one you do <C-w>l (because l is to move you cursor to the right)
It is the same for each direction
No direction (ie <C-w><c-w>) is also moving you to the next split the computer choose

To change tab, it's :tabnext

##.vimrc or .nvimrc

You can change your setting in your vimrc ou nvimrc.
For example : 
nmap <Tab>l :tabnext<CR>
This line is saying : In normal mode (nmap) <Tab>l is going to do :tabnext and return(<CR>)

You can check a [video explaining](https://www.youtube.com/watch?v=2pqipq-UEwQ&list=UUjQf8LEWmpFODrRztDZfB0w&index=2) how to customize your .nvimrc

Hope it will help you learning faster !!
