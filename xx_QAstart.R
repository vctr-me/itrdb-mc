# Here is an example of grabbing a rwl from two rds files. 
# It shows how we can extract a rwl object and its meta info
# Fri Jul 26 00:21:43 2024 ------------------------------

library(tidyverse)
library(dplR)
rwls <- readRDS("Rdatafiles/rwls.rds")
rwls_meta <- readRDS("Rdatafiles/rwls_meta.rds")

nrow(rwls_meta)
length(rwls)

# the first study
rwls_meta[1,]
aRWL <- rwls[[1]]

rwl.report(aRWL)
summary(aRWL)
plot(aRWL)
