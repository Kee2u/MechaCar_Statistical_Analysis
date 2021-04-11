# MechaCar_Statistical_Analysis
In this analysis, I analyzed data from a fictional automotive manufacturing company "AutosRU". Their newest prototype, MechaCar is suffering from production issues. This analysis will provide insights to mitigate these issues. I used R to perform all the statistical analysis.

## Linear Regression to Predict MPG
I performed multiple linear regression to see if the following features could predict MPG: </br>
<strong>Vehicle length, vehicle weight, spoiler angle, ground clearance and AWD </br></br></strong>
<img src = "https://github.com/Kee2u/MechaCar_Statistical_Analysis/blob/main/images/Deliverable1.PNG?raw=true">

From the Pr(>|t|) values, we can see that vehicle length and ground clearance (as well as intercept) contribute a non random amount of variance to the mpg values in the dataset. This means that they have a significant impact on mpg. The intercept is statistically significant which means that there are variables that we havent considered. 

These significant variables in our model show that we cannot reject the null hypothesis. This also means that the slope of the linear model is not zero.

The r-squared value is 0.71, which means that roughly 71% of all mpg data can be predicted using this linear model. It is a good fit for the current dataset but the lack of independent variables alludes to the face that this model might be overfitting the data.

## Summary Statistics on Suspension Coils
I calculated summary statistics for the pounds per square inch of suspension coils for manufacturing lots. Here are the results:

The design specifications require that the variance of the suspension coils must not exceed 100 pounds per square inch. As a whole, the variance is within those specifications.</br></br>
<img src = "https://github.com/Kee2u/MechaCar_Statistical_Analysis/blob/main/images/total_summary.PNG?raw=true">

Once we look at the data by lots, however, we notice that lot 3 does not meet these specifications. There must have been a problem in the manufacturing process while lot 3 was being built.</br></br>
<img src = "https://github.com/Kee2u/MechaCar_Statistical_Analysis/blob/main/images/lot_summary.PNG?raw=true">

## T-Tests on Suspension Coils
Here are the T test results for the suspension coils: </br>
### Combined Lots t test: </br>
The p value is over the significance level of 0.05 which means that the null hypothesis cannot be rejected and the mean of all the lots combined is statistically similar to the population mean of 1500.</br>
<img src = "https://github.com/Kee2u/MechaCar_Statistical_Analysis/blob/main/images/population_ttest.PNG?raw=true">

### Lot 1 t test: </br>
The p value is over the significance level of 0.05 which means that the null hypothesis cannot be rejected and the mean of lot 1 is statistically similar to the population mean of 1500.</br>
<img src = "https://github.com/Kee2u/MechaCar_Statistical_Analysis/blob/main/images/lot1_ttest.PNG?raw=true">

### Lot 2 t test: </br>
The p value is over the significance level of 0.05 which means that the null hypothesis cannot be rejected and the mean of lot 2 is statistically similar to the population mean of 1500.</br>
<img src = "https://github.com/Kee2u/MechaCar_Statistical_Analysis/blob/main/images/lot2_ttest.PNG?raw=true">

### Lot 3 t test: </br>
This time, the p value is under the significance level of 0.05 which means that the null hypothesis can be rejected and the mean of lot 3 is not statistically similar to the population mean of 1500.</br>
<img src = "https://github.com/Kee2u/MechaCar_Statistical_Analysis/blob/main/images/lot3_ttest.PNG?raw=true">

## Study Design: MechaCar vs Competition
One of the key factors that influence a customer's satisfaction with a car is its gas milage. It can be measured by driving cars from different brands for a fixed distance and then comparing gas levels after the test. 

We can start this analysis by conducting the ANOVA test. The ANOVA test will give us a p value that will enable us to accept or reject the null hypothesis. If the p value is lower than the significance level, it means that at least one of the means of the cars is different. The hypotheses will be as follows:</br></br>
<strong>Null Hypothesis:</strong>: The mean of the gas mileage is the same for all car brands.</br>
<strong>Alternative Hypothesis:</strong> The mean of the gas milage of at least on of the car brands is different.</br>

Then we can do further analysis using a series of paired T tests to compare MechaCar with its competitors individually.
The hypotheses of each of the paired t tests will be:</br></br>
<strong>Null Hypothesis:</strong> The difference between our paired observations (the true mean difference, or "μd") is equal to zero.</br>
<strong>Alternative Hypothesis:</strong> The difference between our paired observations (the true mean difference, or "μd") is not equal to zero.</br>

The paired t test will give us a P value that will enable us to accept or reject the null hypothese. It will also give us a difference in means that will enable us to compare the gas mileage of MechaCar with each of its competitors.

The data collected needs to be numerical and continuous, normally distributed, reasonably large and with similar variance between groups.
