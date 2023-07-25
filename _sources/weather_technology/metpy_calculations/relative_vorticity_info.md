# Relative Vorticity

A similar thing would need to be done for calculating the relative
vorticity, where there are multiple pieces of data that must be gathered
from the gridded file and used in the final calculation.

```python
level = 500 * units.hPa
plot_time = model_run_time + timedelta(hours=0)

uwnd = ds['u-component_of_wind_isobaric'].metpy.sel(vertical=level, time=plot_time)
vwnd = ds['v-component_of_wind_isobaric'].metpy.sel(vertical=level, time=plot_time)

ds['relative_vorticity'] = mpcalc.vorticity(uwnd, vwnd)
```

[Relative Vorticity Calculation](https://unidata.github.io/MetPy/latest/api/generated/metpy.calc.vorticity.html)

Relative vorticity should be scaled in the same manner as the absolute
vorticity, so using the scale parameter to multiply by `1e5` would
accomplish that goal.