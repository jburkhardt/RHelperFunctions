#' Converting factor into character variables
#'
#' This function converts factor into character variables.
#'
#' @param data dataframe
#'
#' @examples
#' \dontrun{
#' dt <- rhfFacToChar(data = dt)
#' }
#'
#' @export
#' @return dataframe

rhfFacToChar <- function(data){
  i <- sapply(data, is.factor)
  data[i] <- lapply(data[i], as.character)
  data <- as.data.frame(data)
  data
}
