# Smooth Field

Use the smooth_field smoothing for data with finer resolutions (e.g.,
smaller grid spacings with a lot of grid points). This will
produce smoothed geopotential heights for all levels available in the
DataArray using the nine-point smoother twice or the number of iterations
given as an integer.

<a href="https://unidata.github.io/MetPy/latest/api/generated/metpy.plots.ContourPlot.html#metpy.plots.ContourPlot.smooth_field" target="_blank">MetPy `smooth_field` Documentation</a>

Here is an example ({numref}`Fig. %s <smoothfield>`) of using `smooth_field`,
notice how the black contours,
which have had no smoothing applied, are not smooth over the Rocky Mountain
region whereas the red contours, which have been smoothed through four iterations,
are noticeably smoother over the mountain region.

```{figure} ../../images/smooth_field_example.png
:alt: Smoothed field illustration
:width: 750px
:align: center
:name: smoothfield

This map shows 300-hPa heights in solid black contours and smoothed contours
using the smooth_field attribute in red.
```