# SkewTs with Metpy

While plotting a Skew-T plot by hand is useful, it is faster to be able
to let a computer plot the data for you. However, there are many
different variables that you can specify so that it plots exactly what
you want. We can use elements of the MetPy module to create thermodynamic diagrams.
Additionally, we can use some simple techniques to further define the
stability of the atmosphere by drawing on our skew-t plot.

There is not a declarative syntax for plotting skew-Ts via MetPy, yet.
So, the coding that we'll be doing in this section will be slightly different
from what has been covered here so far, but hopefully not too much so.

Our ability to analyze the vertical profile of the atmosphere is a
critical tool for meteorologists and in Python we can access a single
profile from a sounding via Siphon and our remote data access protocols.
In this instance we are only going to grab data from one station,
instead of all of them as we have been doing over the course of this
semester.

```{note}
It is important to remember that upper air data are only collected at
synoptic times, that is, 0000 and 1200 UTC. Only on special occasions
are the sounding data at other times. This usually occurs on the plains
during severe weather season in which a sounding may be launched between
18 and 21 UTC. Soundings are only launched at certain places, or
stations.
```

## What stations?

You can visit <a href="http://www.rap.ucar.edu/weather/upper/" target="_blank">http://www.rap.ucar.edu/weather/upper/</a>
to locate the current available station IDs across the U.S. If you are looking for
older datasets, visiting the Wyoming Sounding archive
(<a href="http://weather.uwyo.edu/upperair/sounding.html" target="_blank">http://weather.uwyo.edu/upperair/sounding.html</a>)
webpage will allow you to determine which sounding sites are available during whatever time
period you specify.
