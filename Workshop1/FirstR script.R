install.packages("tidyverse")#installing packages - do it ONCE!!!!
install.packages("broom")
install.packages("skimr")
install.packages("janitor")

library(tidyverse)
library(skimr)
library(janitor)

skim(iris) 

first_var<-10

first_var<-20

second_var<-"20"

olympics<-read_csv('https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2021/2021-07-27/olympics.csv')

olympics%>%skim()


survey<-read_csv('https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2021/2021-05-18/survey.csv')

survey%>% skim()

survey%>%head()


