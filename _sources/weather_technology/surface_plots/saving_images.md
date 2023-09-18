# Saving Images

Previously we have created maps, but they were only visible within
the Jupyter environment. What if I want to save the image that I
created? There is only one small addition to make to your cell where you
create your image:

`pc.save('test.png')`

This will save the same image that is shown in your notebook to the
local working directory (likely your working directory). It is saving to
the name you give the file between the quote marks (in this case
**test.png**). That's it. It really is that simple.

There are a few different types of images you can save as, the most
common being the PNG (portable network graphic), but you can also save
as a JPG, PDF, PS, and TIF. Just switch out the .png for the desired
graphical output type.

Additionally, you can set other parameters about how the image will
save. We'll highlight two of them here, but for all of the available
options go the Matplotlib help pages for 
<a href="https://matplotlib.org/stable/api/_as_gen/matplotlib.pyplot.savefig.html" target="_blank">savefig</a>

## Common (Good) Options

### **dpi**
  * This setting is to allow you to specify a "dots per inch",
    which will give you a nicer looking image with a higher value. Common
    value to get a good image is 150.

### **bbox_inches**
  * This setting is set to 'tight' to remove excessive
    white space surrounding the image. It is best that this always be set to
    True (the default is false).

So, putting it all together, a good line for saving a file is:

`pc.save('test.png', dpi=150, bbox_inches='tight')`

Simply change the name within the quote marks to save to a different
name (good habit is to name the image something unique each time so as
not to accidentally overwrite something you really want to keep!).

## Downloading Images

To download an image to your local machine, find the file you wish to
download (most likely an image file), right-click on the file and a
dialogue box should appear and find the option to "Download". Depending
on the settings of your web browser, you'll either be asked where to
save the file, or it will save to your Downloads (or other designated)
folder.