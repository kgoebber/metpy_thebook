# Derived Atmospheric Parameters

So far we have focused on plotting variables that exist in a given
data file (e.g., temperature, mean sea-level pressure, geopotential heights).
However, there may be times when you will want to plot an atmospheric
variable (e.g., thickness, temperature advection, relative vorticity,
divergence) that is not in the model output file. For that we will have to
learn (or remember) a little math and how we can calculate new variables in
using MetPy calculations.

In this chapter you will learn about a few of the common derived variables (e.g.,
atmospheric thickness, vorticity, absolute vorticity, and advection) we can use to
describe different aspects of the atmosphere. The following chapter will
demonstrate how variables can be easily calculated through either simple
mathematical operations or from functions built into the MetPy module.
Certain functions will only be able to be used on model output or other
***gridded*** data, and *not* actual surface or upper-air observations.
Others will work for point observations only. However, we will start
this chapter by describing the importance of some of these important
and interesting meteorological parameters.