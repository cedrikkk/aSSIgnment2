library(downloader)  # download (hopefully platform independent)
library(tools)       # md5sum
URL <- "https://d396qusza40orc.cloudfront.net/repdata%2Fdata%2FStormData.csv.bz2"
bz2.filename <- "repdata_data_StormData.csv.bz2"
download(url, "./FStorm_Data.csv.bz2",mode="wb")

download(URL, bz2.filename, mode="wb")      # Download from coursera site
file.info("./FStorm_Data.csv.bz2")                     # metadata about file
md5sum("./FStorm_Data.csv.bz2")     
