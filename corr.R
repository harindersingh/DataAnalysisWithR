corr <- function(directory, threshold = 0) {
  compute <- function(fname) {
    r1 <- read.csv(file.path(directory, fname))
    nobs <- sum(complete.cases(r1))
    if (nobs > threshold) {
      return (cor(r1$nitrate, r1$sulfate, use="complete.obs"))
    }
  }
  
  res <- sapply(list.files(directory), compute)
  #maintain only the elements in the vector that are not NULL
  res <- unlist(res[!sapply(res, is.null)])
  res
}