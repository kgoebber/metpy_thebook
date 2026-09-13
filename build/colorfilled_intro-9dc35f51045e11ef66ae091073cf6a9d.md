# Color-filled Plotting

We are not relegated to only plotting contours of values, we can
color-fill a variable for our plots. There are a couple of different
options we have including color-filled contour, image plots, and raster
plots. The choice will depend on what you are looking to plot and the
aesthetic of the output image. We'll demonstrated color-filled plots
using `FilledContourPlot()` and `RasterPlot()` here and you can look
to examples on the web for others as desired.

## Color-filled Plotting
Plotting filled contours with
<a href="https://unidata.github.io/MetPy/latest/api/generated/metpy.plots.FilledContourPlot.html" target="_blank">`FilledContourPlot()`</a>
works very similarly to `ContourPlot()`,
except that contours are filled using a colormap between contour values.
All attributes for `ContourPlot()` work for `FilledContourPlot()` plots, except for linestyle,
linecolor, and linewidth. Additionally, there are the following
attributes that work for the various color-filling plot types:

### Specific Color-fill Attributes
* colormap
  - This attribute is used to set a valid colormap from either Matplotlib or MetPy:

     - <a href="https://matplotlib.org/stable/gallery/color/colormap_reference.html" target="_blank">Matplotlib Colormaps</a>
     - <a href="https://unidata.github.io/MetPy/latest/api/generated/metpy.plots.ctables.html#module-metpy.plots.ctables" target="_blank">MetPy Colormaps</a>

* colorbar
  - This attribute can be set to 'vertical' or 'horizontal', which is the
    location the colorbar will be plotted on the panel.

* image_range
  - A set of values indicating the minimum and maximum for the data being
    plotted. This attribute should be set as (min_value, max_value), where
    min_value and max_value are numeric values.

Raster plot style use
<a href="https://unidata.github.io/MetPy/latest/api/generated/metpy.plots.RasterPlot.html" target="_blank">`RasterPlot()`</a>
for coloring in a cell with a given color for a
value, creating a rasterized image (think color-filled pixels the size
of a grid cell). This is a good alternative to color-filled contouring,
especially as the size of the grid gets smaller.

Example of `RasterPlot()` use
<a href="https://unidata.github.io/MetPy/latest/examples/plots/raster_declarative.html#sphx-glr-examples-plots-raster-declarative-py" target="_blank">here</a>.

One can also plot an image (e.g., satellite imagery), which uses the
<a href="https://unidata.github.io/MetPy/latest/api/generated/metpy.plots.ImagePlot.html" target="_blank">`ImagePlot()`</a> class.
This plot style is also a type of rasterized image. This will be used for
plotting satellite imagery, which will be demonstrated later but could be used for
gridded output from a model as well.

Armed with this palette, we can now use scripting and create very nice
images using a suite of model output!