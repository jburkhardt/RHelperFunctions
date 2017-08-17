#' Delete databse entries
#'
#' This function deletes database entries/rows by key.
#'
#' @param keys key column
#' @param dbTable database table
#' @param con database connection object
#'
#' @examples
#' \dontrun{
#' rhfDeleteDB(con = con, keys = keys, dbTable = "databaseTable")
#' }
#'
#' @export
#' @return datatable

rhfDeleteDB <- function(con, keys, dbTable){
    #deletes data from database in table provided specific key
    #input: key variable
    keys <- paste("'",keys,"'",sep="",collapse=",")
    query <- paste("DELETE FROM ",dbTable," WHERE key IN (",keys,")",sep="")
    DBI::dbGetQuery(con, query)
}
