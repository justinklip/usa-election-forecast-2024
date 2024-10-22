#### Preamble ####
# Purpose: Cleans the polling data for our data of interest
# Author: Justin Klip and Dhruv Gupta 
# Date: 21 October 2024
# Contact: justin.klip@mail.utoronto.ca and dhruv.gupta@mail.utoronto.ca 
# License: MIT
# Pre-requisites: Have election_polls.csv downloaded
# Any other information needed? None

#### Workspace setup ####
library(tidyverse)
library(janitor)
library(dplyr)

#### Clean data ####
raw_data <- read_csv("data/01-raw_data/president_polls.csv")

cleaned_data <- raw_data %>%
  clean_names()

# Only look at those polls which have high grades and that are Kamala Harris
cleaned_data <- cleaned_data %>%
  filter(numeric_grade >= 3.0, candidate_name == "Kamala Harris")

# Create a binary variable to indicate whether the poll is national or not.
cleaned_data <- cleaned_data %>%
  mutate(is_national = if_else(is.na(state), 1, 0))

# View the cleaned data
print(cleaned_data)
cleaned_data
#### Save data ####
write_csv(cleaned_data, "data/02-analysis_data/cleaned_polls.csv")
