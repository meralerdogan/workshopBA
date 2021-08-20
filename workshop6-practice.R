library(tidyverse)
library(lubridate)
library(skimr)

brewing_materials <- readr::read_csv('https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2020/2020-03-31/brewing_materials.csv')
beer_taxed <- readr::read_csv('https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2020/2020-03-31/beer_taxed.csv')
brewer_size <- readr::read_csv('https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2020/2020-03-31/brewer_size.csv')
beer_states <- readr::read_csv('https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2020/2020-03-31/beer_states.csv')

skim(brewing_materials)

brewing_materials %>% count(material_type)

brewing_materials %>% count(data_type)

brewing_materials %>% count(type)

brewing_materials<-brewing_materials %>% 
  mutate(material_type=as_factor(material_type))

brewing_materials %>%head()

#test



