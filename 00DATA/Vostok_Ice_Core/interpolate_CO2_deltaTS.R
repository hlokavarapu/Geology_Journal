#!/bin/R

t1 <- read.table('co2nat.txt', header=T)
t2 <- read.table('deutnat.txt', header=T)
#Every 10,000 years
time <- seq(0,4e5,1e3)

t1_interpolated <- approx(t1$Gas_age, t1$CO2_.ppmv., time)
t2_interpolated <- approx(t2$Ice_age_.GT4., t2$deltaTS, time)

t1_interpolated["deltaTS"] <- NA
t1_interpolated$deltaTS <- t2_interpolated$y
write.table(t1_interpolated, sep=' ', file='interpolated_CO2_deltaT.txt', row.names=F, col.names=c('Gas_age', 'CO2_ppmv', 'deltaTS'))
