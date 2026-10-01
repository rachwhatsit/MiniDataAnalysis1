library(tidyverse)
music <- read_csv("dat/RollingStone500.csv")

glimpse(music)

#2 quant variable: scatterplot

music |> 
  ggplot(aes(`2003 Rank`, `2020 Rank`)) +
  geom_point()

View(music)

#album release year to weeks on billboard 
#how has staying power on the charts changed over time?
#2 quant vars so we could look a scatterplot

music |> 
  mutate(weeks = as.numeric(`Wks on Billboard`)) |> 
  ggplot(aes(x=`Release Year`, weeks)) + 
  geom_point()

music |> 
  mutate(weeks = as.numeric(`Wks on Billboard`)) |> 
  filter(weeks > 600)


music |> 
  mutate(weeks = as.numeric(`Wks on Billboard`)) |> 
  group_by(`Album Genre`) |> 
  summarise(mean_wks = mean(weeks, na.rm = TRUE))  |> 
  arrange(mean_wks)

load("dat/hcmst.rusethis::use_git()da")

glimpse(hcmst)
