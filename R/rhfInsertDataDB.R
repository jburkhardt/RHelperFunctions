#' Insert dataframe to database
#'
#' This function inserts a dataframe into a database.
#'
#' @param data dataframe
#' @param dbTable database table
#' @param con database connection object
#'
#' @examples
#' \dontrun{
#' rhfInsertDataDB(data = dt, dbTable = "databaseTable")
#' }
#'
#' @export
#' @return datatable


rhfInsertDataDB <- function(data, dbTable, con){
  #define database attributes/columns
  columns <- paste(names(data),collapse = ", ")
  #build SQL query
  statement <- paste("INSERT INTO ",dbTable," (",columns,")"," VALUES ",sep="")
  #parse data
  a <- apply(data,1,function(x){
              y <- paste("'",x,"'",collapse = ",",sep="")
              y <- paste("(",y,")",sep="")
              })
  a <- paste(a,collapse=",",sep="")
  a <- paste(a,";",sep="")
  #finish SQL statement
  statement <- paste(statement, a, sep="")
  #execute database
  DBI::dbGetQuery(con, statement)
}
