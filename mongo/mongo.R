

library(mongolite)

# This will connect to the development mongo db instance
# Be sure to have the VPN established
m <- mongo( url = "mongodb://10.8.161.147:27017", db="coates", collection="geomeasurement")

c <- m$count('{ "AssetId": 1192, "Epoch": { "$gt": 1552525649, "$lt": 1552625649 }}')
# Returns 3300 records 

f <- m$find('{ "AssetId": 1192, "Epoch": { "$gt": 1552525649 }}')
View(f)
