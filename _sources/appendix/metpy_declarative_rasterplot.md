# MetPy - `RasterPlot()`

Make raster plots by defining relevant traits.

## [`RasterPlot()`](https://unidata.github.io/MetPy/latest/api/generated/metpy.plots.RasterPlot.html)
  | Attribute | Description |
  | - | - |
  | [**colorbar**](https://unidata.github.io/MetPy/latest/api/generated/metpy.plots.RasterPlot.html#metpy.plots.RasterPlot.colorbar) | A string (horizontal/vertical) on whether to add a colorbar to the plot. |
  | [**colorbar_fontsize**](https://unidata.github.io/MetPy/latest/api/generated/metpy.plots.RasterPlot.html#metpy.plots.RasterPlot.colorbar_fontsize) | An integer, float, or string value to set the font size of labels for the colorbar. |
  | [**colormap**](https://unidata.github.io/MetPy/latest/api/generated/metpy.plots.RasterPlot.html#metpy.plots.RasterPlot.colormap) | The string name for a Matplotlib or MetPy colormap. |
  | [**data**](https://unidata.github.io/MetPy/latest/api/generated/metpy.plots.RasterPlot.html#metpy.plots.RasterPlot.data) | Xarray dataset that contains the field to be plotted. |
  | [`field`](https://unidata.github.io/MetPy/latest/api/generated/metpy.plots.RasterPlot.html#metpy.plots.RasterPlot.field) | Name of the field to be plotted. |
  | [`image_range`](https://unidata.github.io/MetPy/latest/api/generated/metpy.plots.RasterPlot.html#metpy.plots.RasterPlot.image_range) | A tuple of min and max values that represent the range of values to color the rasterized image. |
  | [`level`](https://unidata.github.io/MetPy/latest/api/generated/metpy.plots.RasterPlot.html#metpy.plots.RasterPlot.level) | The level of the field to be plotted. |
  | [`plot_units`](https://unidata.github.io/MetPy/latest/api/generated/metpy.plots.RasterPlot.html#metpy.plots.RasterPlot.plot_units) | The desired units to plot the field in. |
  | [`scale`](https://unidata.github.io/MetPy/latest/api/generated/metpy.plots.RasterPlot.html#metpy.plots.RasterPlot.scale) | Scale the field to be plotted by the value given. |
  | [`smooth_contour`](https://unidata.github.io/MetPy/latest/api/generated/metpy.plots.RasterPlot.html#metpy.plots.RasterPlot.smooth_contour) | Spline interpolation to smooth contours. |
  | [`smooth_field`](https://unidata.github.io/MetPy/latest/api/generated/metpy.plots.RasterPlot.html#metpy.plots.RasterPlot.smooth_field) | Number of smoothing passes using 9-pt smoother. |
  | [`time`](https://unidata.github.io/MetPy/latest/api/generated/metpy.plots.RasterPlot.html#metpy.plots.RasterPlot.time) | Set the valid time to be plotted as a datetime object. |

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

    The min and max values entered as a tuple will be converted to a [`matplotlib.colors.Normalize`](https://matplotlib.org/stable/api/_as_gen/matplotlib.colors.Normalize.html#matplotlib.colors.Normalize "(in Matplotlib v3.7.2)")instance for plotting.

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
    [`metpy.calc.zoom_xarray`](https://unidata.github.io/MetPy/latest/api/generated/metpy.calc.zoom_xarray.html#metpy.calc.zoom_xarray "metpy.calc.zoom_xarray")
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
    which can be done using the [`datetime`](https://docs.python.org/3/library/datetime.html#datetime.datetime "(in Python v3.11)")
    and [`timedelta`](https://docs.python.org/3/library/datetime.html#datetime.timedelta "(in Python v3.11)")
    objects from the Python standard library. Note that this requires your data to have a time dimension coordinate.
