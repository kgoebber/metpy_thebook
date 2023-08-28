# Common Errors and Solutions

Reading error messages can be challenging since it may be hard to
exactly decipher what might have gone wrong. In this appendix some
of the most common errors and their solutions are presented. This
is by no means an exhaustive list and through making more maps and
solving the errors that come up, it will get easier.

## Subsetting Errors
One of the most common errors when plotting a map of contours, color-filled
contours, etc. the data must be two-dimensional (i.e., 2D). When reading in
gridded data it is common for it to have four dimensions: time, vertical level,
x (longitude), and y (latitude). From there it will need to be subset for a particular
time and vertical level to be able to plot the map. A common error if there was
not enough subsetting was completed might be:

```python
ValueError: Must provide a combination of subsetting values to give either 2D data or
3D data subset for plotting with third dimension size 3 or 4
```

In reading the error above, the critical piece is the last part where the error message
indicates that the dimension size is 3 or 4, which means not enough subsetting has been
done. The solution is that you likely need to subset using the `time` or `level` attribute
to get to a two-dimensional array for plotting.

```python
AttributeError: vertical attribute is not available.
```

The error above indicates that an attempt to subset the vertical level attribute
via the declarative syntax cannot be completed because there is no vertical dimension
that has not already been subset (or exists if the variable doesn't have any vertical
dimension). The solution is to set the `level` attribute to `None`.

```python
AttributeError: time attribute is not available.
```

Similar to the vertical attribute error, this message appears when time has already been
subset and therefore cannot be subset again. The solution is to set the `time` attribute to `None`.

## No Contours
If you get no error, but a blank map there are a couple of different things that could be
going on with the settings.
  * Check the setting on contours to ensure it is set appropriately for what you are attempting
    to plot.
  * Consider what units the data are in as that may affect the contours setting.
  * Did you subset the data for a particular geographic region but are now plotting
    a different region through the `area` attribute?

## Missing Data
If you get no error, but some data are plotted but other seem to be missing.
  * If using gridded data, double check the subsetting of the x (longitude) and y (latitude)
    dimensions as you may need to expand the bounds of subsetting to get your desired results.
  * If using point data (e.g., surface observations or upperair observations) ensure you that
    have have requested and have data for the time that you desire. It is possible that the
    data you read in defaulted to a different time that is outside the bounds of the date
    you are using for plotting.

## Missing Wind Barbs
When plotting multiple parameters there are times when the overlay of certain variables will
cover up other types of plots. This most commonly occurs with wind barbs. To ensure the best
visualization of your data it is best to put any `ImagePlot()`, `RasterPlot()`, or `FilledContourPlot()`
as the first thing in your plot list and have wind barbs last.

There can be other instances where the zorder (the Pythonic word for the a graphic layer) can
cause unusual layering of data and other map features. Currently there are no straight forward ways to
overcome these issues, but should be possible in the near future.
