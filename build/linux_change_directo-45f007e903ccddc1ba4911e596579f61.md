# How do I move to another directory?

Now let's move around the file system a little. If we want to move to a
new directory there are two ways to do this: we can use the absolute
path to where we wish to go, or we can navigate around by using relative
paths.

Before we can even navigate around, we need to know what command will
allow us to change to a new directory. In Linux parlance we will want to
change directory. To do this we use `cd`. Change to the Download
directory.

`kgoebber@bergeron:~> cd wxtech`

Now show the working directory and list the contents of this directory,
use the `-a` option for listing.

From the listing in the "wxtech" directory you should notice that there
are two relative paths that are contained in this (and every) directory.
These two relative paths are `.` and `..`. The `.` always
refers to the directory that you are currently working in. The `..`
refers to the directory immediately above the one you are working in.
This is often referred to as the **parent directory**.

So, to go back to your home directory you only have to go back one
directory:

`kgoebber@bergeron:~> cd ..`

Print your working directory to confirm that you are in fact back at
home.

There are also a few directories that are mounted to each machine that
can also be accessed. One of the things that we will be doing in the
terminal is running various weather programs to create and analyze
various weather charts. So where is weather data located on the Bergeron
computer system? The location is `/data/ldmdata/`, go to this location
now.

:::{note}
This brings me to an interesting dilemma. What are data?
In science, the term data implies fact. In meteorology, we have very
little fact. The facts we do have are observations. Thus, in
meteorology, the only thing we should call **data** are observations. A
lot of people like to look at meteorology computer models and say they
are looking at model data. As we have just covered, this is a misnomer.
Models do not produce **data**. The correct term for this is **model
output**. In fact, **data is what we put into models and the models then
produce a forecast -- which is called model output.**
:::

Take a look around this directory. Go into other directories, list the
contents, see what is there and how it is organized.

Let's go back to our home directories. There are at least three
different ways to do this in one command (many more if we only move one
directory at a time). One way is to use the **absolute path**. The other
two ways use various **relative paths**.

> `cd /home/kgoebber` (absolute path)
>
> `cd ~` (relative path)
>
> `cd` (relative path)

The first two are fairly simple to understand. The last one may cause
some problems (if you just look at it). The reason the last one works is
that if you were to just type `cd` and hit enter you will always be
taken back to your home directory. Think of the last command as if you
were in the "Wizard of Oz", "It is your Ruby Red Slippers. It always
takes you home."

Go back to your home directory through your favorite method described
above.
