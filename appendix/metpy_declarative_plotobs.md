# MetPy - `PlotObs()`

To make a plot of observations requires the use of the `PlotObs` module from the MetPy declarative
syntax. This is a Class of the declarative syntax and note that Classes contain MiXeD case names. This class
contains a number of attributes that can be set to specify what and how to plot the data in a figure. The descriptions of some of the basic
elements of each element are given below.

## <a href="https://unidata.github.io/MetPy/latest/api/generated/metpy.plots.PlotObs.html#metpy.plots.PlotObs" target="_blank">`PlotObs()`</a>
  | Attribute | Description |
  | - | - |
  | <a href="https://unidata.github.io/MetPy/latest/api/generated/metpy.plots.PlotObs.html#metpy.plots.PlotObs.colors" target="_blank">**colors**</a> | List of the scalar and symbol field colors. |
  | <a href="https://unidata.github.io/MetPy/latest/api/generated/metpy.plots.PlotObs.html#metpy.plots.PlotObs.data" target="_blank">**data**</a> | Pandas DataFrame that contains the fields to be plotted. |
  | <a href="https://unidata.github.io/MetPy/latest/api/generated/metpy.plots.PlotObs.html#metpy.plots.PlotObs.fields" target="_blank">**fields**</a> | Name of the scalar or symbol fields to be plotted. |
  | <a href="https://unidata.github.io/MetPy/latest/api/generated/metpy.plots.PlotObs.html#metpy.plots.PlotObs.fontsize" target="_blank">**fontsize**</a> | An integer value to set the font size of station plots. |
  | <a href="https://unidata.github.io/MetPy/latest/api/generated/metpy.plots.PlotObs.html#metpy.plots.PlotObs.formats" target="_blank">**formats**</a> | List of the scalar, symbol, and text field data formats. |
  | <a href="https://unidata.github.io/MetPy/latest/api/generated/metpy.plots.PlotObs.html#metpy.plots.PlotObs.level" target="_blank">**level**</a> | The level of the field to be plotted. |
  | <a href="https://unidata.github.io/MetPy/latest/api/generated/metpy.plots.PlotObs.html#metpy.plots.PlotObs.locations" target="_blank">**locations**</a> | List of strings for scalar or symbol field plotting locations. |
  | <a href="https://unidata.github.io/MetPy/latest/api/generated/metpy.plots.PlotObs.html#metpy.plots.PlotObs.plot_units" target="_blank">**plot_units**</a> | A list of the desired units to plot the fields in. |
  | <a href="https://unidata.github.io/MetPy/latest/api/generated/metpy.plots.PlotObs.html#metpy.plots.PlotObs.reduce_points" target="_blank">**reduce_points**</a> | Float to reduce number of points plotted. |
  | <a href="https://unidata.github.io/MetPy/latest/api/generated/metpy.plots.PlotObs.html#metpy.plots.PlotObs.time" target="_blank">**time**</a> | Set the valid time to be plotted as a datetime object. |
  | <a href="https://unidata.github.io/MetPy/latest/api/generated/metpy.plots.PlotObs.html#metpy.plots.PlotObs.time_window" target="_blank">**time_window**</a> | Set a range to look for data to plot as a timedelta object. |
  | <a href="https://unidata.github.io/MetPy/latest/api/generated/metpy.plots.PlotObs.html#metpy.plots.PlotObs.vector_field" target="_blank">**vector_field**</a> | List of the vector field to be plotted. |
  | <a href="https://unidata.github.io/MetPy/latest/api/generated/metpy.plots.PlotObs.html#metpy.plots.PlotObs.vector_field_color" target="_blank">**vector_field_color**</a> | String color name to plot the vector. |
  | <a href="https://unidata.github.io/MetPy/latest/api/generated/metpy.plots.PlotObs.html#metpy.plots.PlotObs.vector_field_length" target="_blank">**vector_field_length**</a> | Integer value to set the length of the plotted vector. |
  | <a href="https://unidata.github.io/MetPy/latest/api/generated/metpy.plots.PlotObs.html#metpy.plots.PlotObs.vector_plot_units" target="_blank">**vector_plot_units**</a> | The desired units to plot the vector field in. |
  | <a href="https://unidata.github.io/MetPy/latest/api/generated/metpy.plots.PlotObs.html#metpy.plots.PlotObs.mpl_args" target="_blank">**mpl_args**</a> | Supply a dictionary of valid Matplotlib keyword arguments to modify how the plot variable is drawn. |

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
    (e.g., 15 minutes on either side of the datetime object setting). This
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
    plotting (e.g., ['uwind', 'vwind'])

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

### **mpl_args**
* This attribute can be set to a dictionary containing keyword arguments (kwarg)
  valid for the various Matplotlib plotting functions to enhance how a plot is
  created. For example, you can use this attribute to set the `zorder` kwarg to
  alter what aspects of the your plot are on top of one another.