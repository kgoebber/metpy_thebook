# MetPy - `MapPanel()`

## [`MapPanel()`](https://unidata.github.io/MetPy/latest/api/generated/metpy.plots.MapPanel.html#metpy.plots.MapPanel)
  | Attribute | Description |
  | - | - |
  | [**layers**](https://unidata.github.io/MetPy/latest/api/generated/metpy.plots.MapPanel.html#metpy.plots.MapPanel.layers) | A list of strings for a pre-defined feature layer or a Cartopy Feature object. |
  | [**layers_edgecolor**](https://unidata.github.io/MetPy/latest/api/generated/metpy.plots.MapPanel.html#metpy.plots.MapPanel.layers_edgecolor) | A list of strings for a pre-defined edgecolor for a layer. |
  | [**layers_linewidth**](https://unidata.github.io/MetPy/latest/api/generated/metpy.plots.MapPanel.html#metpy.plots.MapPanel.layers_linewidth) | A list of values defining the linewidth for a layer. |
  | [**layout**](https://unidata.github.io/MetPy/latest/api/generated/metpy.plots.MapPanel.html#metpy.plots.MapPanel.layout) | A tuple that contains the description (nrows, ncols, index) of the panel position; default value is (1, 1, 1).
  | [**left_title**](https://unidata.github.io/MetPy/latest/api/generated/metpy.plots.MapPanel.html#metpy.plots.MapPanel.left_title) | A string to set a title for the figure with the location on the top left of the figure.
  | [**plots**](https://unidata.github.io/MetPy/latest/api/generated/metpy.plots.MapPanel.html#metpy.plots.MapPanel.plots) | A list of handles that represent the plots (e.g., [**PlotObs**](https://unidata.github.io/MetPy/latest/api/generated/metpy.plots.ContourPlot.html#metpy.plots.PlotObs), [**ContourPlot**](https://unidata.github.io/MetPy/latest/api/generated/metpy.plots.ContourPlot.html#metpy.plots.ContourPlot), [**FilledContourPlot**](https://unidata.github.io/MetPy/latest/api/generated/metpy.plots.FilledContourPlot.html#metpy.plots.FilledContourPlot), [**ImagePlot**](https://unidata.github.io/MetPy/latest/api/generated/metpy.plots.ImagePlot.html#metpy.plots.ImagePlot)) to put on a given panel. |
  | [**projection**](https://unidata.github.io/MetPy/latest/api/generated/metpy.plots.MapPanel.html#metpy.plots.MapPanel.projection) | A string for a pre-defined projection or a Cartopy projection object. |
  | [**right_title**](https://unidata.github.io/MetPy/latest/api/generated/metpy.plots.MapPanel.html#metpy.plots.MapPanel.right_title) | A string to set a title for the figure with the location on the top right of the figure. |
  | [**title**](https://unidata.github.io/MetPy/latest/api/generated/metpy.plots.MapPanel.html#metpy.plots.MapPanel.title) | A string to set a title for the figure. |
  | [**title_fontsize**](https://unidata.github.io/MetPy/latest/api/generated/metpy.plots.MapPanel.html#metpy.plots.MapPanel.title_fontsize) | An integer or string value for the font size of the title of the figure. |

## Attribute Descriptions

### **layout**
  * The Matplotlib layout of the figure. For a single panel figure the
   setting should be (1, 1, 1)

### **projection**
  * The projection can be set with the name of a default projection ('lcc', 'mer', or 'ps')
    or it can be set to a Cartopy projection.

### **layers**
  * This attribute will add map layers to identify boundaries or features to
    plot on the map. Valid layers are borders, coastline, states, lakes,
    land, ocean, rivers, counties.

### **layers_edgecolor**
  * This attribute will set the edgecolor for those values listed in the map
    layers attribute. Valid colors correspond to valid Matplotlib named
    colors.

### **layers_linewidth**
  * This attribute will set the linewidth (as a float) for those values
    listed in the map layers attribute.

### **area**
  * This attribute sets the geographical area of the panel. This can be set
    with a predefined name of an area including all US state postal
    abbreviations (e.g., 'us', 'natl', 'in', 'il', 'wi', 'mi', etc.) or a
    tuple value that corresponds to longitude/latitude box based on the
    projection of the map with the format (west-most longitude, east-most
    longitude, south-most latitude, north-most latitude). This tuple defines
    a box from the lower-left to the upper-right corner.

### **title**
  * This attribute sets a title for the panel in the center of the figure.

### **left_title**
  * This attribute sets a title for the panel at the left edge of the figure.

### **right_title**
  * This attribute sets a title for the panel at the right edge of the figure.

### **plots**
  * A list collecting the observations to be plotted in the panel.