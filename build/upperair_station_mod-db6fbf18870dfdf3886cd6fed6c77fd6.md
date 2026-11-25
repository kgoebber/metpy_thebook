# Upperair Station Model

The upperair station model uses the same basic structure that is done for the surface,
including where the mass and temperature fields go and wind speed and direction. However,
there are a lot less data taken since we only collect temperature, moisture, and pressure
values directly and infer wind speed and direction through GPS location differencing. The
basic structure of the upperair station model is given in {numref}`Figure %s <upamodel>`
with full descriptions given in the table below the figure.

```{figure} ../../images/upperair_station_model.png
:alt: upperair station model
:width: 200px
:align: center
:name: upamodel

Graphic representation of the parameters plotted around the upperair station model.
```

```{table} Decoding upperair station model
:align: left
:name: upa-stn-decode

| Parameter Reference | Description |
| --- | --- |
| **FF** | The wind speed. Typically reported in knots, but can be mph or m s$^{-1}$. |
| **WD** | The wind direction. Indicated by the stem, the wind is always described by where the wind is coming from. The depiction above would be a west wind. |
| **TT** | The temperature in Celsius (different from the surface model) |
| **DD** | The dewpoint depression or spread between the temperature and the dewpoint. <br><br>For example at 500 hPa,<br><br>DD	=	T(500)  -  Td(500)<br><br>If the dewpoint is the same as the temperature (i.e., the atmosphere is saturated at 500 hPa), then the dewpoint depression (DD) is zero.<br><br>Very Moist Air	DD = 0<br><br>Very Dry Air  DD >= 30 |
| **HHH** | The height that you must go (referenced to mean sea level) up in order to reach the stated pressure level at the given location. This is in a code. See Table {numref}`upa-height-decode` below for a description of how to interpret at different pressure levels. |
```

To decode the three-digit height values that are plotted on an upperair map you can use
your knowledge of common atmospheric conditions at different levels with this handy table
to be able to add in the left off values to make the plotted observations more compact. Note
how at the highest levels of the troposphere (e.g., 250 and 200 hPa) there are two missing
values, one at the beginning and end of the plotted value for the station model.

<html>
<style>
td, th {
  text-align: center;
}</style>

```{csv-table} Decoding upperair heights
:align: center
:name: upa-height-decode
:header-rows: 1
:class: td, th

"Pressure (hPa)", "Prefix to Plotted Value", "Suffix to Plotted Value", "Plotted", "Height (m)"
850,1,"–",530,1530
700,"2 or 3*","–",180,3180
500,"–",0,582,5820
300,"–",0,948,9480
250,1,0,028,10280
200,1,0,164,11640
```

\* Use the value that will bring the plotted value closest to 3000 meters.
</html>