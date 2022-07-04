# Deliverable 1: Linear Regression to Predict MPG

library(tidyverse) #Import library- tidyverse package



mechaCarData <- read_csv("../Resources/MechaCar_mpg.csv") #Import MechaCar_data
head(mechaCarData) #Show first rows of data



lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + AWD + ground_clearance,data=mechaCarData) #Create linear regression model



summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + AWD + ground_clearance,data=mechaCarData)) #Create summary statistics


# Deliverable 2: Summary Statistics on Suspension Coils

suspension_coil_data <- read_csv("../Resources/Suspension_Coil.csv") #Import suspension coil_data.
head(suspension_coil_data)



total_summary <- suspension_coil_data %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI), .groups = 'keep') #Create total summary_table
total_summary



lot_summary <- suspension_coil_data %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI), .groups = 'keep')   #Create lot summary_table
lot_summary



# Deliverable 3: T-Test on Suspension Coils.

global_sample_table <- suspension_coil_data %>% sample_n(50)   #Random sample for 50 data points. 


plt <- ggplot(suspension_coil_data,aes(x=PSI))   #Import all coil_data into ggplot2.
plt + geom_density()  #Visualize distribution with density_plot.


plt <- ggplot(global_sample_table,aes(x=PSI))  #Import sample coil_data into ggplot2.
plt + geom_density() #Visualize distribution with density_plot.


plt <- ggplot(global_sample_table,aes(x=log10(PSI))) #Import sample coil_data into ggplot2.
plt + geom_density() #Visualize distribution with density_plot.


t.test(global_sample_table$PSI,mu=mean(suspension_coil_data$PSI)) #Compare sample versus population mean.



# Three more RScripts. 

psi_lot1_sample <- suspension_coil_data %>% subset(Manufacturing_Lot=='Lot1') %>% sample_n(25) #Create Lot-1 sample table for 25 data points.
t.test(psi_lot1_sample$PSI,mu=mean(suspension_coil_data$PSI)) #Compare Lot1 sample versus population mean.



psi_lot2_sample <- suspension_coil_data %>% subset(Manufacturing_Lot=='Lot2') %>% sample_n(25) #Create Lot-2 sample table for 25 data points.
t.test(psi_lot2_sample$PSI,mu=mean(suspension_coil_data$PSI)) #Compare Lot2 sample versus population mean.



psi_lot3_sample <- suspension_coil_data %>% subset(Manufacturing_Lot=='Lot3') %>% sample_n(25) #Create Lot-3 sample table for 25 data points.
t.test(psi_lot3_sample$PSI,mu=mean(suspension_coil_data$PSI)) #Compare Lot3 sample versus population mean.
