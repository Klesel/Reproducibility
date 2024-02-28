# ---------------------------------------------------------------
# This is a simplistic example to test reproducible code using R. 
#
# Note that using the R Extension in VS Code requires 
# the languageserver package. More Information can be found here:
# https://code.visualstudio.com/docs/languages/r
# 
#  Because we are using renv, it needs to be loaded to be a
# accessible for the extension.
# ---------------------------------------------------------------


library(languageserver)
library(psych)
library(conflicted)

conflicts_prefer(psych::describe)
# Code
vector <- c(1, 2, 3, 4, 5, 6, 7)

print(describe(vector))

