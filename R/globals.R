## Global variables 
library(RCurl)
library(RJSONIO)

## host of the web service
host <- "https://www.pmgenomics.ca/pharmacodb/" 

## json:  json string containing  data
## return data.frame with parsed json string 
processJSON <- function(json, attr) {
  df <- fromJSON(json, nullValue = NA)
  df <- df[[attr]]
  return(df)
}

