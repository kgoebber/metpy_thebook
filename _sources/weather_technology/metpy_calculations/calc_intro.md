# Calculations with MetPy

As mentioned in the previous chapter, there may be times when you will want
to plot an atmospheric variable (e.g., thickness, temperature advection,
relative vorticity, divergence) that is not in the model output file. For
that we will have to learn (or remember) a little math and how we can
calculate new variables in using MetPy calculations.

Armed with a better understanding of why we care about thickness, the
general role of vorticity, and how advection is a fancy term for
horizontal transport (of a property) variables can be easily calculated
through either simple mathematical operations or from functions built
into the MetPy module. Certain functions will only be able to be used on
model output or other ***gridded*** data, and *not* actual surface or
upper-air observations. Others will work for point observations only.
Here we focus on the calculation of, and the methods to display
thickness, vorticity, and temp advection.

Some calculations will be simple (e.g., thickness) where you will only have
to set up a mathematical difference. Other times there will be more involved
calculations that need to be done, which are available as functions in MetPy.
The fact that all MetPy gridded calculations produce DataArrays should make
them straightforward to use, you'll just need to know what data to feed into
the function. That is where looking and reading the documentation for a
given function will be important.

Available [MetPy Calculation Functions](https://unidata.github.io/MetPy/latest/api/generated/metpy.calc.html)

