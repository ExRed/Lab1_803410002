#read file
myData <- read.csv2("traffic-data.csv", header = T, sep=",")

#the three variables with data from the file
speed <- myData$speed
occupancy <- myData$occupancy
volume <- myData$volume

#cbind stuff
dtbind <- cbind(speed,occupancy,volume)

#check if its a matrix
is.matrix(dtbind)

#new variable
dtfrm <- dtbind

print(dtfrm)

dtfrm1 <- read.table("traffic-data.csv")
dtfrm2 <- read.csv("traffic-data.csv")

print(dtfrm1)
print(dtfrm2)

#names(dtfrm1)
#names(dtfrm2)
#str(dtfrm1)
#str(dtfrm2)
#dim(dtfrm1)
#dim(dtfrm2)
#head(dtfrm1)
#head(dtfrm2)

print("The dimensions are different, because in the first statement,the seperator is not defined. therefore, the system will treat each line as a lingle string.")

#how many observations
print(nrow(dtfrm2))

#What are the minimum, mean, and maximum speed, occupancy and volume without removing missing value
print(summary(dtfrm))

trafficData <- na.omit(dtfrm)

#compute mean 'speed', mean 'volume' again (in dataset trafficData)
print(summary(trafficData))
