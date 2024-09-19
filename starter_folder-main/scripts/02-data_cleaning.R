#### Preamble ####
# Purpose: Cleans the raw plane marriage data into an analysis dataset
# Author: Rohan Alexander [...UPDATE THIS...]
# Date: 6 April 2023 [...UPDATE THIS...]
# Contact: rohan.alexander@utoronto.ca [...UPDATE THIS...]
# License: MIT
# Pre-requisites: Need to have downloaded the data
# Any other information needed? None

#### Workspace setup ####
library(tidyverse)

#### Clean data ####
raw_data <- read_csv("data/raw_data/raw_data.csv")

cleaned_data <-
  raw_data |>
  janitor::clean_names() |>
  
  ####### IMPORTANT FOR MY PAPER 1 ########
###### HE WAS ABLE TO SEPARATE THE DATES INTO DAYS #####

  separate(col = time_period, 
           into = c("year", "month"),
           sep = "-") |>
mutate(data = lubridate::ymd(paste(year, month, "01", sep = "-"))
  )

#### THE ABOVE PART IS VERY IMPORTANT FOR MY PAPER



#### Save data ####
write_csv(cleaned_data, "data/analysis_data/analysis_data.csv")
