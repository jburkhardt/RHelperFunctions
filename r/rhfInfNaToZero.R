#' Converts Inf and NAs to 0
#'
#' This function converts all Inf values and NAs to zero.
#'
#' @param data dataframe
#'
#' @examples
#' \dontrun{
#' dt <- rhfInfNAToZero(data = dt)
#' }
#'
#' @export
#' @return datatable

rhfInfNAToZero <- function(data){
  #convert Inf to NA
  is.na(data) <- sapply(data, is.infinite)
  #convert NAs to zero
  data[is.na(data)] <- 0
  data
}
