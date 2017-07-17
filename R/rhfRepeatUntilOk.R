#' Repeats Target Function until Result succesful
#'
#' This function repeats the target function until the execution of the target function is successfull.
#'
#' @param expr target function expression
#' @param silent logical: should the report of error messages be suppressed?
#' @param maxIter maximum iterations of target function
#' @param quotedExpr substitute(expr) - returns the parse tree for the (unevaluated) expression
#' @param envir environment - evaluate an R expression in a specified environment
#'
#' @examples
#' \dontrun{
#' rhfRepeatUntilOk(data <- targetFunction())
#' }
#'
#' @export
#' @return result target function


#### ####
#function to repeat process until result succesful
#### ####
rhfRepeatUntilOk <- function (expr, silent = TRUE, maxIter = 1000,
                     quotedExpr = substitute(expr),  envir = parent.frame()){
  while ((maxIter <- maxIter - 1) >= 0 && inherits(tmp <- try(eval(quotedExpr,
                                                                   envir = envir), silent = silent), "try-error")) {
    print(maxIter)
    print(Sys.time())
    print(tmp)
  }
  if (maxIter < 0) {
    stop("reached maxIter iterations, last error message is ", as.character(tmp))
  }
  tmp
}
