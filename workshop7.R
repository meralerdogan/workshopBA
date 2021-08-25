library(tidyverse)
library(skimr)
library(lubridate)

theme_set(theme_light())

coffee_ratings <- readr::read_csv('https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2020/2020-07-07/coffee_ratings.csv')


coffee_ratings%>%
skim(coffee_ratings)

coffee_ratings%>%
head(10)

coffee_ratings%>%
count(country_of_origin)%>%


coffee_ratings%>%
group_by(region)


coffee_ratings%>%
arrange(desc(total_cup_points))




data(coffee_ratings)
coffee_ratings%>%ggplot(
  aes(x=country_of_origin,
      y=total_cup_points,
  color=country_of_origin)
)+
  geom_count()



data(coffee_ratings)
coffee_ratings%>%ggplot(
  aes(x=species,
      y=total_cup_points,
      color=country_of_origin)
)+
  geom_count()



coffee_ratings <- coffee_ratings %>%
mutate(coffee_id = row_number()) %>%
filter(total_cup_points > 0)



coffee_ratings%>%count(variety, sort=TRUE)


coffee_lumped <- coffee_ratings %>%
  filter(!is.na(variety)) %>%
  mutate(variety = fct_lump(variety, 12), sort = TRUE)
coffee_lumped %>% count(variety)


coffee_lumped %>%
  mutate(variety = fct_reorder(variety, total_cup_points)) %>%
  ggplot(aes(total_cup_points, variety)) +
  geom_boxplot()



coffee_lumped %>%
  ggplot(aes(total_cup_points, fill = variety)) +
  geom_histogram(binwidth = 2) +
  facet_wrap(~ variety, scale = "free_y") +
  theme(legend.position = "none")

  
coffee_ratings%>%count(species,country_of_origin, sort=TRUE)

coffee_ratings%>%
  ggplot(aes(country_of_origin))+
  geom_bar()+
  coord_flip()
  


coffee_ratings%>%
  ggplot(aes(total_cup_points))+
  geom_histogram()



data(coffee_ratings)
coffee_ratings%>%ggplot(
  aes(x=altitude,
      y=total_cup_points)
)+
  geom_point()



lm(total_cup_points~species+country_of_origin, data=coffee_ratings)

  