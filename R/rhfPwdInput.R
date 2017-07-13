#' Password User Input Prompt Dialogue
#'
#' This function starts a promt dialoque that asks for a password input.
#'
#' @examples
#' \dontrun{
#' pwd <- rhfPwdInput()
#' }
#'
#' @export
#' @return user input as character

rhfPwdInput <- function(){
  # This function starts a promt dialoque that asks for a password input.
  n <- readline(prompt="Enter password: ")
  n <- as.character(n)
  n
}
