## **<h1 align="justify"> MechaCar_Statistical_Analysis**
  	
---
## Overview of the project: 
<p align="justify">The objective of the project to analysis data with statistics and hypothesis testing of datasets of a automotive industry. And all the testing and analysis and visualization is written with the R programming language. <p>
	
---

<p align="justify">This project consists of four technical analysis deliverables. <p>

- Deliverable 1: Linear Regression to Predict MPG
- Deliverable 2: Summary Statistics on Suspension Coils
- Deliverable 3: T-Test on Suspension Coils
- Deliverable 4: Design a Study Comparing the MechaCar to the Competition
	

### Resources
- Data Source: [ MechaCar_mpg.csv](https://github.com/sharifbhuiyan/MechaCar_Statistical_Analysis/tree/main/Resources), [ Suspension_Coil.csv](https://github.com/sharifbhuiyan/MechaCar_Statistical_Analysis/tree/main/Resources)  	
- Software: RStudio-2022.02.3-492

## Linear Regression to Predict MPG:
	
<p align="center">
  <img width="400" src=https://github.com/sharifbhuiyan/MechaCar_Statistical_Analysis/blob/main/Resources/D1.png
</p>  
	

- In the summary output, each Pr(>|t|) value represents the probability that each coefficient contributes a random amount of variance to the linear model. According to our results vehicle length and ground clearance (and Intercept) provide a non-random amount of variance to the linear model of mpg.
- According to the results, the multi linear model is:
mpg = 6.27 * vehicle_length + 1.25e-3 * vehicle_weigth + 6.88e-2 * spoiler_angle -3.41 * AWD + 3.55 * ground_clearance - 1.04e+2
Approximated to:
mpg = 6.27 * vehicle_length - 3.41 * AWD + 3.55 * ground_clearance - 104
So the slope of the linear model is not considered to be zero.
- R-square is 0.71 so 71% of the variations in mpg can be explained by changes in the vehicle length, the vehicle weight, the spoiler angle, the drivetrain and the ground clearance. We can consider this linear model as fairly efficient to predict mpg of MechaCar prototypes.
	
	
### Summary Statistics on Suspension Coils
	
<p align="center">
  <img width="500" src=https://github.com/sharifbhuiyan/MechaCar_Statistical_Analysis/blob/main/Resources/D2.png
</p>  
	
- Highest activity hours are from 5:00 PM to 7:00 PM.
- Maintenance hours are 2:00 AM to 5:00 AM because of slow time of riding. 

### T-Tests on Suspension Coils
### T-Test all manufacturing lots against the population mean
	
<p align="center">
  <img width="500" src=https://github.com/sharifbhuiyan/MechaCar_Statistical_Analysis/blob/main/Resources/d3.png
</p>  

- Most checkout time is from 4 to 6 hours.
	
### T-Tests each manufacturing lot against the population mean
- Lot_1
	
<p align="center">
  <img width="500" src=https://github.com/sharifbhuiyan/MechaCar_Statistical_Analysis/blob/main/Resources/t1.png
</p>
	
- Here showing that Male users take long time than the female users.
	
- Lot_2
	
<p align="center">
  <img width="500" src=https://github.com/sharifbhuiyan/MechaCar_Statistical_Analysis/blob/main/Resources/t2.png 
</p>
	
- Most weekday rides are around 7 to 9 and 5 to 7.
- And also weekend rides are pick from 10 to 7.

- Lot_3
	
<p align="center">
  <img width="500" src=https://github.com/sharifbhuiyan/MechaCar_Statistical_Analysis/blob/main/Resources/t3.png
</p>

	
## Summary:
<p align="justify"> From this project analysis of activity of the bike sharing in NYC during the month of August 2019 is pick. and most of the rides remain active in Manhattan Island. So, the conclusion of the project is that as a alternative of transportation for cummuting workers Bike service is mostly preferable one. <p> 

