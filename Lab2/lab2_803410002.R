#Part1 vector (10%)
source("Part1_Vector.R")


#part2 matrices (10%)
source("Part2_Matrices.R")



#part3 (80%)
source("Part3_DataFrame.R")

# create variable speed, occupancy, volume with c()
# create variable 'dtbind'  that combines speed, occupancy and volume using cbind() 
#Then check whether 'dtbind' is a matrix
#create data frame from the variable that you have created above, store to a new variable, called  "dtfrm" 
#read dataset use read.table() 
# before that, type getwd() to show your current working directory path and setwd("your file path") to set your path
#read dataset use read.csv()
#check your data correctness using names(), str(), dim(), head()
#why dimenssion dtfrm1 and dtfrm2 different?
#Compute the following: how many observations were made ?
#compute mean 'speed', mean'volume' without removing missing value NA (without na.rm=TRUE)
#Create new dataset called 'trafficData' with removing NA 
#na.omit(your.data.frame)
#compute mean 'speed', mean 'volume' again (in dataset trafficData) 