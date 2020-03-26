#load dataset
my_data <- read.csv("Diabetes-md.csv")

#2
str(my_data)
class(my_data)

#3
my_data[!complete.cases(my_data),]

# appears that some fields have missing data that needs recoded
my_data$Address[my_data$Address == ""] <- NA
my_data$Daibetes.type[my_data$Daibetes.type == ""] <- NA
my_data$Status[my_data$Status == ""] <- NA

my_data[!complete.cases(my_data),]
#this shows that it still contains "" so to update we need to convert to char
#first and then recode to factor
str(my_data)
my_data$Daibetes.type <- as.character(my_data$Daibetes.type)
str(my_data)

#convert back to a factor
my_data$Daibetes.type <- as.factor(my_data$Daibetes.type)
str(my_data)

#convert address to char
my_data$Address <- as.character(my_data$Address)
str(my_data)

#convert status to char --> factor
my_data$Status <- as.character(my_data$Status)
str(my_data)
my_data$Status <- as.factor(my_data$Status)
str(my_data)
my_data

#deal with missing data. how do we decide what to do?
#chart mssing data first. refer to Github notes.

#analysing missing data

# refresh understanding of NA's in the data
my_na <- my_data[!complete.cases(my_data),]
nrow(my_na)

#install packages
#install.packages("mice")
library(mice)
md.pattern(my_data)

# use VIM package to show the missing values
library(VIM)
missing_values <- aggr(my_data, prop = FALSE, numbers = TRUE)
summary(missing_values)

#i've decided that missing NI addresses are not important
# and i'll keep them
# Only data with missing "type" and "health status"
# are important in this study so will be deleted

my_na <- my_data[!complete.cases(my_data$Daibetes.type, my_data$Status),]
my_na
nrow(my_na)
nrow(my_data)

# 15 rows have missing information
#reverse the logic to contain relevant data
full_data <- my_data[complete.cases(my_data$Daibetes.type, my_data$Status),]
nrow(full_data)

# 4 configure type to unordered factor
# refactor status
my_data$Status <- factor(my_data$Status, order = TRUE, levels = c("Poor", "Improved", "Excellent"))
str(my_data)

#5 
col_names = c("Patient name", "NI address", "Type", "Age", "Health status")
colnames(my_data) <- col_names
head(my_data, 10)

#6
patient_names <- my_data[1:1]
head(patient_names, 10)
