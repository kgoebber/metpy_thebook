# MetPy - `PanelContainer()`

## <a href="https://unidata.github.io/MetPy/latest/api/generated/metpy.plots.PanelContainer.html#metpy.plots.PanelContainer" target="_blank">`PanelContainer()`</a>
  | Attribute | Description |
  | - | - |
  | <a href="https://unidata.github.io/MetPy/latest/api/generated/metpy.plots.PanelContainer.html#metpy.plots.PanelContainer.panels" target="_blank">**panels**</a> | A list of panels to plot on the figure. |
  | <a href="https://unidata.github.io/MetPy/latest/api/generated/metpy.plots.PanelContainer.html#metpy.plots.PanelContainer.size" target="_blank">**size**</a> | This trait takes a tuple of (width, height) to set the size of the figure. |

## Attribute Descriptions

### **size**
  * The size of the figure in inches (e.g., (10, 8))

### **panels**
  * A list collecting the panels to be plotted in the figure.

### **show**
  * Calling this will show the image.

### **save**
  * Setting this attribute will allow you to save the figure to a specified
    filename given in a string. Additional arguments can be passed in accordance
    with those from `matplotlib.savefig`.