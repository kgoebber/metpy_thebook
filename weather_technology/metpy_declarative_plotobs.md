# MetPy - `PlotObs`

To make a plot of observations requires the use of the `PlotObs` module from the MetPy declarative
syntax. This is a Class of the declarative syntax and note that Classes contain MiXeD case names. This class
contains a number of attributes that can be set to specify what and how to plot the data in a figure. The descriptions of some of the basic
elements of each element are given below.

## [`PlotObs()`](https://unidata.github.io/MetPy/latest/api/generated/metpy.plots.PlotObs.html#metpy.plots.PlotObs)
  | Attribute | Description |
  | - | - |
  | [**colors**](https://unidata.github.io/MetPy/latest/api/generated/metpy.plots.PlotObs.html#metpy.plots.PlotObs.colors) | List of the scalar and symbol field colors. |
  | [**data**](https://unidata.github.io/MetPy/latest/api/generated/metpy.plots.PlotObs.html#metpy.plots.PlotObs.data) | Pandas DataFrame that contains the fields to be plotted. |
  | [**fields**](https://unidata.github.io/MetPy/latest/api/generated/metpy.plots.PlotObs.html#metpy.plots.PlotObs.fields) | Name of the scalar or symbol fields to be plotted. |
  | [**fontsize**](https://unidata.github.io/MetPy/latest/api/generated/metpy.plots.PlotObs.html#metpy.plots.PlotObs.fontsize) | An integer value to set the font size of station plots. |
  | [**formats**](https://unidata.github.io/MetPy/latest/api/generated/metpy.plots.PlotObs.html#metpy.plots.PlotObs.formats) | List of the scalar, symbol, and text field data formats. |
  | [**level**](https://unidata.github.io/MetPy/latest/api/generated/metpy.plots.PlotObs.html#metpy.plots.PlotObs.level) | The level of the field to be plotted. |
  | [**locations**](https://unidata.github.io/MetPy/latest/api/generated/metpy.plots.PlotObs.html#metpy.plots.PlotObs.locations) | List of strings for scalar or symbol field plotting locations. |
  | [**plot_units**](https://unidata.github.io/MetPy/latest/api/generated/metpy.plots.PlotObs.html#metpy.plots.PlotObs.plot_units) | A list of the desired units to plot the fields in. |
  | [**reduce_points**](https://unidata.github.io/MetPy/latest/api/generated/metpy.plots.PlotObs.html#metpy.plots.PlotObs.reduce_points) | Float to reduce number of points plotted. |
  | [**time**](https://unidata.github.io/MetPy/latest/api/generated/metpy.plots.PlotObs.html#metpy.plots.PlotObs.time) | Set the valid time to be plotted as a datetime object. |
  | [**time_window**](https://unidata.github.io/MetPy/latest/api/generated/metpy.plots.PlotObs.html#metpy.plots.PlotObs.time_window) | Set a range to look for data to plot as a timedelta object. |
  | [**vector_field**](https://unidata.github.io/MetPy/latest/api/generated/metpy.plots.PlotObs.html#metpy.plots.PlotObs.vector_field) | List of the vector field to be plotted. |
  | [**vector_field_color**](https://unidata.github.io/MetPy/latest/api/generated/metpy.plots.PlotObs.html#metpy.plots.PlotObs.vector_field_color) | String color name to plot the vector. |
  | [**vector_field_length**](https://unidata.github.io/MetPy/latest/api/generated/metpy.plots.PlotObs.html#metpy.plots.PlotObs.vector_field_length) | Integer value to set the length of the plotted vector. |
  | [**vector_plot_units**](https://unidata.github.io/MetPy/latest/api/generated/metpy.plots.PlotObs.html#metpy.plots.PlotObs.vector_plot_units) | The desired units to plot the vector field in. |

## Attribute Descriptions

### **data**
  *  This attribute needs to be set to the DataFrame variable containing the fields that you desire to plot.

### **fields**
  * This attribute is a list of variable names from your DataFrame that you
    desire to plot at the given locations around the station model.

### **level**
  * For a surface plot this needs to be set to None.

### **time**
  * This attribute needs to be set to subset your data attribute for the
    time of the observations to be plotted. This needs to be a datetime
    object.

### **locations (optional)**
  * This attribute sets the location of the fields to be plotted around the
    surface station model. The default location is center ('C')

### **time_range (optional)**
  * This attribute allows you to define a window for valid observations
    (e.g., 15 minutes on either side of the datetime object setting. This
    is important for surface data since actual observed times are not all
    exactly on the hour. If multiple observations exist in the defined
    window, the most recent observations is retained for plotting
    purposes.

### **formats (optional)**
  * This attribute sets a formatter for text or plotting symbols around
    the station model. For example, plotting mean sea-level pressure is
    done in a three-digit code and a formatter can be used to achieve that
    on the station plot.

    MSLP Formatter: lambda v: format(10 \* v, \'.0f\')\[-3:\]

    For plotting symbols use the available MetPy options through their
    name. Valid symbol formats are current_weather, sky_cover, low_clouds,
    mid_clouds, high_clouds, and pressure_tendency.

### **colors (optional)**
  * This attribute can change the color of the plotted observation.
    Default is 'black'. Acceptable colors are those available through
    Matplotlib:
    <https://matplotlib.org/3.1.1/_images/sphx_glr_named_colors_003.png>

### **plot_units (optional)**
  * A list of the desired units to plot the fields in. Will only work if
    data have units attached.

### **vector_field (optional)**
  * This attribute can be set to a list of wind component values for
    plotting (e.g., \['uwind', 'vwind'\])

### **vector_field_color (optional)**
  * Same as colors except only controls the color of the wind barbs.
    Default is 'black'.

### **vector_field_length (optional)**
  * Set an integer value for the length of the plotted vector. Default is 6.

### **vector_plot_units (optional)**
  * The desired units you want the vector field plotted in. Will only work
    if data have units attached.

### **fontsize (optional)**
  * An integer value to set the font size of station plots. Default is 10 pt.

### **reduce_points (optional)**
  * This attribute can be set to a real number to reduce the number of
    stations that are plotted. Default value is zero (e.g., no points are
    removed from the plot).

### **fontsize (optional)**
  * This attribute can be set to an integer value to set the font size of
    station plots. Default is 10 pt.