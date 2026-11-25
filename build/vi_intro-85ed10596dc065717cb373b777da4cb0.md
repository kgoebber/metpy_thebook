# Editing Files in Linux

## Welcome to vi

So how do we modify or create a text file via the command line? From the
terminal you can create text files using a number of different programs,
however, I will be introducing you to one of the more basic programs.
You are free to use whatever text editor you wish; however, these labs
will use vi as that is what the instructors know well. So here are some
useful vi commands and features that are good to know if you choose to
use vi. (More info in the recommended textbook beginning on page 159.)

Let's open a new terminal and get to work. To open a new file or old
file type,

`vi <filename>` - opens the file in a vi editor, where `<filename>` is
the name of the file you wish to open, whether new or old.

`kgoebber@bergeron:~> vi test.txt`

The previous command will open the file `test.txt` using the Linux program
vi. In Linux the suffix (i.e., the stuff to the right of the "dot", such
as `.txt`) does not matter. They are informative only for you. The type of
file that it is, is set without adding a suffix, so you don't even need
one. However, I usually find that it is a good habit to put some
appropriate suffix on the file so that you can identify what the file is
without opening it!

There are two different modes in vi, *insert* mode and *command* mode.
When you open a file in vi you will ALWAYS be in *command* mode; there
are multiple ways to get into insert mode.

`i` -- will take you into insert mode wherever the cursor is.

`a` -- will put you into insert mode at the character after your current
  cursor placement.

`o` -- will put you into insert mode at the beginning of a new inserted
  line.

Other insert modes:

`R` -- the capital R is a replace mode and will write over the text
  underneath the cursor until you hit escape to get out of insert mode

`r` -- the little "r" is a replace mode for one character and after one
  character is input it will return to command mode

Once in insert mode, you can type in whatever you like. To get out of
insert mode simply hit the **escape key**. When you are in doubt of
whether or not you in insert mode or command mode hit the escape button
a couple of times. You can always re-enter insert mode with one of the
methods outlined above.

In command mode you can save and quit out of the program. Always need a
colon first.

`:w`-- write or saves the file with the filename initiated when vi was
launched

`:q` -- quits out of vi and takes you back to the unix shell

`:q!` -- quits without saving and takes you back to the unix shell

`:wq` -- writes and quits in sequence.

## Moving Around in vi

While in command mode:

`crtl-f` -- moves forward a page

`crtl-b` -- moves backward a page

`shift-G` -- will take you directly to the last line of the document

`1<shift-G>` -- will take you back to the first line (same as :1\<cr\>)

`shift-$` ­-- will take you to the end of the current cursor line

`shift-^` -- will take you to the beginning of the current cursor line

`yy` -- copy a line

`p` -- put copy or deleted line on the line after the current cursor
  location

`dd` -- deletes the current cursor line

`x` -- deletes current character

All of the previous commands can be used with a number in front, such as:

`25dd` -- will delete the next 25 lines including the line the cursor is on

## Searching around vi

`/<word>` -- searches forward for that word in the document

  * while searching use n to go to the next instance of the word for
  which you are searching

`:<line number>` -- will take you directly to that line number in the
document, if it exists

## Practice Tasks - vi

1.  Create a simple text file that outlines the process of making a
    surface map. Make sure to note some of the common mistakes that you
    make at various points in the process.

2.  Create a simple text file that contains your favorite Linux commands
    that you have used to this point and describe how each of them
    works.