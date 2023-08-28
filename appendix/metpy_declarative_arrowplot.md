## MetPy - `ArrowPlot()`

Make plots of wind barbs on a map with traits to refine the look of plotted elements.

# [`ArrowPlot()`](https://unidata.github.io/MetPy/latest/api/generated/metpy.plots.ArrowPlot.html)
  | Attribute | Description |
  | - | - |
  | [`arrowkey`](https://unidata.github.io/MetPy/latest/api/generated/metpy.plots.ArrowPlot.html#metpy.plots.ArrowPlot.arrowkey) | Set the characteristics of an arrow key using a tuple of values representing (value, xloc, yloc, position, string). |
  | [`arrowscale`](https://unidata.github.io/MetPy/latest/api/generated/metpy.plots.ArrowPlot.html#metpy.plots.ArrowPlot.arrowscale) | Number of data units per arrow length unit, e.g., m/s per plot width; a smaller scale parameter makes the arrow longer. |
  | [`color`](https://unidata.github.io/MetPy/latest/api/generated/metpy.plots.ArrowPlot.html#metpy.plots.ArrowPlot.color) | A string value that controls the color of the vectors. |
  | [`data`](https://unidata.github.io/MetPy/latest/api/generated/metpy.plots.ArrowPlot.html#metpy.plots.ArrowPlot.data) | Xarray dataset that contains the field to be plotted. |
  | [`earth_relative`](https://unidata.github.io/MetPy/latest/api/generated/metpy.plots.ArrowPlot.html#metpy.plots.ArrowPlot.earth_relative) | A boolean value to indicate whether the vector to be plotted is earth- or grid-relative. |
  | [`field`](https://unidata.github.io/MetPy/latest/api/generated/metpy.plots.ArrowPlot.html#metpy.plots.ArrowPlot.field) | A tuple containing the two components of the vector field from the dataset in the form (east-west component, north-south component). |
  | [`level`](https://unidata.github.io/MetPy/latest/api/generated/metpy.plots.ArrowPlot.html#metpy.plots.ArrowPlot.level) | The level of the field to be plotted. |
  | [`pivot`](https://unidata.github.io/MetPy/latest/api/generated/metpy.plots.ArrowPlot.html#metpy.plots.ArrowPlot.pivot) | A string setting the pivot point of the vector. |
  | [`plot_units`](https://unidata.github.io/MetPy/latest/api/generated/metpy.plots.ArrowPlot.html#metpy.plots.ArrowPlot.plot_units) | The desired units to plot the field in. |
  | [`plotdata`](https://unidata.github.io/MetPy/latest/api/generated/metpy.plots.ArrowPlot.html#metpy.plots.ArrowPlot.plotdata) | Return the data for plotting. |
  | [`scale`](https://unidata.github.io/MetPy/latest/api/generated/metpy.plots.ArrowPlot.html#metpy.plots.ArrowPlot.scale) | Scale the field to be plotted by the value given. |
  | [`skip`](https://unidata.github.io/MetPy/latest/api/generated/metpy.plots.ArrowPlot.html#metpy.plots.ArrowPlot.skip) | A tuple of integers to indicate the number of grid points to skip between plotting vectors. |
  | [`time`](https://unidata.github.io/MetPy/latest/api/generated/metpy.plots.ArrowPlot.html#metpy.plots.ArrowPlot.time) | Set the valid time to be plotted as a datetime object. |

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
    [`matplotlib.pyplot.quiverkey`](https://matplotlib.org/stable/api/_as_gen/matplotlib.pyplot.quiverkey.html#matplotlib.pyplot.quiverkey "(in Matplotlib v3.7.2)").

### **arrowscale**
  * Number of data units per arrow length unit, e.g., m/s per plot width; a smaller scale parameter makes
    the arrow longer. Default is *None*.

    If *None*, a simple autoscaling algorithm is used, based on the average vector length and the number of
    vectors. The arrow length unit is given by the *key_length* attribute.

    This trait corresponds to the keyword length in
    [`matplotlib.pyplot.quiver`](https://matplotlib.org/stable/api/_as_gen/matplotlib.pyplot.quiver.html#matplotlib.pyplot.quiver "(in Matplotlib v3.7.2)").

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
    [`datetime`](https://docs.python.org/3/library/datetime.html#datetime.datetime "(in Python v3.11)") and
    [`timedelta`](https://docs.python.org/3/library/datetime.html#datetime.timedelta "(in Python v3.11)")
    objects from the Python standard library. Note that this requires your data to have a time dimension coordinate.