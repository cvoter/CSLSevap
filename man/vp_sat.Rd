% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/vapour_functions.R
\name{vp_sat}
\alias{vp_sat}
\title{Vapour pressure, saturation}
\usage{
vp_sat(tmp)
}
\arguments{
\item{tmp}{temperature of air or water (degrees C), vector or atomic number.}
}
\value{
\item{eo}{saturation vapour pressure at the temperature (kPa)}
}
\description{
Calculates the saturation vapour pressure at a given temperature based on
equation 11 of Allen et al. (1998). Identical to Equation 2.4 in Harwell
(2012).
}
\references{
Allen, R. G., Pereira, L. S., Raes, D., & Smith, M. (1998). Crop
evapotranspiration: Guidelines for computing crop water requirements. Rome:
FAO. Retrieved from http://www.fao.org/docrep/X0490E/x0490e00.htm.

Harwell, G.R., 2012, Estimation of evaporation from open water—A
review of selected studies, summary of U.S. Army Corps of Engineers data
collection and methods, and evaluation of two methods for estimation of
evaporation from five reservoirs in Texas: U.S. Geological Survey
Scientific Investigations Report 2012–5202, 96 p.
}
