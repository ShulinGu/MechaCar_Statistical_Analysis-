library(dplyr)

MechaCar_mpg <- read.csv(file = "MechaCar_mpg.csv")

lm(vehicle_length ~ vehicle_weight + spoiler_angle + ground_clearance + AWD + mpg,  data = MechaCar_mpg)

summary(lm(vehicle_length ~ vehicle_weight + spoiler_angle + ground_clearance + AWD + mpg,  data = MechaCar_mpg))




