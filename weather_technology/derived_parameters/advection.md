# Advection
Advection is the horizontal transport of some variable. One of the most
common advections that meteorologists investigate is temperature
advection. As we saw in the previous section, we can view the change in
temperature to be attributable to two different parts, a local time rate
of change and an advective component.

$$
\frac{\text{DT}}{\text{Dt}} = \frac{\partial T}{\partial t} + 
\overrightarrow{u} \bullet \nabla T = \frac{\Delta T}{\Delta t} + 
u\frac{\Delta T}{\Delta x} + v\frac{\Delta T}{\Delta y}
$$

The second term (boxed) on the right-hand side of the equation is the
advective term. This basically states that the wind (*u, v*) will push
the temperature gradient ($\nabla T = \bigg <\frac{\Delta T}{\Delta x}, \frac{\Delta T}{\Delta y} \bigg >$)
around. Depending on the orientation of the temperature gradient and the wind speed and
direction we can get warm or cold air advection to occur over a region.
Let's look at this schematically to get a better understanding.

:::{table}
| | |
| :-: | :-: |
| <img src="../../images/max_advection.png" alt="maxadv" width="200px"> | <img src="../../images/no_advection.png" alt="noadv" width="200px"> |
| a) **Max Advection** | b) **No Advection** |
:::

If the arrow gives the wind, the left image clearly has cold air
advection as the wind is pushing the cold air into the warmer air. The
advection of a variable is maximized when the isopleths of the variable
being advected is perpendicular to the wind. In the right image, there
is no advection since the isotherms are parallel to the wind, thus the
wind is not pushing warmer air into colder air or vice versa.