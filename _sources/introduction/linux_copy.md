# How do I make a copy of something?

There are times you will want to reuse something you have written before
or save a separate copy of an image so that you won't accidentally
delete or overwrite the file. What you want to do is make a *copy* of
something and we can use the copy command in Linux to complete this
task. I have put a copy of the course syllabus, syllabus.doc, in
/archive/valpo_courses/wxtech, copy it to your working directory or some
other directory within your file system, the command is `cp`. If you
wish to copy something between two different computers, then the command
is `scp`. An structure of a copy command is:

`kgoebber@bergeron:~> cp <filename 1> <filename 2>`

:::{note}
The above example is a generic version of copying a file where you would
need to input actual filenames and locations for a specific file that you
are looking to copy.
:::

A specific example may look something like:

`kgoebber@bergeron:~> cp /data/ldmdata/surface/sao/2023080312.wmo .`

*The "dot" at the end is **_very_** important*. That is telling the
system to copy the file from the location specified and put it in your
current working directory and call it the same thing. Of course, you can
change the name of the new, copied, file by replacing the "dot" with the
new name you want to give the file. (The above example is a case in
which we have used a relative path, you could do the same thing using an
absolute path, but it would just be more typing.) When copying a file you
make a second file that is an exact replica of the original file.

If you complete a copy command in your own directory and list the contents
of the directory you are working in you'll see the file that you copied to
your directory.
