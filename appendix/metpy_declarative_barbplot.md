# MetPy - `BarbPlot()`

This class is designed to plot wind barbs from gridded data, most commonly
model output from the GFS, NAM, or RAP.

## <a href="https://unidata.github.io/MetPy/latest/api/generated/metpy.plots.BarbPlot.html" target="_blank">`BarbPlot()`</a>
  | Attribute | Description |
  | - | - |
  | <a href="https://unidata.github.io/MetPy/latest/api/generated/metpy.plots.BarbPlot.html#metpy.plots.BarbPlot.barblength" target="_blank">**barblength**</a> | A float value that changes the length of the wind barbs. |
  | <a href="https://unidata.github.io/MetPy/latest/api/generated/metpy.plots.BarbPlot.html#metpy.plots.BarbPlot.color" target="_blank">**color**</a> | A string value that controls the color of the vectors. |
  | <a href="https://unidata.github.io/MetPy/latest/api/generated/metpy.plots.BarbPlot.html#metpy.plots.BarbPlot.data" target="_blank">**data**</a> | Xarray dataset that contains the field to be plotted. |
  | <a href="https://unidata.github.io/MetPy/latest/api/generated/metpy.plots.BarbPlot.html#metpy.plots.BarbPlot.earth_relative" target="_blank">**earth_relative**</a> | A boolean value to indicate whether the vector to be plotted is earth- or grid-relative. |
  | <a href="https://unidata.github.io/MetPy/latest/api/generated/metpy.plots.BarbPlot.html#metpy.plots.BarbPlot.field" target="_blank">**field**</a> | A tuple containing the two components of the vector field from the dataset in the form (east-west component, north-south component). |
  | <a href="https://unidata.github.io/MetPy/latest/api/generated/metpy.plots.BarbPlot.html#metpy.plots.BarbPlot.level" target="_blank">**level**</a> | The level of the field to be plotted. |
  | <a href="https://unidata.github.io/MetPy/latest/api/generated/metpy.plots.BarbPlot.html#metpy.plots.BarbPlot.pivot" target="_blank">**pivot**</a> | A string setting the pivot point of the vector. |
  | <a href="https://unidata.github.io/MetPy/latest/api/generated/metpy.plots.BarbPlot.html#metpy.plots.BarbPlot.plot_units" target="_blank">**plot_units**</a> | The desired units to plot the field in. |
  | <a href="https://unidata.github.io/MetPy/latest/api/generated/metpy.plots.BarbPlot.html#metpy.plots.BarbPlot.scale" target="_blank">**scale**</a> | Scale the field to be plotted by the value given. |
  | <a href="https://unidata.github.io/MetPy/latest/api/generated/metpy.plots.BarbPlot.html#metpy.plots.BarbPlot.skip" target="_blank">**skip**</a> | A tuple of integers to indicate the number of grid points to skip between plotting vectors. |
  | <a href="https://unidata.github.io/MetPy/latest/api/generated/metpy.plots.BarbPlot.html#metpy.plots.BarbPlot.time" target="_blank">**time**</a> | Set the valid time to be plotted as a datetime object. |
  | <a href="https://unidata.github.io/MetPy/latest/api/generated/metpy.plots.BarbPlot.html#metpy.plots.BarbPlot.mpl_args" target="_blank">**mpl_args**</a> | Supply a dictionary of valid Matplotlib keyword arguments to modify how the plot variable is drawn. |

## Attribute Descriptions

### **data**
* This attribute must be set to the variable that contains the vector
  components to be plotted.

### **field**
* This attribute is a list of the vector components to be plotted. For the
  typical meteorological case it would be the ['u-component',
  'v-component'].

### **time**
* This attribute should be set to a datetime object, the same as for all
  other declarative classes.

### **skip**
* Set this to an integer value to skip the plotting of wind barbs in the x
  and y directions to thin the number of wind barbs plotted.

### **barblength**
* This attribute sets the length of the wind barbs. The default value is
  based on the font size.

### **color**
* This attribute sets the color of the wind barbs, which can be any
  Matplotlib color. Default color is 'black'.

### **earth_relative**
* This attribute can be set to False if the vector components are grid
  relative (e.g., for NAM or NARR output)

### **pivot**
* This attribute can be set to a string value about where the wind barb
  will pivot relative to the grid point. Possible values include 'tip' or
  'middle'. Default is 'middle'.

### **mpl_args**
* This attribute can be set to a dictionary containing keyword arguments (kwarg)
  valid for the various Matplotlib plotting functions to enhance how a plot is
  created. For example, you can use this attribute to set the `zorder` kwarg to
  alter what aspects of the your plot are on top of one another.
