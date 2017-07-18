#' Add Date Variables to Datatable or Dataframe
#'
#' This function adds additional columns to a data frame containing year, month, year-month, calender-week, year-calender-week.
#'
#' @param data dataframe or datatable
#' @param date date variable
#'
#' @examples
#' \dontrun{
#' dt <- rhfAddDateVars(data = dt, date = "date")
#' }
#' @import data.table
#' @export
#' @return datatable

rhfAddDateVars <- function(data, date){
  if(!data.table::is.data.table(data)) {data <- data.table::data.table(data)} #converts dataframe into data.table
  year = month = ym = isoweek = week = yw = NULL #avoid notes in R CMD check
  data[, year := format(date, "%Y")]
  data[, month := format(date, "%m")]
  data[, ym := paste(year, month, sep="-")]
  data[, isoweek := ISOweek::ISOweek(date)]
  data[, week := gsub("....-W","",isoweek)]
  data[, yw := gsub("W","",isoweek)]
  data[, isoweek := NULL]
  data
}
