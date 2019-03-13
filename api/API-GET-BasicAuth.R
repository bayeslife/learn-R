

require("httr")
require("jsonlite")

username <- "Paste_API_Username_Here"
password <- "Paste_API_Password_Here"


base <- "https://api.intrinio.com/"
endpoint <- "prices"
stock <- "AAPL"

call1 <- paste(base,endpoint,"?","ticker","=", stock, sep="")


get_prices <- GET(call1, authenticate(username,password, type = "basic"))

get_prices_text <- content(get_prices, "text")

get_prices_json <- fromJSON(get_prices_text, flatten = TRUE)

print( get_prices_json$data ) # How to get a property in the json

get_prices_df <- as.data.frame(get_prices_json)