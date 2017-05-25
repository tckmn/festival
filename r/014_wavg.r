#!/usr/bin/env Rscript

data <- read.table(file('stdin'))
cat(sum(data[,1] * data[,2]) / sum(data[,2]), '\n')
