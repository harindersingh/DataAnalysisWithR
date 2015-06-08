pollutantmean <- function (directory, pollutant, id = 1:332){
  setwd(directory)
  files <- list.files()
  rd <- data.frame() #create empty data frame
  for(i in id){
    rd <- rbind(rd, read.csv(files[i]))
    #print(head(rd))
  }
  cm <- colMeans(rd[, 2:3], na.rm = TRUE)
  if(pollutant == "sulfate")
    m <- cm[1]
  else
    m <- cm[2]
  m
}
#all correct