#Load managers dataset from github

getwd()

new_managers_data <- read.csv("MoreData.csv")

str(new_managers_data)
#show structure
#choose records we need to merge
#convert date field
#merge both dataset using rbind
