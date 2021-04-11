# MechaCar_Statistical_Analysis
In this analysis, I analyzed data from a fictional automotive manufacturing company "AutosRU". Their newest prototype, MechaCar is suffering from production issues. This analysis will provide insights to mitigate these issues. I used R to perform all the statistical analysis.

## Linear Regression to Predict MPG
I performed multiple linear regression to see if the following features could predict MPG: </br>
<strong>Vehicle length, vehicle weight, spoiler angle, ground clearance and AWD </br></br></strong>
<img src = "https://github.com/Kee2u/MechaCar_Statistical_Analysis/blob/main/images/Deliverable1.PNG?raw=true">

From the Pr(>|t|) values, we can see that vehicle length and ground clearance (as well as intercept) contribute a non random amount of variance to the mpg values in the dataset. This means that they have a significant impact on mpg. The intercept is statistically significant which means that there are variables that we havent considered. 

These significant variables in our model show that we cannot reject the null hypothesis. This also means that the slope of the linear model is not zero.

The r-squared value is 0.71, which means that roughly 71% of all mpg data can be predicted using this linear model. It is a good fit for the current dataset but the lack of independent variables alludes to the face that this model might be overfitting the data.

