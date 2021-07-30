library(dplyr)

MechaCar_mpg <- read.csv(file = "MechaCar_mpg.csv")

lm(vehicle_length ~ vehicle_weight + spoiler_angle + ground_clearance + AWD + mpg,  data = MechaCar_mpg)

summary(lm(vehicle_length ~ vehicle_weight + spoiler_angle + ground_clearance + AWD + mpg,  data = MechaCar_mpg))

Suspension_Coil <- read.csv(file = "Suspension_Coil.csv")

total_summary <- summarize(Suspension_Coil, Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI))

lot_summary <- Suspension_Coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI))


