# Stability Indices

To quickly assess the stability of the atmosphere, many different
stability indices have been developed to give a quick, one value
snapshot of the vertical stability. Some of the most common measures
are: Lifted Index (LI) and Convectively Available Potential Energy
(CAPE). We will review the basics of these two parameters, how they are
calculated, and what they imply about the stability of the atmosphere.

## Lifted Index

The Lifted Index (LI) is calculated from the difference between the
environmental temperature at 500 hPa and the surface parcel temperature
at 500 hPa. Mathematically LI can be described as,

$LI = T_{{ENV}_{500}} - T_{{PARCEL}_{500}}$

Typical values for LI and likely weather associated with those values:
  | LI Value |  |
  | - | - |
  | \> +2 | No convective activity |
  | 0 -- +2 | Showers probable, isolated T-storms possible |
  | \-2 -- 0 | Thunderstorms probable |
  | \-4 -- -2 | Severe T-storms possible |
  | \< -4 | Severe T-storms probable, tornadoes possible |

The associated weather is if the atmosphere is otherwise conditioned for
precipitation and convective weather. One major drawback of using LI as
a forecast tool is that it is only a look at the stability of one level
of the atmosphere, which may or may not play an important role in a
particular forecast.

## CAPE

The Convectively Available Potential Energy (CAPE) is defined as the
'positive' area on a skew-t chart between the environmental temperature
profile and the parcel path, and furthermore between the LFC and the
Equilibrium Level. Mathematically CAPE can be described by,

$$
CAPE = R_d \int_{LFC}^{EL} \frac{T(p)-T_a(p)}{p} dp
$$

Where EL is the equilibrium level, $R_d$ is the gas constant, LFC is the
level of free convection, $T(p)$ is the parcel temperature at pressure
level $p$ in Kelvin, and $T_a(p)$ is the environmental temperature at
pressure $p$ in Kelvin.

  | CAPE Value |  |
  | - | - |
  | < 1000 J kg^{-1} | Weak instability |
  | 1000 -- 2500 | Moderate instability |
  | 2500 -- 5000 | Strong instability |
  | > 5000 | Extreme instability |

Once major advantage of CAPE is that it is an integrated value through
the atmosphere considering the changing parcel profile and environmental
profile.
