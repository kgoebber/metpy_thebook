# MetPy - `ContourPlot()`

This class is designed to plot contours of gridded data, most commonly
model output from the GFS, NAM, or RAP.

## [`ContourPlot()`](https://unidata.github.io/MetPy/latest/api/generated/metpy.plots.ContourPlot.html)
  | Attribute | Description |
  | - | - |
  | [**clabels**](https://unidata.github.io/MetPy/latest/api/generated/metpy.plots.ContourPlot.html#metpy.plots.ContourPlot.clabels) | A boolean (True/False) on whether to plot contour labels. |
  | [**contours**](https://unidata.github.io/MetPy/latest/api/generated/metpy.plots.ContourPlot.html#metpy.plots.ContourPlot.contours) | A list of values to contour or an integer number of contour levels. |
  | [**data**](https://unidata.github.io/MetPy/latest/api/generated/metpy.plots.ContourPlot.html#metpy.plots.ContourPlot.data) | Xarray dataset that contains the field to be plotted. |
  | [**field**](https://unidata.github.io/MetPy/latest/api/generated/metpy.plots.ContourPlot.html#metpy.plots.ContourPlot.field) | Name of the field to be plotted. |
  | [**label_fontsize**](https://unidata.github.io/MetPy/latest/api/generated/metpy.plots.ContourPlot.html#metpy.plots.ContourPlot.label_fontsize) | An integer, float, or string value to set the font size of labels for contours. |
  | [**latitude**](https://unidata.github.io/MetPy/latest/api/generated/metpy.plots.ContourPlot.html#metpy.plots.ContourPlot.latitude) | The latitude coordinate of the field to be plotted. |
  | [**level**](https://unidata.github.io/MetPy/latest/api/generated/metpy.plots.ContourPlot.html#metpy.plots.ContourPlot.level) | The level of the field to be plotted. |
  | [**linecolor**](https://unidata.github.io/MetPy/latest/api/generated/metpy.plots.ContourPlot.html#metpy.plots.ContourPlot.linecolor) | A string value to set the color of plotted contours; default is black. |
  | [**linestyle**](https://unidata.github.io/MetPy/latest/api/generated/metpy.plots.ContourPlot.html#metpy.plots.ContourPlot.linestyle) | A string value to set the linestyle (e.g., dashed), or *None*; default is *None*, which, when using monochrome line colors, uses solid lines for positive values and dashed lines for negative values. |
  | [**linewidth**](https://unidata.github.io/MetPy/latest/api/generated/metpy.plots.ContourPlot.html#metpy.plots.ContourPlot.linewidth) | An integer value to set the width of plotted contours; default value is 2. |
  | [**longitude**](https://unidata.github.io/MetPy/latest/api/generated/metpy.plots.ContourPlot.html#metpy.plots.ContourPlot.longitude) | The longitude coordinate of the field to be plotted. |
  | [**name**](https://unidata.github.io/MetPy/latest/api/generated/metpy.plots.ContourPlot.html#metpy.plots.ContourPlot.name) | Generate a name for the plot. |
  | [**plot_units**](https://unidata.github.io/MetPy/latest/api/generated/metpy.plots.ContourPlot.html#metpy.plots.ContourPlot.plot_units) | The desired units to plot the field in. |
  | [**scale**](https://unidata.github.io/MetPy/latest/api/generated/metpy.plots.ContourPlot.html#metpy.plots.ContourPlot.scale) | Scale the field to be plotted by the value given. |
  | [**smooth_contour**](https://unidata.github.io/MetPy/latest/api/generated/metpy.plots.ContourPlot.html#metpy.plots.ContourPlot.smooth_contour) | Spline interpolation to smooth contours. |
  | [**smooth_field**](https://unidata.github.io/MetPy/latest/api/generated/metpy.plots.ContourPlot.html#metpy.plots.ContourPlot.smooth_field) | Number of smoothing passes using 9-pt smoother. |
  | [**time**](https://unidata.github.io/MetPy/latest/api/generated/metpy.plots.ContourPlot.html#metpy.plots.ContourPlot.time) | Set the valid time to be plotted as a datetime object. |

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

### **clabels**
* This attribute can be set to True if you desire to have your contours
  labeled.

### **linestyle**
* This attribute can be set to make the contours 'solid', 'dashed',
  'dotted', or 'dashdot'.

  Default is 'solid'.

### **linewidth**
* This attribute alters the width of the contours (defaults to 1). Setting
  the value greater than 1 will yield a thicker contour line.

### **linecolor**
* This attribute sets the color of the contour lines. Default is 'black'.
  All colors from matplotlib are valid:
  <https://matplotlib.org/stable/_images/sphx_glr_named_colors_003.png>

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