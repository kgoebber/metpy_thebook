# Introduction to Surface Observations

**Surface Data**

The most basic of atmospheric measurements started at the surface.
Before the advent of instruments like the thermometer and barometer
(yes; there were times when we didn't have these basic instruments),
people recorded whether the weather was warm or cold. Unfortunately,
humans can only detect a minimum change in temperature of around 5°F.
Since we live on Earth's surface, it is easiest to get our measurements
there. But the more important question may be, what variables are
important and *why*?

What do you think are the most important surface variables and why?

A goal for every meteorologist is to be able to explain the variations
in atmospheric parameters that we observe. Today we will focus on the
surface variables and their spatial variation. There are many variables
that are important and we have to somehow get all of them plotted on a
single map, for multiple stations. Doing so will benefit a meteorologist
immensely because there will be a wealth of information literally at
their fingertips. The following section describes how we can compactly
write the surface data in a concise format on a weather map.

## Review of Station Models

**SURFACE STATION MODEL**
<p align="center">
<img src="../images/surface_station_model.png" width="300" height="300">
</p>
**ff** is the "flag". It represents the wind speed. A half stick
represents 5 kts, a full stick is 10 kts, and a filled in triangle is 50
kts.

**dd** is the wind direction. It always points in the direction FROM
which the wind is blowing

**TT** is the temperature. In the United States it is typically in °F
while in every other part of the world it typically is °C (Assume °F
unless otherwise specified for this class.)

**VV** is the visibility in statute miles.

**ww** is the present weather condition. This is typically a symbol.
Please see later portions of this hand out for what these symbols are.

**T~d~T~d~** is the dewpoint temperature. It follows the same unit
convention as the temperature.

**PPP** is the sea-level pressure to the nearest tenth of a unit. The
units are typically hectopascals (hPa), which is equivalent to millibars
(mb). You need to add either a 10 or a 9 to the front end of this given
number (whichever beings the pressure closer to 1000).

**pp** is the pressure tendency over the previous 3 hours given in
tenths of a unit. Typically a "slash" is present as well indicating if
the pressure is rising (/) or falling (\\).

**N** is the sky cover in oktas (eighths).

> Clear = A circle with nothing in it.
>
> 1 Okta = A circle with a single vertical line in the middle
>
> 2 Oktas = A circle with the upper right quadrant filled in.
>
> 3 Oktas = A circle with a single vertical line in the middle AND the
> upper right quadrant filled in.
>
> 4 Oktas = A circle with the right half filled in
>
> 5 Oktas = A circle with a single horizontal line in the middle AND the
> right half filled in.
>
> 6 Oktas = A circle with the right half and bottom right quadrant
> filled in.
>
> 7 Oktas = A circle that is filled in EXCEPT a single vertical line in
> the middle.
>
> 8 Oktas = A circle that is filled in completely.
>
> Obscured Sky = A circle with an X in it.

Please note that this is not all-inclusive. There is additional
information that can be displayed on a surface station plot; however,
this covers the basics.

**Observational Charts -- Surface Chart**

Making and reading our surface charts are important, as it is essential
to read them quickly to diagnose the constantly changing environment. A
surface map can tell you a lot of information about the current
environment. Observations near big bodies of water will likely have
differing characteristics than stations just a little farther inland.
Additionally, there will be differences between observations near cities
versus out in the middle of cornfields. These variations in
meteorological parameters could be very important to the future
evolution of the weather at a given location. Therefore, it is important
to completely understand how surface maps are created and be able to
explain meteorological differences between different regions.

We have previously described how to read a surface observation, now we
will create our own surface maps using the computer.
