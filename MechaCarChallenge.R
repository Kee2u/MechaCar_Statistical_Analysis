#Load dplyr package
library(dplyr)

#Read mechacar data
mechacar_data <- read.csv('MechaCar_mpg.csv')

#Perform multiple linear regression
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = mechacar_data)

#Calculate summary
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = mechacar_data))