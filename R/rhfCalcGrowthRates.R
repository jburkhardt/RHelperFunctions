#' Calcution of Growth Rates
#'
#' This function calculates growth rates on a vector/dataframe column given a time lag.
#'
#' @param x data
#' @param lag time lag
#'
#' @examples
#' \dontrun{
#' rhfCalcGrowth(x = 1:100, lag = 10)
#' }
#'
#' @export
#' @return datatable

rhfCalcGrowth <- function(x, lag = 12) {
  #function to calculate growth rates
  y <- exp(diff(log(x), lag=lag))-1
  #replace Inf if denominator is 0
  y[is.infinite(y)] <- 0
  y
}
