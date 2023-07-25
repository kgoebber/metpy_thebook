# Wind Speed

A common variable to plot on a 300-hPa or 250-hPa map would be the wind
speed. Due to the fact that that wind is a vector quantity and the
calculation of wind speed is finding the magnitude of this vector. MetPy
has this calculation available (called wind_speed) and the DataArray
that comes out of the calculation can be made into a new variable in our
Dataset.

Here is code that would accomplish calculating the wind speed from the
u- and v-components of the wind and immediately adding new variable
called wind_speed to the dataset. First the variables are pulled
from the Dataset (and subset if necessary), then used in the function
call to calculate wind speed.

```python
# Calculate Wind Speed

uwnd = ds['u-component_of_wind_isobaric']

vwnd = ds['v-component_of_wind_isobaric']

ds['wind_speed'] = mpcalc.wind_speed(uwnd, vwnd)
```

[MetPy wind_speed Documentation](https://unidata.github.io/MetPy/latest/api/generated/metpy.calc.wind_speed.html)