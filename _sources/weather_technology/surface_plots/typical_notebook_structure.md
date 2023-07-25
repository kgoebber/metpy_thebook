# Common Notebook Structure

In this section the main elements and structure of Jupyter notebooks to 
produce an analysis and visualization of meteorological data will be 
described. There are 

## Import Statements

Python is the base language that is now commonly used within the
broader scientific enterprise for conducting data analysis and
visualization. By design, the base language is relatively small,
providing intuitive control structures that are amenable to a large
variety of computing problems. On top of this base is built an entire
ecosystem of packages or modules that provide domain-specific methods
for the calculation and visualization of data. In order to incorporate
those modules into any Python script, one must import those elements.

*datetime*

-   A built-in Python module (part of base Python) to help handle date
    and time issues. Both the datetime and timedelta portions of the
    module are brought in here.

*metpy*

-   A module developed to add functionality specific for the atmospheric
    science/meteorology scientific community. Here we bring in three
    elements of the module, the METAR reader, the declarative plotting
    interface, and the units module.

*other modules*

-   There can be any number of other imports that bring in functionality
    to read in data, perform data transformations, or alter plotting in some way.
    Additional import modules will be described the first time they are used
    in a particular section.

## Read Data

Before we can work with any data within our notebook, data must first
be brought in. In this instance we are using MetPy's ability to read a
file containing METAR codes (a long-serving surface data code
developed for aviation purposes). Once we read in the data and have it
saved to a namespace (in this case df) we can then use it at some
later point in the notebook.

## Calculate/Transform Data

After data are read into the notebook, then the data are ready to be used in
any calculations that might need to be performed or refactored in some way
to make it useful for plotting and analysis. This section may not be needed
if data are in the correct format and contain all necessary values to be plotted.

## Plot Data

This is the main part of the code where you get to describe what and
how you want to plot some (or all) of the data that you have read into
the notebook. Details of this declarative interface is given below.
The result will be a map of observed data cover a part of the world.
