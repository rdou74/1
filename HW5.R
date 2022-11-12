# HW 5                           

# Notes:  

# 1) You do NOT need to submit the tidy data! Submit only your code

# 2) To-do: For each of the following datasets, provide code to tidy the dataset! 

# REMEMBER: You must do
#   1. Pivoting:                        https://r4ds.had.co.nz/tidy-data.html#pivoting
#         Longer  
#         Wider
#   2. Separating                       https://r4ds.had.co.nz/tidy-data.html#separating-and-uniting
#   3. Uniting           
#   4. Missing value.                   https://r4ds.had.co.nz/tidy-data.html#missing-values-3

# If you need a refresher on what tidy data means: https://r4ds.had.co.nz/tidy-data.html





########################
###### 1) Climate change data
# Source: https://data.world/worldbank/climate-change-data
# Don't download from source, use Canvas version as I've made edits to make it easier
library(tidyverse)
library(readxl)

climate <- read_excel('./data/climate_change_edit.xls')
View(climate)




########################
###### 2) City health data
# Source: https://data.world/health/big-cities-health

health <- read_csv('./data/Big_Cities_Health_Data_Inventory.csv')

# there are duplicates! how do we check and then get rid of duplicate rows?
which(duplicated(health))
health <- health %>% distinct() 

which(duplicated(health_d))




########################
###### 3) Activities
# Source: https://cfss.uchicago.edu/notes/tidy-exercise/
# Note: the link above has the answer! 
# We're relying on your honesty to not just copy/paste it :)

load(file="./data/activities.rda")
View(activities)




########################
###### 4) TB cases
# Source: https://www.who.int/teams/global-tuberculosis-programme/data
# Hints for similar dataset (code is in Python, just need to translate to R!): https://towardsdatascience.com/whats-tidy-data-how-to-organize-messy-datasets-in-python-with-melt-and-pivotable-functions-5d52daa996c9
# Don't download from source, use Canvas version as I've made edits to make it easier

tb <- read_csv('./data/TB_notifications_2020_edited.csv')
View(tb)


