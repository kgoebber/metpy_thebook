# Using Projections

There are three pre-defined projections that can be used, `‘lcc’`, `‘mer’`, `‘ps’`, or `'area'`.

`lcc`: Lambert Conic Conformal
 * central latitude of 40ºN; central longitude -100ºE; standard parallels of 30º and 60ºN

`mer`: Mercator

`ps`: Polar Stereographic
 * central longitude -100ºE

`area`: Uses the projection associated with the named area string
 * To use this you *must* have a valid string in the `area` setting for `MapPanel()`.

Additionally, the projection can also be set to any valid Cartopy Projection...

Cartopy Projections: <a href="https://cartopy.readthedocs.io/stable/" target="_blank">https://cartopy.readthedocs.io/stable/</a>

To use a Cartopy Projection you need to add to your import list the following:

```python
import cartopy.crs as ccrs
```

Then you can specify any projection (with arguments as needed). For example,

```python
panel.projection = ccrs.PlateCarree()
```

or

```python
panel.projection = ccrs.Miller()
```

This is especially useful if you are plotting a map panel over a given state or region that might be better
to have a different rotation than what are in the preset projections.
