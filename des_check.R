install.packages("ISwR")
library("IswR")
tdf <- read.csv("G:/Wave/training_data_example.csv")
vdf <- read.csv("G:/Wave/validation_data_example.csv")

tdf$expense.description <- as.character(tdf$expense.description)

#beging to classify those that do not look like anomolies
h <- unique(tdf$expense.description[which(duplicated(tdf$expense.description))])
as.character(h) #find out how many duplicate exist

#bollean classification for possible erroneous spending
for (i in 1:length(tdf$expense.description)){
      
     if (grepl(tdf$expense.description[i], h[1]) !=0 |
        (grepl(tdf$expense.description[i], h[2]) !=0 |
        (grepl(tdf$expense.description[i], h[3]) !=0 |
        (grepl(tdf$expense.description[i], h[4]) !=0))))
       {
        tdf$check[i] <- 1 
      } else {
        tdf$check[i] <- 0 }
}
> View(tdf)

#execute for validation data set
f <- unique(vdf$expense.description[which(duplicated(vdf$expense.description))])
as.character(f)

for (i in 1:length(vdf$expense.description)){
  
  if (grepl(vdf$expense.description[i], f[1]) !=0)
  {
    vdf$check[i] <- 1 
  } else {
    vdf$check[i] <- 0 }
}
View(vdf)
