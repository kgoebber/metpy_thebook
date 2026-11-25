# Scaling Parameters

The current GFS output includes the absolute vorticity parameter at a
limited number of pressure levels (Absolute_vorticity_isobaric), but
typically we plot it at only 500 hPa. However, the values of vorticity
are very small, on the order of $10^{-5}$ $s^{-1}$. For plotting purposes, we
would rather have our data able to plot using whole values (e.g., 1, 2,
3, 4, 5, etc.), so we'll need to scale the values from the model, which
is a simple multiplication problem.

To scale the absolute vorticity appropriately we would need to multiply
by 1e5 (which is equivalent to $1*10^5$). You can use the
<a href="https://unidata.github.io/MetPy/latest/api/generated/metpy.plots.ContourPlot.html#metpy.plots.ContourPlot.scale" target="_blank">scale parameter</a>
to accomplish this task.

Using the scale parameter will allow you to plot common values of
absolute vorticity using a range of -10 to 45.