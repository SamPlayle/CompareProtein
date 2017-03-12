## An example of how to use the Tesco API to get product data

library(httr)
library(jsonlite)

## Load my Tesco API key

keyFile<- "../Private/TescoKey.txt"
MyKey <- readChar(keyFile, file.info(keyFile)$size)

## Get the product info on some beans

query <- "https://dev.tescolabs.com/product/?tpnc=262167712"
beans <- content(GET(url=query, add_headers("Ocp-Apim-Subscription-Key" = MyKey)))
print(beans$products[[1]]$calcNutrition$calcNutrients[[2]])
print(beans$products[[1]]$calcNutrition$calcNutrients[[3]])