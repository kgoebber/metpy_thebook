# MetPy - `FilledContourPlot()`

Make color-filled contours plots by defining appropriate traits.

## <a href="https://unidata.github.io/MetPy/latest/api/generated/metpy.plots.FilledContourPlot.html" target="_blank">`FilledContourPlot()`</a>
  | Attribute | Description |
  | - | - |
  | <a href="https://unidata.github.io/MetPy/latest/api/generated/metpy.plots.FilledContourPlot.html#metpy.plots.FilledContourPlot.clabels" target="_blank">**clabels**</a> | A boolean (True/False) on whether to plot contour labels. |
  | <a href="https://unidata.github.io/MetPy/latest/api/generated/metpy.plots.FilledContourPlot.html#metpy.plots.FilledContourPlot.colorbar" target="_blank">**colorbar**</a> | A string (horizontal/vertical) on whether to add a colorbar to the plot. |
  | <a href="https://unidata.github.io/MetPy/latest/api/generated/metpy.plots.FilledContourPlot.html#metpy.plots.FilledContourPlot.colorbar_fontsize" target="_blank">**colorbar_fontsize**</a> | An integer, float, or string value to set the font size of labels for the colorbar. |
  | <a href="https://unidata.github.io/MetPy/latest/api/generated/metpy.plots.FilledContourPlot.html#metpy.plots.FilledContourPlot.colormap" target="_blank">**colormap**</a> | The string name for a Matplotlib or MetPy colormap. |
  | <a href="https://unidata.github.io/MetPy/latest/api/generated/metpy.plots.FilledContourPlot.html#metpy.plots.FilledContourPlot.contours" target="_blank">**contours**</a> | A list of values to contour or an integer number of contour levels. |
  | <a href="https://unidata.github.io/MetPy/latest/api/generated/metpy.plots.FilledContourPlot.html#metpy.plots.FilledContourPlot.data" target="_blank">**data**</a> | Xarray dataset that contains the field to be plotted. |
  | <a href="https://unidata.github.io/MetPy/latest/api/generated/metpy.plots.FilledContourPlot.html#metpy.plots.FilledContourPlot.field" target="_blank">**field**</a> | Name of the field to be plotted. |
  | <a href="https://unidata.github.io/MetPy/latest/api/generated/metpy.plots.FilledContourPlot.html#metpy.plots.FilledContourPlot.image_range" target="_blank">**image_range**</a> | A tuple of min and max values that represent the range of values to color the rasterized image. |
  | <a href="https://unidata.github.io/MetPy/latest/api/generated/metpy.plots.FilledContourPlot.html#metpy.plots.FilledContourPlot.label_fontsize" target="_blank">**label_fontsize**</a> | An integer, float, or string value to set the font size of labels for contours. |
  | <a href="https://unidata.github.io/MetPy/latest/api/generated/metpy.plots.FilledContourPlot.html#metpy.plots.FilledContourPlot.level" target="_blank">**level**</a> | The level of the field to be plotted. |
  | <a href="https://unidata.github.io/MetPy/latest/api/generated/metpy.plots.FilledContourPlot.html#metpy.plots.FilledContourPlot.plot_units" target="_blank">**plot_units**</a> | The desired units to plot the field in. |
  | <a href="https://unidata.github.io/MetPy/latest/api/generated/metpy.plots.FilledContourPlot.html#metpy.plots.FilledContourPlot.scale" target="_blank">**scale**</a> | Scale the field to be plotted by the value given. |
  | <a href="https://unidata.github.io/MetPy/latest/api/generated/metpy.plots.FilledContourPlot.html#metpy.plots.FilledContourPlot.smooth_contour" target="_blank">**smooth_contour**</a> | Spline interpolation to smooth contours. |
  | <a href="https://unidata.github.io/MetPy/latest/api/generated/metpy.plots.FilledContourPlot.html#metpy.plots.FilledContourPlot.smooth_field" target="_blank">**smooth_field**</a> | Number of smoothing passes using 9-pt smoother. |
  | <a href="https://unidata.github.io/MetPy/latest/api/generated/metpy.plots.FilledContourPlot.html#metpy.plots.FilledContourPlot.time" target="_blank">**time**</a> | Set the valid time to be plotted as a datetime object. |
  | <a href="https://unidata.github.io/MetPy/latest/api/generated/metpy.plots.FilledContourPlot.html#metpy.plots.FilledContourPlot.mpl_args" target="_blank">**mpl_args**</a> | Supply a dictionary of valid Matplotlib keyword arguments to modify how the plot variable is drawn. |

## Attribute Descriptions

### **data**
 * This attribute must be set with the variable name that contains the
   xarray dataset. (Typically this is the variable ds)

### **field**
* This attribute must be set with the name of the variable that you want
  to contour. For example, to plot the heights of pressure surfaces from
  the GFS you would use the name 'Geopotential_height_isobaric'

### **level**
* This attribute sets the level of the data you wish to plot. If it is a
  pressure level, then it must be set to a unit bearing value (e.g.,
  500\*units.hPa). If the variable does not have any vertical levels
  (e.g., mean sea-level pressure), then the level attribute must be set to
  None.

### **time**
* This attribute must be set with a datetime object, just as with the
  PlotObs() class. To get a forecast hour, you can use the timedelta
  function from datetime to add the number of hours into the future you
  wish to plot. For example, if you wanted the six hour forecast from the
  00 UTC 2 February 2020 model run, then you would set the attribute with:

  datetime(2020, 2, 2, 0) + timedelta(hours=6)

### **contours**
* This attribute sets the contour values to be plotted with a list. This
  can be set manually with a list of integers in square brackets (e.g.,
  [5400, 5460, 5520, 5580, 5640, 5700]) or programmatically (e.g.,
  `range(0, 10000, 60)`). The second method is a way to easily set a
  contour interval (in this case 60).

### **colormap**
* This attribute is used to set a valid colormap from either Matplotlib or
 MetPy:

  <a href="https://matplotlib.org/stable/gallery/color/colormap_reference.html" target="_blank">Matplotlib Colormaps</a>

  <a href="https://unidata.github.io/MetPy/latest/api/generated/metpy.plots.ctables.html#module-metpy.plots.ctables" target="_blank">MetPy Colormaps</a>

### **colorbar**
* This attribute can be set to 'vertical' or 'horizontal', which is the
  location the colorbar will be plotted on the panel.

### **image_range**
* A set of values indicating the minimum and maximum for the data being
  plotted. This attribute should be set as (min_value, max_value), where
  min_value and max_value are numeric values.

### **plot_units**
* If you want to change the units for plotting purposes, add the string
  value of the units desired. For example, if you want to plot temperature
  in Celsius, then set this attribute to 'degC'.

### **smooth_contour**
* This attribute is best used to smooth contours when contouring a
  sparse grid (e.g., when your data has a large grid spacing). This will
  produce smoothed geopotential heights for all levels available in the
  DataArray using a spline interpolation.

### **smooth_field**
* This attribute is best used to smooth contours when contouring a
  higher resolution (smaller grid spacing with lots of grid points) field.
  This will produce a smoothed field using the nine-point smoother twice.

### **mpl_args**
* This attribute can be set to a dictionary containing keyword arguments (kwarg)
  valid for the various Matplotlib plotting functions to enhance how a plot is
  created. For example, you can use this attribute to set the `zorder` kwarg to
  alter what aspects of the your plot are on top of one another. NOTE: Setting
  the mpl_args trait will override any other trait that corresponds to a specific
  kwarg for the particular plot type (e.g., linecolor, linewidth).
