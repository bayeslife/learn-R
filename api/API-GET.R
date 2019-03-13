

require("httr")
require("jsonlite")

base <- "http://dummy.restapiexample.com/api/v1/employees"

call1 <- paste(base)

resp <- GET(call1)

resp_text <- content(resp, "text")

resp_json <- fromJSON(resp_text, flatten = TRUE)

print( resp_json$data ) # How to get a property in the json

View(as.data.frame(resp_json))