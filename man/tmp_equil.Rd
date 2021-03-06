% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/heat_functions.R
\name{tmp_equil}
\alias{tmp_equil}
\title{Temperature, equilibrium}
\usage{
tmp_equil(loc, lake, weather, albedo, SBc = 4.903e-09)
}
\arguments{
\item{loc}{a list with location information that includes:
\itemize{
\item \strong{z}: elevation above mean sea level (m)
\item \strong{phi}: latitude of location (radians). Positive for northern
hemisphere, negative for southern hemisphere.
\item \strong{Lm}: longitude of location (degrees west of Greenwich).
\item \strong{Lz}: longitude of location's measurement timezone (degrees west of
Greenwich). For example, Lz = 75, 90, 105 and 120° for
measurement times based on the Eastern, Central, Rocky Mountain
and Pacific time zones (United States) and Lz = 0° for Greenwich,
330° for Cairo (Egypt), and 255° for Bangkok (Thailand).
}}

\item{lake}{A list with lake data. Defaults to NULL, but for McJannet lake
evaporation calculations, should include:
\itemize{
\item \strong{A}: surface area of the lake (km^2).
\item \strong{depth_m}: depth of the lake (m). Can be a static value or vector
corresponding with datetimes vector.
\item \strong{lst}: optional data frame with date (datetime) and ltmp (lake
temperature, degC).
\item \strong{wtmp0}: required initial water temperature for first day in
datetimes (degC).
}}

\item{weather}{a list with weather data that includes:
\itemize{
\item \strong{dt}: string indicating the timestep of input weather series. Expects
"hourly", "daily", or "monthly".
\item \strong{datetimes}: datetimes of weather records \link{POSIXct}. If monthly
timestep, make sure date is the 15th of each month.
\item \strong{atmp}: If hourly timestep, vector of air temperature (degrees C)
corresponding with datetimes vector. If daily or monthly
timestep, list with two vectors, "min" and "max", with mean
daily min and max air temperature (degrees C) corresponding
with datetimes vector
\item \strong{RH}: If hourly timestep, vector of relative humidity (percent)
corresponding with datetimes vector. If daily or monthly
timestep, list with two vectors, "min" and "max", with mean
daily min and max relative humidity (percent) corresponding with
datetimes vector.
\item \strong{Rs}: vector of incoming solar or shortwave radiation (MJ/m^2/hr if
hourly timestep, MG/m^2/day if daily or monthly), corresponding
with datetimes vector.
\item \strong{wind}: vector with mean wind speed (m/s), corresponding with
datetimes vector.
\item \strong{wind_elev}: atomic number, height at which wind is measured (m)
\item \strong{z0}: aerodynamic roughness of weather measurement site (m)
}}

\item{albedo}{a list with albedos for different surfaces, defaults to:
\itemize{
\item \strong{ref_crop}: albedo of the hypothetical grass reference crop, 0.23
\item \strong{water}: albedo of water, 0.08.
}}

\item{SBc}{Stefan-Boltzman constant (MJ/m^2/day). Defaults to 4.903e-9
MJ/m^2/day.}
}
\value{
\item{eqtmp}{equilibrium temperature (degrees C)}
}
\description{
Calculates the equilibrium temperature based on de Bruin (1982) Equation 3,
as presented in McMahon et al. (2013) S11.30.
}
\references{
McMahon, T. A., Peel, M. C., Lowe, L., Srikanthan, R., and
McVicar, T. R.: Estimating actual, potential, reference crop and pan
evaporation using standard meteorological data: a pragmatic synthesis,
Hydrol. Earth Syst. Sci., 17, 1331–1363,
https://doi.org/10.5194/hess-17-1331-2013, 2013.
}
