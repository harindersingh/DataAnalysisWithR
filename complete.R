complete <- function(directory, id = 1:332) {
  setwd(directory)
  files <- list.files()
  dat <- data.frame() #create empty data frame
  for(i in id){
    rd <- read.csv(files[i])
    res1 <- length(which(rd[, 2] != "NA"))
    res2 <- length(which(rd[, 3] != "NA"))
    #print(head(rd))
    #if(res1 < res2)
    #     res <- res1
    #if(res1 > res2)
    #     res <- res2
    res <- sum(complete.cases(rd))
    newrow <- data.frame(i, res)
    dat <- rbind(dat, newrow)
  }
  colnames(dat) <- c("id", "nobs")
  dat
}