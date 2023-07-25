**Met 130: Introduction to Weather Technology**

**MetPy Introduction**

**Part 1: MetPy -- Meteorological Python**

MetPy is a Python module that contains domain specific functionality
(e.g., plotting surface observations in the above describe station model
format) for use in the Python programming language. This is a relatively
new module and has just recently passed its 1.0 version (meaning it has
reached at least a base-level of maturity). Throughout learning how to
use MetPy you will be introduced to some of the basics of the Python
programming language, but this is not strictly a course that will teach
you Python. Primarily you'll use the declarative syntax from MetPy to
plot various types of meteorological observations and model output.
Remember that whatever you tell Python to do in your code, whether it
was what you intended or not, is what it is going to do! So be sure to
check what you have typed in -- if you are not getting a map that you
think you should be getting (or get an error), it is most likely a human
input error (an i-d-10-t error, as they say).

Important Notes (before we get started):

MetPy Website: <https://unidata.github.io/MetPy/latest/index.html>

This website has all the documentation for the current version of MetPy.
You will only be introduced to what small bits of MetPy can do here
today; the reference guide will go into more detail about all of the
different aspects of the module that can be used to plot observational
data and model output.

OR

There will be ways to get some of the help information from the
development environment you will use throughout the semester (jupyter
notebooks). More on that as we go along!

As a ***last resort*** you can always ask someone who has a more
experience using Python, Jupyter notebooks/lab, and MetPy, as they will
probably have seen and dealt with many of the problems that you might be
having.

**\
**

**Part 2: Creating Surface Maps using MetPy**

**Surface Maps in MetPy**

Since MetPy is a module within the scientific Python ecosystem we will
use Jupyter Notebooks through the Jupyter Lab environment to create our
desired maps over the course of the semester. To begin, log into the
JupyterHub environment through your web browser, like we did for our
introduction to Linux. To launch jupyter lab type,

\> jupyter lab

To learn more about about the Jupyter Lab web interface, visit the
following website:

<https://towardsdatascience.com/jupyter-lab-evolution-of-the-jupyter-notebook-5297cacde6b?#0992>

Common Keyboard Commands:

> Run A Cell and move to next cell): \<shift\>-\<return\>
>
> Run A Cell and stay on the cell): \<ctrl\>-\<return\>
>
> To Undo Typing in Cell: \<alt\>-z

Cell Types:

-   Code -- executable Python code

-   Raw -- raw text, won't execute

-   Markdown -- formatted text output

When the Jupyter Lab environment opens in your web browser you'll have
two areas in the window: a file browser on the left, and a launcher tab
on the right. Now, let's copy over a notebook to start with. Using a
terminal window and change to your met130 directory. Then copy over the
first Jupyter notebook with the following command:

\> cp
/archive/valpo_courses/wxtech/notebooks/current_surface_observation_plots.ipynb
.

It is always best to make a copy of an example notebook to a new
place/name so that you can always get back to the original. If you
copied that notebook to your met130 directory, you'll want to navigate
to that directory in the file browser on the left side of the Jupyter
Lab environment. The notebook will have a small orange icon associated
with the name of the notebook. To launch that notebook simple double
click on that file and it will open the notebook as a second tab in the
right pane.

We'll now briefly describe some of the main elements of this initial
notebook and spend some time running the cells and generating images.

**Import Statements**

> Python is the base language that is now commonly used within the
> broader scientific enterprise for conducting data analysis and
> visualization. By design, the base language is relatively small,
> providing intuitive control structures that are amenable to a large
> variety of computing problems. On top of this base is built an entire
> ecosystem of packages or modules that provide domain-specific methods
> for the calculation and visualization of data. In order to incorporate
> those modules into any Python script, one must import those elements.
>
> *datetime*

-   A built-in Python module (part of base Python) to help handle date
    > and time issues. Both the datetime and timedelta portions of the
    > module are brought in here.

> *metpy*

-   A module developed to add functionality specific for the atmospheric
    > science/meteorology scientific community. Here we bring in three
    > elements of the module, the METAR reader, the declarative plotting
    > interface, and the units module.

**Read Data**

