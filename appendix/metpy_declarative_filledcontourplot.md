# MetPy - `FilledContourPlot()`

Make color-filled contours plots by defining appropriate traits.

## [`FilledContourPlot()`](https://unidata.github.io/MetPy/latest/api/generated/metpy.plots.FilledContourPlot.html)
  | Attribute | Description |
  | - | - |
  | [**clabels**](https://unidata.github.io/MetPy/latest/api/generated/metpy.plots.FilledContourPlot.html#metpy.plots.FilledContourPlot.clabels) | A boolean (True/False) on whether to plot contour labels. |
  | [**colorbar**](https://unidata.github.io/MetPy/latest/api/generated/metpy.plots.FilledContourPlot.html#metpy.plots.FilledContourPlot.colorbar) | A string (horizontal/vertical) on whether to add a colorbar to the plot. |
  | [**colorbar_fontsize**](https://unidata.github.io/MetPy/latest/api/generated/metpy.plots.FilledContourPlot.html#metpy.plots.FilledContourPlot.colorbar_fontsize) | An integer, float, or string value to set the font size of labels for the colorbar. |
  | [**colormap**](https://unidata.github.io/MetPy/latest/api/generated/metpy.plots.FilledContourPlot.html#metpy.plots.FilledContourPlot.colormap) | The string name for a Matplotlib or MetPy colormap. |
  | [**contours**](https://unidata.github.io/MetPy/latest/api/generated/metpy.plots.FilledContourPlot.html#metpy.plots.FilledContourPlot.contours) | A list of values to contour or an integer number of contour levels. |
  | [**data**](https://unidata.github.io/MetPy/latest/api/generated/metpy.plots.FilledContourPlot.html#metpy.plots.FilledContourPlot.data) | Xarray dataset that contains the field to be plotted. |
  | [**field**](https://unidata.github.io/MetPy/latest/api/generated/metpy.plots.FilledContourPlot.html#metpy.plots.FilledContourPlot.field) | Name of the field to be plotted. |
  | [**image_range**](https://unidata.github.io/MetPy/latest/api/generated/metpy.plots.FilledContourPlot.html#metpy.plots.FilledContourPlot.image_range) | A tuple of min and max values that represent the range of values to color the rasterized image. |
  | [**label_fontsize**](https://unidata.github.io/MetPy/latest/api/generated/metpy.plots.FilledContourPlot.html#metpy.plots.FilledContourPlot.label_fontsize) | An integer, float, or string value to set the font size of labels for contours. |
  | [**level**](https://unidata.github.io/MetPy/latest/api/generated/metpy.plots.FilledContourPlot.html#metpy.plots.FilledContourPlot.level) | The level of the field to be plotted. |
  | [**plot_units**](https://unidata.github.io/MetPy/latest/api/generated/metpy.plots.FilledContourPlot.html#metpy.plots.FilledContourPlot.plot_units) | The desired units to plot the field in. |
  | [**scale**](https://unidata.github.io/MetPy/latest/api/generated/metpy.plots.FilledContourPlot.html#metpy.plots.FilledContourPlot.scale) | Scale the field to be plotted by the value given. |
  | [**smooth_contour**](https://unidata.github.io/MetPy/latest/api/generated/metpy.plots.FilledContourPlot.html#metpy.plots.FilledContourPlot.smooth_contour) | Spline interpolation to smooth contours. |
  | [**smooth_field**](https://unidata.github.io/MetPy/latest/api/generated/metpy.plots.FilledContourPlot.html#metpy.plots.FilledContourPlot.smooth_field) | Number of smoothing passes using 9-pt smoother. |
  | [**time**](https://unidata.github.io/MetPy/latest/api/generated/metpy.plots.FilledContourPlot.html#metpy.plots.FilledContourPlot.time) | Set the valid time to be plotted as a datetime object. |

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

 Matplotlib Colormaps:
 <https://matplotlib.org/stable/gallery/color/colormap_reference.html>

 MetPy Colormaps:
 <https://unidata.github.io/MetPy/latest/api/generated/metpy.plots.ctables.html#module-metpy.plots.ctables>

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