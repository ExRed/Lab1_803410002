#TEST read file
myData <- read.csv2("traffic-data.csv", header = T, sep=",")
#the three variables with data from the file
speed <- myData$speed
occupancy <- myData$occupancy
volume <- myData$volume





# create variable speed, occupancy, volume with c()
myData <- c(speed,occupancy,volume)


# create variable 'dtbind'  that combines speed, occupancy and volume using cbind() 
dtbind <- cbind(speed,occupancy,volume)

#Then check whether 'dtbind' is a matrix
print(is.matrix(dtbind))

#create data frame from the variable that you have created above, store to a new variable, called  "dtfrm" 
dtfrm <- data.frame(dtbind)
print(dtfrm)#data.frame

#read dataset use read.table() 
dtfrm1 <- read.table("traffic-data.csv")
print(dtfrm1)

#read dataset use read.csv()
dtfrm2 <- read.csv("traffic-data.csv")
print(dtfrm2)


#check your data correctness using names(), str(), dim(), head()
names(dtfrm1)
names(dtfrm2)
str(dtfrm1)
str(dtfrm2)
dim(dtfrm1)
dim(dtfrm2)
head(dtfrm1)
head(dtfrm2)


#why dimenssion dtfrm1 and dtfrm2 different?
print("The dimensions are different, because in the first statement,the seperator is not defined. therefore, the system will treat each line as a lingle string.")

#Compute the following: how many observations were made ?
print(nrow(dtfrm2))


#compute mean 'speed', mean'volume' without removing missing value NA (without na.rm=TRUE)
print(summary(dtfrm))


#Create new dataset called 'trafficData' with removing NA 
trafficData <- na.omit(dtfrm)

#compute mean 'speed', mean 'volume' again (in dataset trafficData) 
print(summary(trafficData))
