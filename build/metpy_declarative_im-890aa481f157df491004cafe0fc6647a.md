# MetPy - `ImagePlot()`

Make image plots by defining relevant traits.

## <a href="https://unidata.github.io/MetPy/latest/api/generated/metpy.plots.ImagePlot.html" target="_blank">`ImagePlot()`</a>
  | Attribute | Description |
  | - | - |
  | <a href="https://unidata.github.io/MetPy/latest/api/generated/metpy.plots.ImagePlot.html#metpy.plots.ImagePlot.colorbar" target="_blank">**colorbar**</a> | A string (horizontal/vertical) on whether to add a colorbar to the plot. |
  | <a href="https://unidata.github.io/MetPy/latest/api/generated/metpy.plots.ImagePlot.html#metpy.plots.ImagePlot.colorbar_fontsize" target="_blank">**colorbar_fontsize**</a> | An integer, float, or string value to set the font size of labels for the colorbar. |
  | <a href="https://unidata.github.io/MetPy/latest/api/generated/metpy.plots.ImagePlot.html#metpy.plots.ImagePlot.colormap" target="_blank">**colormap**</a> | The string name for a Matplotlib or MetPy colormap. |
  | <a href="https://unidata.github.io/MetPy/latest/api/generated/metpy.plots.ImagePlot.html#metpy.plots.ImagePlot.data" target="_blank">**data**</a> | Xarray dataset that contains the field to be plotted. |
  | <a href="https://unidata.github.io/MetPy/latest/api/generated/metpy.plots.ImagePlot.html#metpy.plots.ImagePlot.field" target="_blank">**field**</a> | Name of the field to be plotted. |
  | <a href="https://unidata.github.io/MetPy/latest/api/generated/metpy.plots.ImagePlot.html#metpy.plots.ImagePlot.image_range" target="_blank">**image_range**</a> | A tuple of min and max values that represent the range of values to color the rasterized image. |
  | <a href="https://unidata.github.io/MetPy/latest/api/generated/metpy.plots.ImagePlot.html#metpy.plots.ImagePlot.level" target="_blank">**level**</a> | The level of the field to be plotted. |
  | <a href="https://unidata.github.io/MetPy/latest/api/generated/metpy.plots.ImagePlot.html#metpy.plots.ImagePlot.plot_units" target="_blank">**plot_units**</a> | The desired units to plot the field in. |
  | <a href="https://unidata.github.io/MetPy/latest/api/generated/metpy.plots.ImagePlot.html#metpy.plots.ImagePlot.scale" target="_blank">**scale**</a> | Scale the field to be plotted by the value given. |
  | <a href="https://unidata.github.io/MetPy/latest/api/generated/metpy.plots.ImagePlot.html#metpy.plots.ImagePlot.smooth_contour" target="_blank">**smooth_contour**</a> | Spline interpolation to smooth contours. |
  | <a href="https://unidata.github.io/MetPy/latest/api/generated/metpy.plots.ImagePlot.html#metpy.plots.ImagePlot.smooth_field" target="_blank">**smooth_field**</a> | Number of smoothing passes using 9-pt smoother. |
  | <a href="https://unidata.github.io/MetPy/latest/api/generated/metpy.plots.ImagePlot.html#metpy.plots.ImagePlot.time" target="_blank">**time**</a> | Set the valid time to be plotted as a datetime object. |
  | <a href="https://unidata.github.io/MetPy/latest/api/generated/metpy.plots.ImagePlot.html#metpy.plots.ImagePlot.mpl_args" target="_blank">**mpl_args**</a> | Supply a dictionary of valid Matplotlib keyword arguments to modify how the plot variable is drawn. |

## Attribute Descriptions

### **colorbar**
  * A string (horizontal/vertical) on whether to add a colorbar to the plot.

    To add a colorbar associated with the plot, set the trait to `horizontal` or `vertical`,
    specifying the orientation of the produced colorbar. The default value is `None`.

