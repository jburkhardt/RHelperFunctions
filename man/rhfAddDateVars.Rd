% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/rhfAddDateVars.R
\name{rhfAddDateVars}
\alias{rhfAddDateVars}
\title{Add Date Variables to Datatable or Dataframe}
\usage{
rhfAddDateVars(data, date)
}
\arguments{
\item{data}{dataframe or datatable}

\item{date}{date variable}
}
\value{
datatable
}
\description{
This function adds additional columns to a data frame containing year, month, year-month, calender-week, year-calender-week.
}
\examples{
\dontrun{
dt <- rhfAddDateVars(data = dt, date = "date")
}
}
