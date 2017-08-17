# RHelperFunctions

RHelperFunctions is a R package that contains a collection of R helper functions. The aim of the package is to provide functions that tackle recurring programming tasks.

## Pull Request welcome!

Everbody is welcome to contribute to the package!

## Installation

```R
require(devtools)
install_github('jburkhardt/RHelperFunctions')
```

## Function Index

- **rhfFacToChar()** - Converts factor variables of dataframe into character variables.
- **rhfInfNAToZero()** - Converts Inf and NAs to 0.
- **rhfAddDateVars()** - Adds additional columns to a dataframe/datatable containing year, month, year-month, calender-week, year-calender-week.
- **rhfPwdInput()** - Reads user input from promt. Useful in interactive R session to store passwords in a variable without writing passwords in script.
- **rhfInsertDataDB** - Inserts a dataframe into a database.
- **rhfDeleteDB** - Delete database rows/entries by key column.
- **rhfRepeatUntilOk** - Repeats a target function until result succesful.
