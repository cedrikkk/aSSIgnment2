library(downloader)  # download (hopefully platform independent)
library(tools)       # md5sum
URL <- "https://d396qusza40orc.cloudfront.net/repdata%2Fdata%2FStormData.csv.bz2"
bz2.filename <- "repdata_data_StormData.csv.bz2"
download(url, "./FStorm_Data.csv.bz2",mode="wb")

download(URL, bz2.filename, mode="wb")      # Download from coursera site
file.info("./FStorm_Data.csv.bz2")                     # metadata about file
md5sum("./FStorm_Data.csv.bz2")     

#reduce the data
data<-FStormData[ 1:28]

 
#the variable "Injuries" has a large number of rows with the value 0
# we want to find the number of those rows with the value 0
length(grep("^0",data$INJURIES))
nrow(subset(data,INJURIES==0))

# as theses rows are not important for answering the question ,we delete them
#from our data set and keep only those rows with values greater than 0

myData<-subset(data,INJURIES!=0)
dim(myData)
head(myData)

#we know have 17604 rows...


#arrange the data for an easy analysis:
aggregate(INJURIES ~ EVTYPE+BGN_DATE+BGN_DATE,myData,sum)
