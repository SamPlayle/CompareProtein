## Example of getting the price from the Tesco website

library(httr)
library(XML)

con <- "https://www.tesco.com/groceries/product/details/?id=262876719"
webpage <- htmlTreeParse(GET(con))
print(webpage[3]$children$html$children$body$children)

## Still to do: scan this for the price