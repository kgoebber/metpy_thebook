# Smoothing Data Fields

There are times you might want to smooth the raw values from your
gridded output to generate contours that better reflect what you would
produce through a hand analysis. There are a couple of functions that
you can use to accomplish this goal in MetPy, but we'll look at one
here.

One method of smoothing involves using points surrounding a given grid
point and averaging them in a thoughtful way to produce a grid of values
that vary in a more gradual manner. This *n-point smoothing* available
in MetPy can use either 5 or 9 points and can be run successively one or
more times. The more times smoothing is done, the less nuance will
appear in the contours, eventually not well representing reality. There
are two different options to smooth the look of plotted variables,
`smooth_field` and `smooth_contour`.
