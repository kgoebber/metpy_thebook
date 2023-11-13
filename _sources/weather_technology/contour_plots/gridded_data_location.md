# Gridded Data Files

Model output has grown a lot bigger over the last decade and are
becoming cumbersome to push those big files around to everyone. Instead,
we can access the files remotely (meaning the files are on a computer
somewhere in the world) and only bring back the small parts of what we
need to do the analysis or draw the contours of the map we are making.

## Current Model Output - Remote Access
For current model output, the best remote site is:

<a href="https://thredds.ucar.edu/thredds/idd/forecastModels.html" target="_blank">https://thredds.ucar.edu/thredds/idd/forecastModels.html</a>

Below are the URL filename structures for the most common synoptic models available
through the Unidata THREDDS server. There are at least two weeks of current model
output available via this access method. For the links below, replace the end of the
URL (catalog.html) with the filename using the given format.

-   GFS One Degree (OPeNDAP)

    -   https://thredds.ucar.edu/thredds/catalog/grib/NCEP/GFS/Global_onedeg/catalog.html  
        
        Filename Format: GFS_Global_onedeg_YYYYMMDD_HHMM.grib2

-   GFS Half Degree (OPeNDAP)

    -   https://thredds.ucar.edu/thredds/catalog/grib/NCEP/GFS/Global_0p5deg/catalog.html

        Filename Format: GFS_Global_0p5deg_YYYYMMDD_HHMM.grib2

-   NAM CONUS 12km from CONDUIT (OPeNDAP)

    -   https://thredds.ucar.edu/thredds/catalog/grib/NCEP/NAM/CONUS_12km/conduit/catalog.html
    
        Filename Format: NAM_CONUS_12km_conduit_YYYYMMDD_HHMM.grib2

-   Rapid Refresh CONUS 13 km (OPeNDAP)

    -   https://thredds.ucar.edu/thredds/catalog/grib/NCEP/RAP/CONUS_13km/catalog.html
    
        Filename Format: RR_CONUS_13km_YYYYMMDD_HHMM.grib2

If you visit the main website above you'll see that there are a whole
lot of different model output sources, feel free to try and use them to
make maps for tasks.

## Current Model Output - Local Files

Many institutions (or individuals) keep (download) a small set of local model
output in netCDF (or other) format, which are easily read into
Jupyter Notebooks. In a terminal window (or tab)
locate where your netCDF model output is located.

```{note}
At Valparaiso University, local data from LDM can be found in the
`/data/ldmdata/` folder on our server. From there you can find were
the model data are located using your terminal window, note the absolute
path and the filename to be able to use in your code.

Record the absolute path to model data for each of the model types
listed below:

NAM:

GFS:

All of the file names are of a standard format.

YYYYMMDDHH\_\<model\>.nc

YYYY -- 4-digit Year

MM -- 2-digit Month

DD -- 2-digit Day

HH -- 2-digit Model Initialization Hour

\<model\> is the model name: gfs, nam (in lowercase)
```