> Before we can work with any data within our notebook, data must first
> be brought in. In this instance we are using MetPy's ability to read a
> file containing METAR codes (a long-serving surface data code
> developed for aviation purposes). Once we read in the data and have it
> saved to a namespace (in this case df) we can then use it at some
> later point in the notebook.

**Plot Data**

> This is the main part of the code where you get to describe what and
> how you want to plot some (or all) of the data that you have read into
> the notebook. Details of this declarative interface is given below.
> The result will be a map of observed data cover a part of the world.

**Declarative Plotting in MetPy**

To make a plot of surface observations requires three elements
(observations to be plotted, the map panel to plot it on, and a
container to collect one or more panels). These three elements are
separate parts of the declarative module. In Python we call these parts
Classes and note that they contain MiXeD case names. These classes
contain a number of attributes that can be set to specify what and how
to plot the data in a figure. The descriptions of some of the basic
elements of each element are given below.

**PlotObs()**
\[<https://unidata.github.io/MetPy/latest/api/generated/metpy.plots.PlotObs.html#metpy.plots.PlotObs>\]

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  [**colors**](https://unidata.github.io/MetPy/latest/api/generated/metpy.plots.PlotObs.html#metpy.plots.PlotObs.colors)                             List of the scalar and symbol field colors.
  -------------------------------------------------------------------------------------------------------------------------------------------------- -------------------------------------------------
  [**data**](https://unidata.github.io/MetPy/latest/api/generated/metpy.plots.PlotObs.html#metpy.plots.PlotObs.data)                                 Pandas dataframe that contains the fields to be
                                                                                                                                                     plotted.

  [**fields**](https://unidata.github.io/MetPy/latest/api/generated/metpy.plots.PlotObs.html#metpy.plots.PlotObs.fields)                             Name of the scalar or symbol fields to be
                                                                                                                                                     plotted.

  [**fontsize**](https://unidata.github.io/MetPy/latest/api/generated/metpy.plots.PlotObs.html#metpy.plots.PlotObs.fontsize)                         An integer value to set the font size of station
                                                                                                                                                     plots.

  [**formats**](https://unidata.github.io/MetPy/latest/api/generated/metpy.plots.PlotObs.html#metpy.plots.PlotObs.formats)                           List of the scalar, symbol, and text field data
                                                                                                                                                     formats.

  [**level**](https://unidata.github.io/MetPy/latest/api/generated/metpy.plots.PlotObs.html#metpy.plots.PlotObs.level)                               The level of the field to be plotted.

  [**locations**](https://unidata.github.io/MetPy/latest/api/generated/metpy.plots.PlotObs.html#metpy.plots.PlotObs.locations)                       List of strings for scalar or symbol field
                                                                                                                                                     plotting locations.

  [**plot_units**](https://unidata.github.io/MetPy/latest/api/generated/metpy.plots.PlotObs.html#metpy.plots.PlotObs.plot_units)                     A list of the desired units to plot the fields
                                                                                                                                                     in.

  [**reduce_points**](https://unidata.github.io/MetPy/latest/api/generated/metpy.plots.PlotObs.html#metpy.plots.PlotObs.reduce_points)               Float to reduce number of points plotted.

  [**time**](https://unidata.github.io/MetPy/latest/api/generated/metpy.plots.PlotObs.html#metpy.plots.PlotObs.time)                                 Set the valid time to be plotted as a datetime
                                                                                                                                                     object.

  [**time_window**](https://unidata.github.io/MetPy/latest/api/generated/metpy.plots.PlotObs.html#metpy.plots.PlotObs.time_window)                   Set a range to look for data to plot as a
                                                                                                                                                     timedelta object.

  [**vector_field**](https://unidata.github.io/MetPy/latest/api/generated/metpy.plots.PlotObs.html#metpy.plots.PlotObs.vector_field)                 List of the vector field to be plotted.

  [**vector_field_color**](https://unidata.github.io/MetPy/latest/api/generated/metpy.plots.PlotObs.html#metpy.plots.PlotObs.vector_field_color)     String color name to plot the vector.

  [**vector_field_length**](https://unidata.github.io/MetPy/latest/api/generated/metpy.plots.PlotObs.html#metpy.plots.PlotObs.vector_field_length)   Integer value to set the length of the plotted
                                                                                                                                                     vector.

  [**vector_plot_units**](https://unidata.github.io/MetPy/latest/api/generated/metpy.plots.PlotObs.html#metpy.plots.PlotObs.vector_plot_units)       The desired units to plot the vector field in.
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-   data

This attribute needs to be set to the DataFrame variable containing the
fields that you desire to plot.

-   fields

This attribute is a list of variable names from your DataFrame that you
desire to plot at the given locations around the station model.

-   level

For a surface plot this needs to be set to None.

-   time

This attribute needs to be set to subset your data attribute for the
time of the observations to be plotted. This needs to be a datetime
object.

-   locations (optional)

This attribute sets the location of the fields to be plotted around the
surface station model. The default location is center ('C')

-   time_range (optional)

> This attribute allows you to define a window for valid observations
> (e.g., 15 minutes on either side of the datetime object setting. This
> is important for surface data since actual observed times are not all
> exactly on the hour. If multiple observations exist in the defined
> window, the most recent observations is retained for plotting
> purposes.

-   formats (optional)

> This attribute sets a formatter for text or plotting symbols around
> the station model. For example, plotting mean sea-level pressure is
> done in a three-digit code and a formatter can be used to achieve that
> on the station plot.
>
> MSLP Formatter: lambda v: format(10 \* v, \'.0f\')\[-3:\]
>
> For plotting symbols use the available MetPy options through their
> name. Valid symbol formats are current_weather, sky_cover, low_clouds,
> mid_clouds, high_clouds, and pressure_tendency.

-   colors (optional)

> This attribute can change the color of the plotted observation.
> Default is 'black'. Acceptable colors are those available through
> Matplotlib:
> <https://matplotlib.org/3.1.1/_images/sphx_glr_named_colors_003.png>

-   plot_units (optional)

> A list of the desired units to plot the fields in. Will only work if
> data have units attached.

-   vector_field (optional)

> This attribute can be set to a list of wind component values for
> plotting (e.g., \['uwind', 'vwind'\])

-   vector_field_color (optional)

> Same as colors except only controls the color of the wind barbs.
> Default is 'black'.

-   vector_field_length (optional)

> Set an integer value for the length of the plotted vector. Default is
> 6.

-   vector_plot_units (optional)

> The desired units you want the vector field plotted in. Will only work
> if data have units attached.

-   fontsize (optional)

> An integer value to set the font size of station plots. Default is 10
> pt.

-   reduce_points (optional)

> This attribute can be set to a real number to reduce the number of
> stations that are plotted. Default value is zero (e.g., no points are
> removed from the plot).

-   fontsize (optional)

> This attribute can be set to an integer value to set the font size of
> station plots. Default is 10 pt.

**MapPanel()**
\[<https://unidata.github.io/MetPy/latest/api/generated/metpy.plots.MapPanel.html#metpy.plots.MapPanel>\]

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  [**layers**](https://unidata.github.io/MetPy/latest/api/generated/metpy.plots.MapPanel.html#metpy.plots.MapPanel.layers)                       A list of strings for a pre-defined feature layer or a Cartopy Feature object.
  ---------------------------------------------------------------------------------------------------------------------------------------------- --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  [**layers_edgecolor**](https://unidata.github.io/MetPy/latest/api/generated/metpy.plots.MapPanel.html#metpy.plots.MapPanel.layers_edgecolor)   A list of strings for a pre-defined edgecolor for a layer.

  [**layers_linewidth**](https://unidata.github.io/MetPy/latest/api/generated/metpy.plots.MapPanel.html#metpy.plots.MapPanel.layers_linewidth)   A list of values defining the linewidth for a layer.

  [**layout**](https://unidata.github.io/MetPy/latest/api/generated/metpy.plots.MapPanel.html#metpy.plots.MapPanel.layout)                       A tuple that contains the description (nrows, ncols, index) of the panel position; default value is (1, 1, 1).

  [**left_title**](https://unidata.github.io/MetPy/latest/api/generated/metpy.plots.MapPanel.html#metpy.plots.MapPanel.left_title)               A string to set a title for the figure with the location on the top left of the figure.

  [**plots**](https://unidata.github.io/MetPy/latest/api/generated/metpy.plots.MapPanel.html#metpy.plots.MapPanel.plots)                         A list of handles that represent the plots
                                                                                                                                                 (e.g., [**ContourPlot**](https://unidata.github.io/MetPy/latest/api/generated/metpy.plots.ContourPlot.html#metpy.plots.ContourPlot), [**FilledContourPlot**](https://unidata.github.io/MetPy/latest/api/generated/metpy.plots.FilledContourPlot.html#metpy.plots.FilledContourPlot), [**ImagePlot**](https://unidata.github.io/MetPy/latest/api/generated/metpy.plots.ImagePlot.html#metpy.plots.ImagePlot))
                                                                                                                                                 to put on a given panel.

  [**projection**](https://unidata.github.io/MetPy/latest/api/generated/metpy.plots.MapPanel.html#metpy.plots.MapPanel.projection)               A string for a pre-defined projection or a Cartopy projection object.

  [**right_title**](https://unidata.github.io/MetPy/latest/api/generated/metpy.plots.MapPanel.html#metpy.plots.MapPanel.right_title)             A string to set a title for the figure with the location on the top right of the figure.

  [**title**](https://unidata.github.io/MetPy/latest/api/generated/metpy.plots.MapPanel.html#metpy.plots.MapPanel.title)                         A string to set a title for the figure.

  [**title_fontsize**](https://unidata.github.io/MetPy/latest/api/generated/metpy.plots.MapPanel.html#metpy.plots.MapPanel.title_fontsize)       An integer or string value for the font size of the title of the figure.
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-   layout

The Matplotlib layout of the figure. For a single panel figure the
setting should be

(1, 1, 1)

-   projection

The projection can be set with the name of a default projection ('lcc',
'mer', or 'ps') or it can be set to a Cartopy projection.

-   layers

This attribute will add map layers to identify boundaries or features to
plot on the map. Valid layers are borders, coastline, states, lakes,
land, ocean, rivers, counties.

-   layers_edgecolor

This attribute will set the edgecolor for those values listed in the map
layers attribute. Valid colors correspond to valid Matplotlib named
colors.

-   layers_linewidth

This attribute will set the linewidth (as a float) for those values
listed in the map layers attribute.

-   area

This attribute sets the geographical area of the panel. This can be set
with a predefined name of an area including all US state postal
abbreviations (e.g., 'us', 'natl', 'in', 'il', 'wi', 'mi', etc.) or a
tuple value that corresponds to longitude/latitude box based on the
projection of the map with the format (west-most longitude, east-most
longitude, south-most latitude, north-most latitude). This tuple defines
a box from the lower-left to the upper-right corner.

-   title

This attribute sets a title for the panel in the center of the figure.

-   left_title

This attribute sets a title for the panel at the left edge of the
figure.

-   right_title

This attribute sets a title for the panel at the right edge of the
figure.

-   plots

A list collecting the observations to be plotted in the panel.

**PanelContainer()**
\[<https://unidata.github.io/MetPy/latest/api/generated/metpy.plots.PanelContainer.html#metpy.plots.PanelContainer>\]

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  [**panels**](https://unidata.github.io/MetPy/latest/api/generated/metpy.plots.PanelContainer.html#metpy.plots.PanelContainer.panels)   A list of panels to plot on the figure.
  -------------------------------------------------------------------------------------------------------------------------------------- --------------------------------------------------------------
  [**size**](https://unidata.github.io/MetPy/latest/api/generated/metpy.plots.PanelContainer.html#metpy.plots.PanelContainer.size)       This trait takes a tuple of (width, height) to set the size of
                                                                                                                                         the figure.

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-   size

The size of the figure in inches (e.g., (10, 8))

-   panels

A list collecting the panels to be plotted in the figure.

-   show

Calling this will show the image.

**Locations:**

The layout of data around a station model is very important. At the
beginning of this handout we reviewed the typical layout for the display
of meteorological variables around a surface station. In our plotting of
surface observations (*PlotObs*) we can set everything in the same way.
The following is the location where a variable will be placed, depending
on the string at each location.

NNW N2 NNE

WNW NW N NE ENE

W2 W C E E2

WSW SW S SE ESE

SSW S2 SSE

The default location is C.

1.  What variable should be plotted with the location of C (center)?

2.  What about the W (west) location?

3.  What about for a station model that you wanted to plot: temperature,
    dewpoint, mslp, current weather, and visibility?

For your first map, let's just plot the temperature from 1200 UTC today.
Let's go to our notebook to see the following settings for making a map
(all is contained in the notebook):

Basic Plot of Surface Temperatures:

1.  **from** datetime **import** datetime, timedelta

2.  **from** io **import** StringIO

3.  **from** urllib.request **import** urlopen

4.   

5.  **from** metpy.io **import** metar

6.  **from** metpy.plots **import** declarative

7.  **from** metpy.units **import** units

8.   

9.  date **=** datetime(2022, 1, 4, 12)

10.  

11. \# Remote Access - Read current METAR files

12. data **=**
    StringIO(urlopen(\'http://bergeron.valpo.edu/current_surface_data/\'

13.                        
    f\'{date:%Y%m%d%H}\_sao.wmo\').read().decode(\'utf-8\',

14.                         \'backslashreplace\'))

15.  

16. df **=** metar.parse_metar_file(data, year**=**date.year,
    month**=**date.month)

17.  

18. \# Plot desired data

19. obs **=** declarative.PlotObs()

20. obs.data **=** df

21. obs.time **=** date

22. obs.time_window **=** timedelta(minutes**=**15)

23. obs.fields **=** \[\'air_temperature\'\]

24. obs.plot_units **=** \[\'degF\'\]

25.  

26. \# Panel for plot with Map features

27. panel **=** declarative.MapPanel()

28. panel.layout **=** (1, 1, 1)

29. panel.projection **=** \'lcc\'

30. panel.area **=** \'in\'

31. panel.layers **=** \[\'states\'\]

32. panel.title **=** f\'Air temperature on {date:%Y%m%d} at
    {date:%H}UTC\'

33. panel.plots **=** \[obs\]

34.  

35. \# Bringing it all together

36. pc **=** declarative.PanelContainer()

37. pc.size **=** (10, 10)

38. pc.panels **=** \[panel\]

39.  

40. pc.show()

So, what did we set? Just the required and a few of the optional
parameters to make a plot. Use the practice tasks below to explore more
of the options.

![A picture containing text, map Description automatically
generated](media/image1.png){width="6.026916010498688in"
height="5.721360454943132in"}

> Fig. 1 A simple surface temperature map

**Part 4: Practice Tasks**

1.  Open a new notebook and make a plot of temperatures and dewpoints
    using different colors.

2.  Plot the full surface station model (e.g., temperature, dewpoint,
    MSLP, current weather, and wind speed and direction) over Oklahoma.

3.  Plot the temperature with temperatures equal to or less than 32
    colored blue and greater than 32 colored red.

> *Note: You'll have to subset your dataframe and plot to sets of
> observations. To subset a dataframe it would look something like:*
>
> *obs.data = df\[df.air_temperature \<= 0\]*
>
> *which would only plot observations where the air temperature was less
> than or equal to 0.*

**Part 5: Saving Images**

Let's start with a new notebook to learn a few more attributes of the
declarative interface to plot our desired observations around the
station model. After launching JupyterHub use the terminal window to
copy the full_surface_station_model.ipynb notebook to your working
directory.

\> cp
/archive/valpo_courses/wxtech/notebooks/full_surface_station_model.ipynb
.

Once you get this copied over to your wxtech directory, navigate to the
appropriate folder and open the notebook.

**Saving Images**

Last time we started creating maps, but they were only visible within
the Jupyter environment. What if I want to save the image that I
created? There is only one small addition to make to your cell where you
create your image:

pc.save('test.png')

This will save the same image that is shown in your notebook to the
local working directory (likely your working directory). It is saving to
the name you give the file between the quote marks (in this case
**test.png**). That's it. It really is that simple.

There are a few different types of images you can save as, the most
common being the PNG (portable network graphic), but you can also save
as a JPG, PDF, PS, and TIF. Just switch out the .png for the desired
graphical output type.

Additionally, you can set other parameters about how the image will
save. We'll highlight two of them here, but for all of the available
options go the Matplotlib help pages for savefig:
<https://matplotlib.org/stable/api/_as_gen/matplotlib.pyplot.savefig.html>

*dpi* -- This setting is to allow you to specify a "dots per inch",
which will give you a nicer looking image with a higher value. Common
value to get a good image is 150.

*bbox_inches* -- This setting is set to 'tight' to remove excessive
white space surrounding the image. It is best that this always be set to
True (the default is false).

So, putting it all together, a good line for saving a file is:

pc.save('test.png', dpi=150, bbox_inches='tight')

Simply change the name within the quote marks to save to a different
name (good habit is to name the image something unique each time so as
not to accidentally overwrite something you really want to keep!).

**Viewing Saved Images**

To view any saved image, one just needs to navigate to the folder it was
saved in and double-click the image file. It will open on the right-hand
side of the Jupyter Lab environment.

There are two ways to view your created file. Either type into the
terminal within the directory that contains the newly created image,

**Downloading Images**

To download an image to your local machine, find the file you wish to
download (most likely an image file), right-click on the file and a
dialogue box should appear and find the option to "Download". Depending
on the settings of your web browser, you'll either be asked where to
save the file, or it will save to your Downloads (or other designated)
folder.

**Part 6: Map Making Summary and Notes**

**Setting a Title**

**Note:** Your title on the map should always be produced through the
**title** attribute in the MapPanel() and *must* include your name. An
acceptable default title would be as follows:

panel.title = f'My Map by Kevin Goebbert {obs.time}'

**Finding Data**

If you can't find the data file in the location for the current data

Local Access Current Data: /data/ldmdata/surface/sao

> Python Access:
>
> from metpy.io import metar
>
> data = '/data/ldmdata/surface/sao/20220114_sao.wmo'

df = metar.parse_metar_file(data, year=2021, month=1)

Remote Access Current Data:
<http://bergeron.valpo.edu/current_surface_data>

> Python Access:
>
> from io import StringIO
>
> from urllib.request import urlopen
>
> from metpy.io import metar
>
> data = StringIO(urlopen(
>
> \'http://bergeron.valpo.edu/current_surface_data/\'
>
> \'20201221_sao.wmo\').read().decode(\'utf-8\', \'backslashreplace\'))
>
> df = metar.parse_metar_file(data, year=2020, month=12)

Remote Access Archived Data (1950-current): Iowa State ASOS Archive

> Python Access:
>
> \# Set a date and time for the observations you want
>
> date = datetime(1993, 3, 13, 12)
>
> \# Set a time window to look for observations
>
> dt = timedelta(minutes=15)
>
> \# Use datetime and time window to set final start/end times
>
> sdate = date - dt
>
> edate = date + dt
>
> \# Use Pandas remote csv reading capability to grab desired data
>
> \# Make Missing values (\'M\') into NaNs
>
> \# Replace Trace precip with very small float value
>
> df = pd.read_csv('http://mesonet.agron.iastate.edu/'
>
> 'cgi-bin/request/asos.py?data=all&tz=Etc/UTC&format=comma&'
>
> f'latlon=yes&elev=yes&year1={sdate.year}&month1={sdate.month}&'

f'day1={sdate.day}&hour1={sdate.hour}&minute1={sdate.minute}&\'

f'year2={edate.year}&month2={edate.month}&day2={edate.day}&'

f'hour2={edate.hour}&minute2={edate.minute}\', skiprows=5,

na_values=\[\'M\'\], low_memory=False).replace(\'T\', 0.00001)

> \# Since we may have gotten more than 1 ob in our time window, only
> keep the latest observation
>
> data = df.groupby(\'station\').tail(1)

**Summary of process for making a map:**

1.  Open Jupyter Lab

2.  Open an existing or new notebook

3.  Set up all parameters to read data and make a map

4.  Run all cells to generate image

5.  Close and shutdown notebooks when done for the day (cleanup)

Note: You may have multiple PlotObs() if you want to layer different
things on the same map before adding them to a panel and a figure.
