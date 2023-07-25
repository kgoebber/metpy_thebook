# Operational NWP Models

There are three primary synoptic models that are used for forecasting across the
United States: the Rapid Refresh (RAP), the North American Model (NAM),
and the Global Forecast System (GFS) model. All three models have a
slightly varying purpose and have different forecast periods, which are
summarized below.

| | RAP | NAM | GFS |
| - | - | - | - |
| Forecast Hours | 48 | 84 | 384
| Model Type | Grid Point | Grid Point | Finite Volume |
| Output Time | Every hour | Every three hours | Every six hours |
| Areal Coverage | Regional (U.S.) | Regional (NA) | Global |
| Runs | Every hour | 00, 06, 12, 18 UTC | 00, 06, 12, 18 UTC |

For more information on these and other models run by governments across the world
check out the [Operational Models Encyclopedia](https://sites.google.com/ucar.edu/operational-models-encyclo/home).

To access forecast hours from a model file you would simply input how
many hours into the future you desire into a timedelta function and add
it to your date variable. If model run time is set as,

```python
model_run_time = datetime(2020, 2, 20, 12)
```

Then if you wanted the six-hour forecast then,

```python
plot_time = model_run_time + timedelta(hours=6)
```

or the 24-hour forecast

```python
plot_time = model_run_time + timedelta(hours=24)
```

or the 120-hour forecast

```python
plot_time = model_run_time + timedelta(hours=120)
```
