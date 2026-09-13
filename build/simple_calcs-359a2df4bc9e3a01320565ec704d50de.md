# Simple Calculations

The simple calculations cab be done with the simple mathematical symbols
and then add that calculation to a dataset.

```python
ds['variable_name'] = <mathematical calculation>
```

A new variable can be added to a dataset (ds) by defining the name
within quote marks on the left-hand side of the equal sign in the same
way as we did with a Pandas DataFrame earlier in the semester. Then the
mathematical calculation can be completed on the right-hand side using
at least one variable already in the dataset.

***THICKNESS***

To understand the function and how it works, let's calculate the
geopotential thickness between 500 and 1000-hPa. Recall from previous
material:

$$\text{1000-500-hPa Thickness} = z_{500} - z_{1000}$$

So, to compute thickness in Python is a straightforward geopotential
height (z) difference between two pressure levels, the most common
thickness is the 1000-500-hPa Geopotential Height Thickness. This
parameter can be calculated using the following code:

```python
hght_500 = ds.Geopotential_height_isobaric.metpy.sel(time=plot_time,
    vertical=500 * units.hPa).metpy.quantify()

hght_1000 = ds.Geopotential_height_isobaric.metpy.sel(time=plot_time,
    vertical=1000 * units.hPa).metpy.quantify()

ds['thickness'] = (hght_500 - hght_1000).metpy.dequantify()
```

This code would add the 1000-500-hPa thickness to the dataset and be
able to be readily plotted. The first two lines extract the 500 and
1000-hPa Geopotential heights from our Dataset and quantify them (make
them unit arrays). The third line computes the thickness from the
variables that we just created, then we dequantify the variable to make
it back into a DataArray style for use in our Dataset.