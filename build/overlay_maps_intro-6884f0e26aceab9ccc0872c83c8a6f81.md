# Overlay Observations and Contours

If you desire to plot both observations and computer drawn contours it
will be necessary to combine the plotting classes for both observations
and the type of gridded display that you desired (e.g., contours). Below
is an example of how to create a 500-hPa map with both observations and
heights contoured. The overall procedure of this example can be extended
to surface maps or other pressure surfaces with one or more contours.

The way to think of these different plot elements as different layers to
your picture. Python is generally pretty good about ordering all of the
elements in the end to appear correctly on your figure, however, when
putting in your plot order in the MapPanel(), put any color-filled plots
first and then list the remaining plots after to ensure you can see
everything you desire to plot!