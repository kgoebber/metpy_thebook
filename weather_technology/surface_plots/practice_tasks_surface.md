# Surface Observation Practice Tasks

So, what did we set? Just the required and a few of the optional
parameters to make a plot. Use the practice tasks below to explore more
of the options.

1.  Open a new notebook and make a plot of temperatures and dewpoints
    using different colors.

2.  Plot the full surface station model (e.g., temperature, dewpoint,
    MSLP, current weather, and wind speed and direction) over Oklahoma.

3.  Plot the temperature with temperatures equal to or less than 32
    colored blue and greater than 32 colored red.

    **Note**: *You'll have to subset your DataFrame and plot to sets of
    observations. To subset a DataFrame it would look something like:*

    `obs.data = df[df.air_temperature <= 0]`

    *which would only plot observations where the air temperature was less than or equal to 0.*
