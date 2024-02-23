# 1. Make sure you start R console or radian first

# 2. renv::restore()

# Load packages
library(languageserver)
library(jsonlite)
library(psych)

# Code
vector <- c(1, 2, 3, 4, 5, 6, 7)
psych::describe(vector)

vector |> describe()
