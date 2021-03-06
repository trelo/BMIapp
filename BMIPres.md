Body Mass Index Calculator App
========================================================
author: Trelo
date: Sun May 08 05:30:11 2016
autosize: true

BMI - Intro
========================================================

Body mass index (BMI) is a measure of body fat based on height and weight that applies to adult men and women.

BMI is a measurement which determines which weight category a person belongs to. Depending on their height and weight, a person can belong to one of the following weight categories:

-	underweight (BMI less than 18.5)
-	normal weight (BMI between 18.5 & 24.9)
-	overweight (BMI between 25.0 & 29.9)
-	obese (BMI 30.0 and above)

BMI Background
========================================================
BMI can calculated using height and weight values of a person. Depending on the measures, the BMI can be calculated using imperial or metric methods.

- **Imperial (US) Method**

The imperial formula accepts height measurements in inches and weight in pounds.

$BMI = \frac{(Weight * 703)}{Height ^ 2}$

*Weight in pounds & Height in inches*

- **Metric Method**

  The metric formula accepts height measurements in meters and weight in kilograms.

$BMI = \frac{Weight}{Height ^ 2}$

*Weight in kilograms & Height in meters*

BMI App - Details
========================================================
The BMI app will help user calculate BMI and find weight category by providing thier weight and height

- **Imperial (US) Method**


```r
calculateBMIStd <- function(weight, height) {
  return((weight / (height * height)) * 703)
}
```

- **Metric Method**


```r
calculateBMIMetric <- function(weight, height) {
  return(weight / (height * height))
}
```

BMI Shiny App
========================================================
The BMI Shiny app can be found at <https://trelo.shinyapps.io/BMIapp/>

**How the BMI app works**

1. User to enter  weight and height using either standard or metric measures.

2. User clicks on "Compute BMI" and BMI and BMI Category will appear on main page.

User can view BMI and BMI categories either in Standard or Metric measures.

The corresponding ui.R and server.R can be found at following link

