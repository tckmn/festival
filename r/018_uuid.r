#!/usr/bin/env Rscript

parts <- format(as.hexmode(as.integer(runif(8,
    min=c( 0x0000, 0x0000, 0x0000,0x4000,0x8000, 0x0000, 0x0000, 0x0000),
    max=c(0x10000,0x10000,0x10000,0x5000,0xc000,0x10000,0x10000,0x10000)))),
    width=4)
cat(paste(parts[1:2], collapse=''),
    parts[3],
    parts[4],
    parts[5],
    paste(parts[6:8], collapse=''),
    sep='-')
cat('\n')
