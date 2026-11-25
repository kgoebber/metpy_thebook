# Hypertext Markup Language (HTML)

How do we go about disseminating meteorological information? Well, there
are actually a number of different mechanisms to do so including,
television, radio, newspaper, fax machine, and the Internet. Since the
advent of the Internet, dissemination of all types of meteorological
information has gotten easier. Previously, difax (digital fax) maps were
the primary mechanism to view weather data. We used to hang maps on the
wall; it was a legacy from the era before high-speed Internet. With the
Internet we can post many more images than what would be transmitted via
fax, in a better quality, with color! So it is important to know at
least the very basics of how to construct a simple html page and putting
images and text on them for public consumption.

As part of your account on bergeron and us placing an Apache server on
it, you all have the ability to create a public html page. This page
should only be used for generally meteorological purposes and we'll use
it for the remainder of the semester for our assignments and the
semester project. First, we need to get everyone started, so we will
make a simple webpage using the tag language of html. You'll be
introduced to the most common tags that are used in creating an html
page. You can create a webpage through other means, such as PHP, but we
will keep it to the basics here.

:::{note}
The following commands are going to be different depending on how and where
you are creating a website. The HTML tags are applicable across systems. So
you may need to create any HTML pages in a different location/manner, but
the contents of a simple example webpage would be the same.
:::

## Step 1: Creating your homepage

The next step is to create an index file. Your homepage is the
index.html file.

Go into your web directory:

`kgoebber@bergeron:~> cd public_html\`

Use vi to edit a file called index.html. Even though this file does not
exist, editing it will create the file. To edit the file type:

`kgoebber@bergeron:~> vi index.html`

## Step 2: HTML document essentials

HTML uses a series of "tags" or "switches" as programming code.
Anything in between the tags will be displayed as text on the webpage.
The text is modified depending on which tags are used. Tags are
designated by being surrounded by `<` and `>` (for a start of a tag) and
`</tag>` (for the end of a tag). For example, the tag for bold is
`<B>`. To make the word "Hello" in bold on your webpage, you would enter
the following code:

```html
<B>Hello</B>
```

This code would display **Hello**. Notice how the start and end of a tag
are different.

Any webpage must have, in the very least, the following code. Think of
these tags as a basic skeleton that must go into all HTML files. Go
ahead and write this into your index.html file:

```html
<HTML>
<HEAD>
<TITLE>This is the page title</TITLE>
</HEAD>
<BODY>
</BODY>
</HTML>
```

Be sure to save your work often!

## Step 3: Other important HTML tags

The `<TITLE>` tag designates the title of the webpage that is displayed
at the top of the web browser. Go ahead and change this to what you
would like.

Everything that is displayed in the main part of the webpage is
contained within the `<BODY>` tag.

Go ahead and type some text after the `<BODY>` tag such as "Hello,
welcome to my homepage!"

HTML does not recognize hitting the Enter key as a carriage return
regardless of what it looks like on screen. A carriage return is
designated by the code `<BR>`, which stands for Break. Note: There is no
`<BR>` for this tag.

Go ahead and put two carriage returns in your code.

Your code should now look like this:

```html
<HTML>
<HEAD>
<TITLE>My Homepage</TITLE>
</HEAD>
<BODY>
Hello, welcome to my homepage! <BR><BR>
</BODY>
</HTML>
```

**Step 4: Other HTML tags**

To make a link to another webpage or a file that is contained in the web
space, the `<A HREF>` command is used. In order to close this tag, use
`</A>`. Here is a sample statement:

```html
Here is a link to <A HREF="ca5.html">Computer Assignment #5</A>.
```

This code would look like the following in a web browser:

Here is a link to [Computer Assignment #5](http://bergeron.valpo.edu/~kgoebber/ca5.html).

Notice how the "linked" text to ca5.html was the text surrounded by
the tags.

If the link were to a file or webpage not in your web directory (say to
the NWS homepage), your code would look like this:

```html
Here is a link to the <A HREF="http://www.weather.gov">National Weather Service</A>.
```

This code would look like the following in a web browser:

Here is a link to the [National Weather Service](https://www.weather.gov).

Notice how the reference inside the quotation marks is the same as what
you would type into an address bar of a web browser.

Go ahead and type that code into your sample webpage. Your final code
should now look like this

```html
<HTML>
<HEAD>
<TITLE>My Homepage</TITLE>
</HEAD>
<BODY>
Hello, welcome to my homepage! <BR><BR>
Here is a link to the <A HREF="http://www.nws.noaa.gov">National Weather Service</A>.
</BODY>
</HTML>
```

Another important tag is the image tag, which allows you to place images
on your webpage. The image tag is ```<img src="sfc_1.gif">``` if the
`sfc_1.gif` image is in the same folder as the html file. But a more
robust method is to put the entire url as the image source as follows:

```html
<img src="http://bergeron.valpo.edu/~kgoebber/sfc_1.gif">
```

And you just have to put in the image tag, wherever you want to image to
be displayed on the page.

## Step 5: Pulling up your webpage

Save the .html file. Open a web browser and go to the following
address:

`http://bergeron.valpo.edu/~<username>`

Obviously, replace *username* with your username. For example, my
username is kgoebber, so my website address is:

`http://bergeron.valpo.edu/~kgoebber`

THAT'S IT!! EASY!

Now, you may want to make a separate folder to store all of your lab
images, html pages, etc. To do this, use the `mkdir` command. Thus, if
we wanted to create a directory for this class we could do the
following:

`mkdir wxtech`

This would create a subdirectory of our current directory named
`wxtech`. Don't believe me? Look for yourself. Do a `ls -F`. You
should now see an entry that looks like `wxtech`. You can type **cd
wxtech** and see that you are now working inside the directory you just
created!

## Practice Tasks - HTML

1.  Create a surface image using the script that you got working from a
    previous lab and post it to your home page with some sort of
    commentary.

2.  Create an upper-air map from your favorite model and do the same
    thing as the first task.

3.  Customize your webpage. Use Google (or your favorite search engine)
    to figure out how to change the colors and do other amazing things
    with a webpage. The only way to learn about making a webpage is to
    try and do something with your own page.

4.  Create a webpage that has information from the different assignments
    for this class.