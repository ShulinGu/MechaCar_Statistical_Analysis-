#deliverable 1

library(dplyr)

MechaCar_mpg <- read.csv(file = "MechaCar_mpg.csv")

lm(vehicle_length ~ vehicle_weight + spoiler_angle + ground_clearance + AWD + mpg,  data = MechaCar_mpg)

summary(lm(vehicle_length ~ vehicle_weight + spoiler_angle + ground_clearance + AWD + mpg,  data = MechaCar_mpg))

#deliverable 2

Suspension_Coil <- read.csv(file = "Suspension_Coil.csv")

total_summary <- summarize(Suspension_Coil, Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI))

lot_summary <- Suspension_Coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI))

#deliverable 3

t.test(Suspension_Coil$PSI, mu = 1500)

t.test(subset(Suspension_Coil, Manufacturing_Lot == "Lot1")$PSI, mu=1500)

t.test(subset(Suspension_Coil, Manufacturing_Lot == "Lot2")$PSI, mu=1500)

t.test(subset(Suspension_Coil, Manufacturing_Lot == "Lot3")$PSI, mu=1500)
