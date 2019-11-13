#Exercise 7 -- Custom Functions in R -- Tess Marvin
#Problem 1
#usage oddRows(dataFr=dataframe_name)
oddRows <- function(dataFr)
{
  return(dataFr[seq(1, nrow(dataFr), by =2),])
}
#Problem 2 Part A: return the number of observations for a given species included in the data set 
flower <- read.csv("iris.csv")
#usage numSpecies(dataset=dataframe_name, spec=species_name_in_quotes)
numSpecies <- function(dataset, spec)
  {
    #Rule, there needs to be a column called Species in our dataframe
    subset <- dataset[dataset$Species == spec,]
    return(nrow(subset))
  }
#Problem 2 Part B: return a dataframe for flowers with Sepal.Width > a value specified by user 
#usage dataframe_name <- sepalwidthcount(dataF=data_frame_analyzing, value=2.9)
sepalwidthcount <- function(dataF,value)
{
  #Rule, there needs to be a column called Sepal.Width in our dataframe 
  newDat <- dataF[dataF$Sepal.Width > value,]
  data.frame(newDat)
  return(newDat)
}
#Problem 2 Part C: write the data for a given species to a comma-delimited file with species name 
speciescsv <- function(dataFra, spec)
{
  #Rule, there needs to be a column called Species in our dataframe 
  subset <- dataFra[dataFra$Species == spec,]
  name_of_file <-paste(spec,".csv", sep="")
  write.csv(subset,name_of_file)
}
