% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/radiation_functions.R
\name{hour_angle}
\alias{hour_angle}
\title{Solar time angle}
\usage{
hour_angle(tmid, tL, Lm, Lz)
}
\arguments{
\item{tmid}{date and time of the midpoint of the time period \link{POSIXct}.}

\item{tL}{length of the time period, from lubridate function "interval_len".}

\item{Lm}{longitude of the measurement site (degrees west of Greenwich).}

\item{Lz}{longitude of the center of the time zone used for measurements
(degrees west of Greenwich). For example, Lz = 75, 90, 105 and 120°
for the Eastern, Central, Rocky Mountain and Pacific time zones
(United States) and Lz = 0° for Greenwich, 330° for Cairo (Egypt),
and 255° for Bangkok (Thailand).}
}
\value{
\item{omega1}{solar time angle at the beginning of the period (radians)}
\item{omega2}{solar time angle at the end of the period (radians)}
}
\description{
Calculates the beginning, midpoint, and end solar time angle (radians) for a
given location and day of the year using Equations 29-33 from Allen et al.
(1998). Used for calculations at an hourly or shorter timestep.
}
\references{
Allen, R. G., Pereira, L. S., Raes, D., & Smith, M. (1998). Crop
evapotranspiration: Guidelines for computing crop water requirements. Rome:
FAO. Retrieved from http://www.fao.org/docrep/X0490E/x0490e00.htm.
}
