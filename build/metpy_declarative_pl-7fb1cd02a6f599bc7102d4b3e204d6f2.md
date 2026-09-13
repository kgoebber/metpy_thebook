# MetPy - `PlotGeometry()`

Make raster plots by defining relevant traits.

## <a href="https://unidata.github.io/MetPy/latest/api/generated/metpy.plots.PlotGeometry.html" target="_blank">`PlotGeometry()`</a>
  | Attribute | Description |
  | - | - |
  | <a href="https://unidata.github.io/MetPy/latest/api/generated/metpy.plots.PlotGeometry.html#metpy.plots.PlotGeometry.fill" target="_blank">**fill**</a> | Fill color(s) for polygons and points.Fill color(s) for polygons and points. |
  | <a href="https://unidata.github.io/MetPy/latest/api/generated/metpy.plots.PlotGeometry.html#metpy.plots.PlotGeometry.geometry" target="_blank">**geometry**</a> | A collection of Shapely objects to plot. |
  | <a href="https://unidata.github.io/MetPy/latest/api/generated/metpy.plots.PlotGeometry.html#metpy.plots.PlotGeometry.label_edgecolor" target="_blank">**label_edgecolor**</a> | Outline color(s) for labels. |
  | <a href="https://unidata.github.io/MetPy/latest/api/generated/metpy.plots.PlotGeometry.html#metpy.plots.PlotGeometry.label_facecolor" target="_blank">**label_facecolor**</a> | Font color(s) for labels. |
  | <a href="https://unidata.github.io/MetPy/latest/api/generated/metpy.plots.PlotGeometry.html#metpy.plots.PlotGeometry.label_fontsize" target="_blank">**label_fontsize**</a> | An integer or string value for the font size of labels. |
  | <a href="https://unidata.github.io/MetPy/latest/api/generated/metpy.plots.PlotGeometry.html#metpy.plots.PlotGeometry.labels" target="_blank">**labels**</a> | A collection of labels corresponding to plotted geometry. |
  | <a href="https://unidata.github.io/MetPy/latest/api/generated/metpy.plots.PlotGeometry.html#metpy.plots.PlotGeometry.marker" target="_blank">**marker**</a> | Symbol used to denote points. |
  | <a href="https://unidata.github.io/MetPy/latest/api/generated/metpy.plots.PlotGeometry.html#metpy.plots.PlotGeometry.mpl_args" target="_blank">**level**</a> | Supply a dictionary of valid Matplotlib keyword arguments to modify how the plot variable is drawn. |
  | <a href="https://unidata.github.io/MetPy/latest/api/generated/metpy.plots.PlotGeometry.html#metpy.plots.PlotGeometry.stroke" target="_blank">**stroke**</a> | Stroke color(s) for polygons and line color(s) for lines. |
  | <a href="https://unidata.github.io/MetPy/latest/api/generated/metpy.plots.PlotGeometry.html#metpy.plots.PlotGeometry.stroke_width" target="_blank">**stroke_width**</a> | Stroke width(s) for polygons and lines. |


## Attribute Descriptions

### **fill**
  * Fill color(s) for polygons and points.
  
    A single string (color name or hex code) or collection of strings with which to fill polygons and
    points. If a collection, the first color corresponds to the first Shapely object in `geometry`, the
    second color corresponds to the second Shapely object, and so on. If `fill` is shorter than
    `geometry`, `fill` cycles back to the beginning, repeating the sequence of colors as needed. Default
    value is lightgray.

### **geometry**
  * A collection of Shapely objects to plot.
  
    A collection of Shapely objects, such as the ‘geometry’ column from a `geopandas.GeoDataFrame`.
    Acceptable Shapely objects are `shapely.MultiPolygon`, `shapely.Polygon`, `shapely.MultiLineString`,
    `shapely.LineString`, `shapely.MultiPoint`, and `shapely.Point`.

### **label_edgecolor**
  * Outline color(s) for labels.
  
    A single string (color name or hex code) or collection of strings for the outline color of labels.
    If a collection, the first color corresponds to the label of the first Shapely object in `geometry`,
    the second color corresponds to the label of the second Shapely object, and so on. Default value is
    `fill`.

### **label_fontcolor**
  * Font color(s) for labels.
  
    A single string (color name or hex code) or collection of strings for the font color of labels.
    If a collection, the first color corresponds to the label of the first Shapely object in `geometry`,
    the second color corresponds to the label of the second Shapely object, and so on. Default value is
    `fill`.

### **label_fontsize**
  * An integer or string value for the font size of labels.
  
    Accepts size in points or relative size. Allowed relative sizes are those of Matplotlib:
    ‘xx-small’, ‘x-small’, ‘small’, ‘medium’, ‘large’, ‘x-large’, ‘xx-large’.

### **labels**
  * A collection of labels corresponding to plotted geometry.
  
    A collection of strings to use as labels for geometry, such as a column from a
    `Geopandas.GeoDataFrame`. The first label corresponds to the first Shapely object in `geometry`,
    the second label corresponds to the second Shapely object, and so on. The length of `labels` must
    be equal to the length of `geometry`. Labels are positioned along the edge of polygons, and below
    lines and points. No labels are plotted if this attribute is left undefined, or set equal to None.

### **marker**
  * Symbol used to denote points.
  
    Accepts any matplotlib marker. Default value is ‘.’, which plots a dot at each point.

### **mpl_args**
  * This attribute can be set to a dictionary containing keyword arguments (kwarg)
  valid for the various Matplotlib plotting functions to enhance how a plot is
  created. For example, you can use this attribute to set the `zorder` kwarg to
  alter what aspects of the your plot are on top of one another. NOTE: Setting
  the mpl_args trait will override any other trait that corresponds to a specific
  kwarg for the particular plot type (e.g., linecolor, linewidth).

### **stroke**
  * Stroke color(s) for polygons and line color(s) for lines.
    
    A single string (color name or hex code) or collection of strings with which to outline polygons and
    color lines. If a collection, the first color corresponds to the first Shapely object in `geometry`,
    the second color corresponds to the second Shapely object, and so on. If `stroke` is shorter than
    `geometry`, `stroke` cycles back to the beginning, repeating the sequence of colors as needed.
    Default value is black.

### **stroke_width**
  * Stroke width(s) for polygons and lines.
  
    A single integer or floating point value or collection of values representing the size of the stroke
    width. If a collection, the first value corresponds to the first Shapely object in `geometry`, the
    second value corresponds to the second Shapely object, and so on. If `stroke_width` is shorter than
    `geometry`, `stroke_width` cycles back to the beginning, repeating the sequence of values as needed.
    Default value is 1.
