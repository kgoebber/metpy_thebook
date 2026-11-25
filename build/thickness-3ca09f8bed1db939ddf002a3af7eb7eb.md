# Atmospheric Thickness

The atmosphere is a compilation of a number of different gases,
primarily nitrogen, oxygen, and argon. Atmospheric gases respond to the
changing temperature of the atmosphere by expanding or contracting. This
expansion or contraction due to a change in temperature is related to
the pressure through the ideal gas law, thus the heights of our pressure
surfaces will change proportionally to a change in temperature. One way
to view the atmosphere then is as the difference of two pressure levels
(e.g., 1000 and 500 hPa). The thickness of the layer between the 1000
and 500 hPa surface is proportional to the temperature of that layer. A
warm layer will have a larger thickness than a cold layer
({numref}`Fig. %s <thermalwind>`). The *hypsometic equation* will tell
us how "thick" a given portion of the atmosphere will be.

$$
Thickness = z_2 - z_1 = \frac{R_d \cdot \bar{T_{v}}}{g} ln \bigg(\frac{p_1}{p_2} \bigg)
$$

The thickness between our 1000 and 500 hPa surfaces will simply be the
difference between the two geopotential heights of those pressure surfaces
($z_1$ and $z_2$). Since the value of gravity ($g$), the gas constant
($R_d$), and the pressure levels ($p_1$, $p_2$) don't change, the thickness is
directly proportional (related) to the average virtual temperature ($T_v$)
of the thickness layer. If we know the height levels of two atmospheric
levels, we can directly calculate the thickness.

```{note}
The use of $z_2$ would mean the geopotential height from a pressure level
that is higher up in the atmosphere (e.g., 500 hPa) compared to the $z_1$
level (e.g., 1000 hPa).
```

This can be calculated easily in GEMPAK using the sub function. You can
calculate 1000-500 hPa thickness or 850-700 hPa thickness. But you may
ask why? Well, since thickness is proportional to average temperature of
that layer, thickness can be used as a first guess for precipitation
type. If the average temperature of the layer is at or below freezing
(273.15 K), then the possibilities of some mix of frozen precipitation
increases. For predicting snow, you would need a 1000-500 hPa thickness
of no more than 5400 m.