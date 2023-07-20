# MetPy - `BarbPlot()`

This class is designed to plot wind barbs from gridded data, most commonly
model output from the GFS, NAM, or RAP.

## [`BarbPlot()`](https://unidata.github.io/MetPy/latest/api/generated/metpy.plots.BarbPlot.html)
  | Attribute | Description |
  | - | - |
  | [**barblength**](https://unidata.github.io/MetPy/latest/api/generated/metpy.plots.BarbPlot.html#metpy.plots.BarbPlot.barblength) | A float value that changes the length of the wind barbs. |
  | [**color**](https://unidata.github.io/MetPy/latest/api/generated/metpy.plots.BarbPlot.html#metpy.plots.BarbPlot.color) | A string value that controls the color of the vectors. |
  | [**data**](https://unidata.github.io/MetPy/latest/api/generated/metpy.plots.BarbPlot.html#metpy.plots.BarbPlot.data) | Xarray dataset that contains the field to be plotted. |
  | [**earth_relative**](https://unidata.github.io/MetPy/latest/api/generated/metpy.plots.BarbPlot.html#metpy.plots.BarbPlot.earth_relative) | A boolean value to indicate whether the vector to be plotted is earth- or grid-relative. |
  | [**field**](https://unidata.github.io/MetPy/latest/api/generated/metpy.plots.BarbPlot.html#metpy.plots.BarbPlot.field) | A tuple containing the two components of the vector field from the dataset in the form (east-west component, north-south component). |
  | [**level**](https://unidata.github.io/MetPy/latest/api/generated/metpy.plots.BarbPlot.html#metpy.plots.BarbPlot.level) | The level of the field to be plotted. |
  | [**pivot**](https://unidata.github.io/MetPy/latest/api/generated/metpy.plots.BarbPlot.html#metpy.plots.BarbPlot.pivot) | A string setting the pivot point of the vector. |
  | [**plot_units**](https://unidata.github.io/MetPy/latest/api/generated/metpy.plots.BarbPlot.html#metpy.plots.BarbPlot.plot_units) | The desired units to plot the field in. |
  | [**scale**](https://unidata.github.io/MetPy/latest/api/generated/metpy.plots.BarbPlot.html#metpy.plots.BarbPlot.scale) | Scale the field to be plotted by the value given. |
  | [**skip**](https://unidata.github.io/MetPy/latest/api/generated/metpy.plots.BarbPlot.html#metpy.plots.BarbPlot.skip) | A tuple of integers to indicate the number of grid points to skip between plotting vectors. |
  | [**time**](https://unidata.github.io/MetPy/latest/api/generated/metpy.plots.BarbPlot.html#metpy.plots.BarbPlot.time) | Set the valid time to be plotted as a datetime object. |

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