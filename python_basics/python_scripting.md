# Python Script

A Python script is essentially a list of statements entered into a text
file that will be executed by the Python interpreter in the order in
which they are written in the file. A key benefit of using a script is
to define variables and not having to type them out every time that you
want to perform a series of tasks to create a desired output in a
notebook environment.

It is relatively easy to use some Python scripting to ease various
tasks, including map making. During this section we will see how you can
turn a notebook file into a script to make it easier to reproduce the
desired output with less effort than opening a notebook file and running
all of the cells.

## Hello World Script

Let's start very simply by creating a simple Python script that prints
the statement 'Hello World!'!

Open a new file using vi by typing the following in a new terminal
window:

`kgoebber@bergeron:~> vi script1.py`

Now add the following code to your script, save the output, and quit the
file.

```python
# Print the following statement to standard output

print('Hello World')
```

Once you are back at the terminal prompt we now want to run our script.
To run a python script we want to run our file through the Python
interpreter which we can do by typing the following in the terminal:

kgoebber\@bergeron:\~\> python script1.py

The output should be:

`Hello World!`

And that's it! You just wrote and ran your first Python script!

Now let's develop a bit more into a simple script.

## Building a full Python script

Open a new text file from the terminal window (or the terminal from the
Jupyter Lab Launcher window) using vi (or any other text editing tool you
might know) and call it ***my_script.py***. Once the new file is open the
first thing you will want to add some lines that describe the script and
what it does. This is called a comment block. Recall that a comment in Python
code begins with the pound (hashtag) sign (`#`). You may add something like
the following for your initial comment block:

```python
############################################################
# my_script.py
# By: Kevin Goebbert
#
# This is a simple test script. It uses basic
# Python datetime commands to do a few simple
# tasks.
#
# Modifications:
#
############################################################
```

All of the previous is just for your information, so that you can
quickly understand what you were trying to do with this particular
script. Now let's add something to the script to make it do something!

```python
from datetime import datetime

# This is a comment and not executed

print("Hello, this is my first script.")

# Get current time from computer

now = datetime.now()

print(f"The current time is {now}")

# Get current time in UTC from computer

now_utc = datetime.utcnow()

print(f"The current time in UTC is {now_utc}")

print(f"The current month is {now_utc:%B}")

print("All done")
```

After you enter all of the above, *write the file and quit* to get back
to your command prompt.


```{note}
Be careful with all of these quote marks. Be sure to have balance
single/double quotes. If in one of the print statements we need to use
nested quote marks. It doesn't matter which is used
where, just that you use different ones within the nest from what was used
on the outer quote marks.
```

Again, recall that in order to execute a Python script, type the
following on your terminal window at the command prompt

`kgoebber@bergeron:~> python <yourfile>`

where `<yourfile>` in this name that you gave to your script file (e.g.,
*`example_script.py`*). Go ahead and run the file.

What happened? Run it again, did anything change?
