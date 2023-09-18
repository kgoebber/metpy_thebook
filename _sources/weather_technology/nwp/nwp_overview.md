# NWP Overview

There are different ways to set up a model, we'll describe some of the basics of numerical
weather prediction using grid cells ({numref}`Fig. %s <modelschematic>`). In the figure
below, a global model representation depicts a a three-dimensional grid that carves up the
atmosphere into cubes. The same would be true for a regional model over the limited domain
of that model, instead of the full globe. 

```{figure} ../../images/Global_Climate_Model.png
:alt: Global model schematic
:width: 750px
:align: center
:name: modelschematic

This annotated schematic illustrates different components to a global model.
Annotated version of image from <a href="https://en.wikipedia.org/wiki/Climate_model#/media/File:Global_Climate_Model.png" target="blank">https://en.wikipedia.org/wiki/Climate_model#/media/File:Global_Climate_Model.png</a>
```
## Model Resolution
The size of the model grid cubes plays a large role in what weather phenomenon will be
well represented. Something becomes resolved in a model when the size of the feature
is at least eight times bigger than the grid spacing. For example, if the spacing between
the grid cubes are 13 km, then only a feature bigger than 104 km would have the chance of being
accurately represented within the model. As the grid spacing gets smaller, then a model
will be able to more accurately represent smaller features. But there are still lots of things
happening in the atmosphere that are smaller, much smaller, than even the grid spacing of
any feasible forecasting model. The main aspect that is represented on our grid scale in a model
are advections and fluxes.

## Parameterization
For those elements that would be too small to be represented on a grid, those elements are
said to be parameterized. Things like incoming solar radiation, outgoing longwave radiation,
cloud microphysics, precipitation, convection (in some instances), turbulence, surface-land
interactions, etc. These are still represented mathematically in order to obtain the most
accurate representation of the current and future state of the atmosphere.

## Convection Allowing Models (CAMs)
There are a current suite of mesoscale models that have small enough grid spacings that at least
some convection can be resolved on the grid (grid spacings <= 4 km>). In these instances, convection
is NOT parameterized, or at least not fully parameterize. Generally, these kinds of models give
a better representation of high intensity rainfall that can be produced by thunderstorms when
compared to models that require a parameterization. However, due to the inherent limitations
in modeling the future state of the atmosphere, the time, location, and structure of any modeled
convection could be wrong.

There is so much more that goes into NWP and being able to produce high quality, accurate forecasts
from these tools that go beyond the scope of this text. I encourage you to seek out additional
information from other courses, COMET modules, and other resources to understand how and why
these models are constructed and work.