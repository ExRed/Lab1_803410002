#Part1



#Use the read.table function to import data from that file in a variable called DeepSea.
setwd("D:\\Dropbox\\CCU\\2014-_PhD\\R Programming\\Lab1_803410002\\Lab3")
DeepSea  <- read.table(file="ISIT.txt", header=TRUE)

#Use the names, str, dim, head functions to check the correctness of DeepSea.
print(names(DeepSea))
print(str(DeepSea))
print(dim(DeepSea))
print(head(DeepSea))

#Use the unique function to check all possible stations in DeepSea.
print(unique(DeepSea))

#Extract the subset of DeepSea data from station 1 in a variable called DeepSea.sta1 Compute the following: how many observations were made at station 1?
DeepSea.sta1 <- subset(DeepSea, Station == 1)
print(dim(DeepSea.sta1)[1])

#min, max, average
print(min(DeepSea.sta1$SampleDepth))
print(mean(DeepSea.sta1$SampleDepth))
print(max(DeepSea.sta1$SampleDepth))

#Compare the data at stations 1,2,3,4,5, which two stations have fewest observations?
print(dim(subset(DeepSea, Station==1))[1])
print(dim(subset(DeepSea, Station==2))[1])
print(dim(subset(DeepSea, Station==3))[1])
print(dim(subset(DeepSea, Station==4))[1])
print(dim(subset(DeepSea, Station==5))[1])
print("Station 4 and station 5 have the fewest observations.")


#Create a new data frame called DeepSea.clean by omitting the two stations with fewest observations from DeepSea data. Show how many observations were left.
DeepSea.clean <- subset(DeepSea, Station != 4 && Station != 50)
print(dim(DeepSea.clean)[1])


#Extract the subset of DeepSea data from month Aug, Sep, Oct of all years in a variable called DeepSea.fall. Show the number of observations.
DeepSea.fall <- subset(DeepSea, (Month == 8 | Month == 9 | Month == 10) )
print(nrow(DeepSea.fall))#Oh, I can do nrow() instead of dim()[1]? sweet :D


#Extract the subset of DeepSea data that were measured at depths greater than 2000 meters from all years and months in a variable called DeepSea.dep2000. Show the number of observations.
DeepSea.dep2000 <- subset(DeepSea, SampleDepth > 2000)
print(nrow(DeepSea.dep2000))


#Extract the subset of DeepSea data that were measured at depths greater than 2000 meters in Aug, Sep, Oct of year 2001 in a variable called DeepSea.dep2000.fall2001.
DeepSea.dep2000.fall2001 <- subset(DeepSea.dep2000, Month>=8 & Month <=10 & Year == 2001)
print(nrow(DeepSea.dep2000.fall2001))




#Part2
require(XML)

# Save the URL of the xml file in a variable e.g xml.url
xml.url <- "http://www.w3schools.com/xml/plant_catalog.xml"

# Use the xmlTreeParse-function to parse xml file directly from the web save into variable
data <- xmlTreeParse(xml.url)

#Use the xmlRoot-function to access the top node
root <- xmlRoot(data)

#5.# have a look at the XML-code of the first subnodes e.g. xmltop[1:2]:
xmlRoot(data)[1:2]

#6.# To extract the XML-values from the document, use xmlSApply save into variable plantcat <- :
xml_data <- xmlToList(data)


#Finally, get the data in a data-frame and have a look at the first rows and columns (plantcat_df <- data.frame() )
plantcat_df <- data.frame(plantcat, row.names = NULL)



print(plantcat_df[3])
print(plantcat_df[4])
print(plantcat_df[5])
