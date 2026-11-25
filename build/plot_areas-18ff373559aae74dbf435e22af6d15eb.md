# Setting the Plot Area

The area can be set to a string using a common state or country postal abbreviation:

`panel.area = ‘us’` or `panel.area = 'in'`

or a special name of a pre-defined area, such as:

`panel.area = ‘uslcc’`

and you can add a plus (`+`) or minus sign (`-`) to the abbreviation to zoom in or out, respectively.

Additionally, you can set the area with a list of longitude and latitude values to get a more precise area for
what you are attempting to plot. The list goes in the order of the west longitude, east longitude,
southern latitude, northern latitude. For example, to plot over the continental United States
(CONUS) you might prefer:

`panel.area = [-124, -72, 24, 50]`

A full list of valid areas is contained within the MetPy documentation. You can see that
list and a basic visualization of the area using the default projection for that area
at: <a href="https://unidata.github.io/MetPy/latest/api/areas.html" target="_blank">https://unidata.github.io/MetPy/latest/api/areas.html</a>
