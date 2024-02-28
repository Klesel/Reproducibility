library(languageserver)
library(psych)
library(conflicted)

conflicts_prefer(psych::describe)
# Code
vector <- c(1, 2, 3, 4, 5, 6, 7)
describe(vector)
