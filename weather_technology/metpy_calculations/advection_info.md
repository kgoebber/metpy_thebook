# Advection

There are a number of different variables that could be advected in
the atmosphere including temperature, moisture, vorticity, smoke, etc.
Here we'll demonstrate advection using temperature since it is a type
of advection that is looked at very frequently and can have a large impact
on what we experience as the weather changes. To begin the calculation,
first isolate all of the variables you'll need
(e.g., temperature, u-component of the wind, and v-component of the
wind) for the level and time you are computing. Then feed those
variables into the calculation.

```python
level = 850 * units.hPa
plot_time = date + timedelta(hours=0)

tmpk = ds.Temperature_isobaric.metpy.sel(vertical=level, time=plot_time)
uwind = ds['u-component_of_wind_isobaric'].metpy.sel(vertical=level, time=plot_time)
vwind = ds['v-component_of_wind_isobaric'].metpy.sel(vertical=level, time=plot_time)

ds['temperature_advection'] = mpcalc.advection(tmpk, uwind, vwind)
```

<a href="https://unidata.github.io/MetPy/latest/api/generated/metpy.calc.advection.html" target="_blank">Advection Calculation Documentation</a>

Advection can be scaled a couple of different ways, but generally we
want to put it in terms of temperature per 3 hours. So, scaling by 10^4^
would approximately get you there.

```{note}
If you subset by time, set the time attribute to None.
```