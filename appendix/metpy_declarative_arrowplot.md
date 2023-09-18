# MetPy - `ArrowPlot()`

Make plots of wind barbs on a map with traits to refine the look of plotted elements.

# <a href="https://unidata.github.io/MetPy/latest/api/generated/metpy.plots.ArrowPlot.html" target="_blank">`ArrowPlot()`</a>
  | Attribute | Description |
  | - | - |
  | <a href="https://unidata.github.io/MetPy/latest/api/generated/metpy.plots.ArrowPlot.html#metpy.plots.ArrowPlot.arrowkey" target="_blank">**arrowkey**</a> | Set the characteristics of an arrow key using a tuple of values representing (value, xloc, yloc, position, string). |
  | <a href="https://unidata.github.io/MetPy/latest/api/generated/metpy.plots.ArrowPlot.html#metpy.plots.ArrowPlot.arrowscale" target="_blank">**arrowscale**</a> | Number of data units per arrow length unit, e.g., m/s per plot width; a smaller scale parameter makes the arrow longer. |
  | <a href="https://unidata.github.io/MetPy/latest/api/generated/metpy.plots.ArrowPlot.html#metpy.plots.ArrowPlot.color" target="_blank">**color**</a> | A string value that controls the color of the vectors. |
  | <a href="https://unidata.github.io/MetPy/latest/api/generated/metpy.plots.ArrowPlot.html#metpy.plots.ArrowPlot.data" target="_blank">**data**</a> | Xarray dataset that contains the field to be plotted. |
  | <a href="https://unidata.github.io/MetPy/latest/api/generated/metpy.plots.ArrowPlot.html#metpy.plots.ArrowPlot.earth_relative" target="_blank">**earth_relative**</a> | A boolean value to indicate whether the vector to be plotted is earth- or grid-relative. |
  | <a href="https://unidata.github.io/MetPy/latest/api/generated/metpy.plots.ArrowPlot.html#metpy.plots.ArrowPlot.field" target="_blank">**field**</a> | A tuple containing the two components of the vector field from the dataset in the form (east-west component, north-south component). |
  | <a href="https://unidata.github.io/MetPy/latest/api/generated/metpy.plots.ArrowPlot.html#metpy.plots.ArrowPlot.level" target="_blank">**level**</a> | The level of the field to be plotted. |
  | <a href="https://unidata.github.io/MetPy/latest/api/generated/metpy.plots.ArrowPlot.html#metpy.plots.ArrowPlot.pivot" target="_blank">**pivot**</a> | A string setting the pivot point of the vector. |
  | <a href="https://unidata.github.io/MetPy/latest/api/generated/metpy.plots.ArrowPlot.html#metpy.plots.ArrowPlot.plot_units" target="_blank">**plot_units**</a> | The desired units to plot the field in. |
  | <a href="https://unidata.github.io/MetPy/latest/api/generated/metpy.plots.ArrowPlot.html#metpy.plots.ArrowPlot.plotdata" target="_blank">**plotdata**</a> | Return the data for plotting. |
  | <a href="https://unidata.github.io/MetPy/latest/api/generated/metpy.plots.ArrowPlot.html#metpy.plots.ArrowPlot.scale" target="_blank">**scale**</a> | Scale the field to be plotted by the value given. |
  | <a href="https://unidata.github.io/MetPy/latest/api/generated/metpy.plots.ArrowPlot.html#metpy.plots.ArrowPlot.skip" target="_blank">**skip**</a> | A tuple of integers to indicate the number of grid points to skip between plotting vectors. |
  | <a href="https://unidata.github.io/MetPy/latest/api/generated/metpy.plots.ArrowPlot.html#metpy.plots.ArrowPlot.time" target="_blank">**time**</a> | Set the valid time to be plotted as a datetime object. |

## Attribute Descriptions

### **arrowkey**
  * Set the characteristics of an arrow key using a tuple of values representing (value, xloc, yloc, position, string).
    Default is *None*.

    If *None*, no vector key will be plotted.

    value default is 100 xloc default is 0.85 yloc default is 1.02 position default is 'E'
    (options are 'N', 'S', 'E', 'W') label default is an empty string

    If you wish to change a characteristic of the arrowkey you'll need to have a tuple of five elements,
    fill in the full tuple using *None* for those characteristics you wish to use the default value and
    put in the new values for the other elements. This trait corresponds to the keyword length in
    <a href="https://matplotlib.org/stable/api/_as_gen/matplotlib.pyplot.quiverkey.html#matplotlib.pyplot.quiverkey " target="_blank">`matplotlib.pyplot.quiverkey`</a>.

### **arrowscale**
  * Number of data units per arrow length unit, e.g., m/s per plot width; a smaller scale parameter makes
    the arrow longer. Default is *None*.

    If *None*, a simple autoscaling algorithm is used, based on the average vector length and the number of
    vectors. The arrow length unit is given by the *key_length* attribute.

    This trait corresponds to the keyword length in
    <a href="https://matplotlib.org/stable/api/_as_gen/matplotlib.pyplot.quiver.html#matplotlib.pyplot.quiver " target="_blank">`matplotlib.pyplot.quiver`</a>.

### **color**
  * A string value that controls the color of the vectors. Default value is black.

    This trait can be set to any named color from *Matplotlibs Colors*

### **data**
  * Xarray dataset that contains the field to be plotted.

### **earth_relative**
  * A boolean value to indicate whether the vector to be plotted is earth- or grid-relative.
    Default value is *True*, indicating that vectors are earth-relative.

   Common gridded meteorological datasets including GFS and NARR output contain wind components
   that are earth-relative. The primary exception is NAM output with wind components that are grid-relative.
   For any grid-relative vectors set this trait to *False*. This value is ignored for 2D vector fields not
   in the plane of the plot (e.g., cross sections).

### **field**
  * A tuple containing the two components of the vector field from the dataset in the form (east-west component, north-south component).

    For a wind barb plot each component of the wind must be specified and should be of the form (u-wind, v-wind).

### **level**
  * The level of the field to be plotted.

    This is a value with units to choose a desired plot level. For example, selecting the
    850-hPa level, set this parameter to `850 * units.hPa`. Note that this requires your
    data to have a vertical dimension coordinate.

### **pivot**
  * A string setting the pivot point of the vector. Default value is 'middle'.

    This trait takes the values of the keyword argument from *matplotlin.pyplot.barbs*: 'tip' or 'middle'.

### **plot_units**
  * The desired units to plot the field in.

    Setting this attribute will convert the units of the field variable to the given units for plotting using the MetPy Units module.

### **scale**
  * Scale the field to be plotted by the value given.

    This attribute will scale the field by multiplying by the scale. For example, to scale
    vorticity to be whole values for contouring you could set the scale to 1e5, such that
    the data values will be multiplied by 10^5.

### **skip**
  * A tuple of integers to indicate the number of grid points to skip between plotting vectors. Default is (1, 1).

    This trait is to be used to reduce the number of vectors plotted in the (east-west, north-south)
    components. The two values can be set to the same or different integer values depending on what is desired.

### **time**
  * Set the valid time to be plotted as a datetime object.

    If a forecast hour is to be plotted the time should be set to the valid future time, which can be done using the
    <a href="https://docs.python.org/3/library/datetime.html#datetime.datetime" target="_blank">`datetime`</a> and
    <a href="https://docs.python.org/3/library/datetime.html#datetime.timedelta" target="_blank">`timedelta`</a>
    objects from the Python standard library. Note that this requires your data to have a time dimension coordinate.