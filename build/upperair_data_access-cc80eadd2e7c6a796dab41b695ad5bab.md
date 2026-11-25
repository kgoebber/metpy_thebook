# Accessing Upperair Data

There are currently two different data sources that
provide access to current and archived upperair observations:
Iowa State and University of Wyoming.

## Iowa State Upperair Data Access
This dataset is best for requests needing access to a single level
of data for multiple upperair stations at a single time period. For example,
when requesting 850-hPa data to plot an 850-hPa map across
the continental United States.

```python
from datetime import datetime

from metpy.io import add_station_lat_lon
from siphon.simplewebservice.iastate import IAStateUpperAir

# Set date for desired UPA data
date = datetime(2021, 12, 31, 0)

# Request data using Siphon request for data from Iowa State Archive
df = IAStateUpperAir.request_all_data(date)

# Add lat/long data and drop stations for which we don't have lat/lons
df = add_station_lat_lon(df, 'station').dropna(subset=['latitude', 'longitude'])

# Eliminate the station KVER
df = df[df.station != 'KVER']
```

The code above will gather all of the available upperair observations (for North
America) for the given date, then add station latitude and longitude information
for each station and get rid of any that were left with N/A locations. Additionally,
the final line will remove the 'KVER' station as MetPy currently gives the station
information for a surface observation site in the state of Missouri as opposed to
the actual location in Mexico. The data retrieved will have ALL of the pressure levels
reported for each station and you can subset to a particular desired level for plotting
purposes within the declarative syntax.

## Wyoming Sounding Data Access
This dataset is best used for requests for the entire vertical profile for
a single station at a single time. For example, if you are attempting to plot
a skew-T log-p diagram, this would be an optimal data source.

```python
from datetime import datetime

from siphon.simplewebservice.wyoming import WyomingUpperAir

# Set date that you want
# Data goes back to the 1970's
date = datetime(2007, 5, 4, 12)

# Set station ID, there are different stations back in the day
# Current station IDs found at http://weather.rap.ucar.edu/upper
station = 'DDC'

# Use Siphon module to grab data from remote server
df = WyomingUpperAir.request_data(date, station)
```

Here the above code will use the combination of the station string
and the date to obtain a single vertical profile for the station
at the given time.

:::{note}
Station locations and names have changed with time, so you may have to
look up historic three letter identifiers to obtain the data you want,
especially if you are accessing data from prior to the year 2000.
:::