### **colorbar_fontsize**
  * An integer, float, or string value to set the font size of labels for the colorbar.

    This trait sets the font size of labels for the colorbar. Accepts size in points or relative size.
    Allowed relative sizes are those of Matplotlib: 'xx-small', 'x-small', 'small', 'medium', 'large', 'x-large', 'xx-large'.

### **colormap**
  * The string name for a Matplotlib or MetPy colormap.

    For example, the Blue-Purple colormap from Matplotlib can be accessed using 'BuPu'.

### **data**
  * Xarray dataset that contains the field to be plotted.

### **field**
  * Name of the field to be plotted.

    This is the name of the variable from the dataset that is to be plotted. An example,
    from a model grid file that uses the THREDDS convention for naming would be
    *Geopotential_height_isobaric* or *Temperature_isobaric*. For GOES-16/17 satellite data
    it might be *Sectorized_CMI*. To check for the variables available within a dataset, list
    the variables with the following command assuming the dataset was read using xarray as *ds*, *list(ds)*

### **image_range**
  * A tuple of min and max values that represent the range of values to color the rasterized image.

    The min and max values entered as a tuple will be converted to a <a href="https://matplotlib.org/stable/api/_as_gen/matplotlib.colors.Normalize.html#matplotlib.colors.Normalize " target="_blank">`matplotlib.colors.Normalize`</a>instance for plotting.

### **level**
  * The level of the field to be plotted.

    This is a value with units to choose a desired plot level. For example,
    selecting the 850-hPa level, set this parameter to `850 * units.hPa`.
    Note that this requires your data to have a vertical dimension coordinate.

### **plot_units**
  * The desired units to plot the field in.

    Setting this attribute will convert the units of the field variable to the
    given units for plotting using the MetPy Units module.

### **scale**
  * Scale the field to be plotted by the value given.

    This attribute will scale the field by multiplying by the scale. For example,
    to scale vorticity to be whole values for contouring you could set the scale to `1e5`,
    such that the data values will be multiplied by 10^5.

### **smooth_contour**
  * Spline interpolation to smooth contours.

    This attribute requires settings for the
    <a href="https://unidata.github.io/MetPy/latest/api/generated/metpy.calc.zoom_xarray.html#metpy.calc.zoom_xarray " target="_blank">`metpy.calc.zoom_xarray`</a>
    function, which will produce a spline interpolation given an integer zoom factor.
    Either a single integer specifying the zoom factor (e.g., 4) or a tuple containing
    two integers for the zoom factor and the spline interpolation order can be used.
    The default spline interpolation order is 3.

    This is best used to smooth contours when contouring a sparse grid (e.g., when your data has a large grid spacing).

### **smooth_field**
  * Number of smoothing passes using 9-pt smoother.

    By setting this parameter with an integer value it will call the MetPy 9-pt
    smoother and provide a smoothed field for plotting. It is best to use this
    smoothing for data with finer resolutions (e.g., smaller grid spacings with
    a lot of grid points).

### **time**
  * Set the valid time to be plotted as a datetime object.

    If a forecast hour is to be plotted the time should be set to the valid future time,
    which can be done using the
    <a href="https://docs.python.org/3/library/datetime.html#datetime.datetime" target="_blank">`datetime`</a> and
    <a href="https://docs.python.org/3/library/datetime.html#datetime.timedelta" target="_blank">`timedelta`</a>
    objects from the Python standard library. Note that this requires your data to have a time dimension coordinate.
  
  ### **mpl_args**
* This attribute can be set to a dictionary containing keyword arguments (kwarg)
  valid for the various Matplotlib plotting functions to enhance how a plot is
  created. For example, you can use this attribute to set the `zorder` kwarg to
  alter what aspects of the your plot are on top of one another. NOTE: Setting
  the mpl_args trait will override any other trait that corresponds to a specific
  kwarg for the particular plot type (e.g., linecolor, linewidth).
