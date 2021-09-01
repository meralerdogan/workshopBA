install.packages("randomForest")
library(randomForest)
library(tidyverse)

data(iris)


set.seed(123)
randomForest(Species~Sepal.Length+Sepal.Width, data=iris)

