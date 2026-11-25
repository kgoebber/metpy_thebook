# Overlay Multiple Contours

But what if we want to overlay more than one set of contours?
We just need to add another set of settings for plotting contours.
Then we just need to add both contours to our panel and viola!

Here is some example pseudo-code to demonstrate how this would work:

```python
cntr = ContourPlot()  
...  
cntr2 = ContourPlot()  
...  
panel = MapPanel()  
...  
panel.plots = [cntr, cntr2]  

pc = PanelContainer()  
pc.plots = [panel]  
pc.show()

```
When plotting two sets of contours, you'll want to pay particular attention
to the color and linestyle of each of the contours so that anyone reading
your map will be able to easily distinguish between the two sets of lines.

Let's see how this works using some real data and plotting two
different sets of contours.