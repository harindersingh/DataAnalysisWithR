airquality <- read.csv("hw1_data.csv")
airquality[1:2, ]
airquality[152:153, ]
airquality[47, 1]
missinginozone <- airquality[is.na(airquality[ , 1]), ]
nrow(missinginozone)
maxozoneinmay <- airquality[1:31, ]
maxozoneinmay
max(maxozoneinmay[1, ], na.rm = TRUE)
meanofozone <- !is.na(airquality[1:153, 1])
mofo <- airquality[meanofozone, ]
mofo <- airquality[meanofozone, 1]
mofo
mean(mofo)
temp <- airquality[, 5] == 6
temp
meantempinjune <- airquality[temp, 4]
meantempinjune
mean(meantempinjune)


#quiz 3
library(datasets)
data(iris)
?iris
iris
?colMeansn

class(iris)
apply(iris[, 1:4], 2, mean)
colMeans(iris[, 1:4])
colMeans(iris[, c(1, 2)])
apply(iris[, c(1, 2)], 2, mean)
library(datasets)
data(mtcars)
?mtcars
mtcars
split(mtcars, mtcars$cyl)
tapply(mtcars$mpg, mtcars$cyl, mean)
x <- tapply(mtcars$hp, mtcars$cyl, mean)
dif <- abs(x[1] - x[3])
dif
