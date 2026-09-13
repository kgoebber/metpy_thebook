# Smooth Contour

The attribute is best used to smooth contours when contouring a
sparse grid (e.g., when your data has a large grid spacing). This will
use a spline interpolation.

<a href="https://unidata.github.io/MetPy/latest/api/generated/metpy.plots.FilledContourPlot.html#metpy.plots.FilledContourPlot.smooth_contour" target="_blank">MetPy `smooth_contour` Documentation</a>

Here is an example ({numref}`Fig. %s <smoothcontour>`) of using `smooth_contour`,
notice how the black contours,
which have had no smoothing applied, have clear vertex points (e.g., angles) to the contours
whereas the red contours, which have been refitted with a zoom factor of four, are much smoother.

```{figure} ../../images/smooth_contour_example.png
:alt: Smoothed contour illustration
:width: 750px
:align: center
:name: smoothcontour

This map shows 500-hPa heights in solid black contours and smoothed contours
using the smooth_contour attribute in red using a zoom factor of 4.
```