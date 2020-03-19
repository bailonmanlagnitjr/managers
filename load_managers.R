#Load managers dataset from github

df <- read.table("https://s3.amazonaws.com/assets.datacamp.com/blog_assets/test.csv", 
                 header = FALSE,
                 sep = ",")

#show structure
#choose records we need to merge
#convert date field
#merge both dataset using rbind
