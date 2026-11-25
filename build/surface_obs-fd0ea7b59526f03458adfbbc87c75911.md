# Review of Surface Station Models

## SURFACE STATION MODEL
<!-- <p align="center">
<img src="../images/surface_station_model.png" width="300" height="300">
</p> -->

```{figure} ../../images/surface_station_model.png
:alt: surface station model
:width: 300px
:height: 300px
:align: center
:name: sfc_station_model

This is the example station model, each element is described below.
```

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

**T<sub>d</sub>T<sub>d</sub>** is the dewpoint temperature. It follows the same unit
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
