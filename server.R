calculateBMI <- function(weight, height) {
  return((weight / (height * height)) * 703)
}
calculateBMIMetric <- function(weight, height) {
  return((weight / (height * height)) * 10000)
}


bmiToLabel <- function(bmi) {
  # Underweight = <18.5
  # Normal weight = 18.5–24.9
  # Overweight = 25–29.9
  # Obesity = BMI of 30 or greater
  if(bmi < 18.5) {
    return("Underweight")
  }
  else if(bmi < 25) {
    return("Normal weight")
  }
  else if(bmi < 30) {
    return("Overweight")
  }
  else {
    return("Obese")
  }
}

bmiToLabel2 <- function(bmimetric) {
  # Underweight = <18.5
  # Normal weight = 18.5–24.9
  # Overweight = 25–29.9
  # Obesity = BMI of 30 or greater
  if(bmimetric < 18.5) {
    return("Underweight")
  }
  else if(bmimetric < 25) {
    return("Normal weight")
  }
  else if(bmimetric < 30) {
    return("Overweight")
  }
  else {
    return("Obese")
  }
}
shinyServer(
  function(input, output, session) {
    output$bmi <- renderPrint({calculateBMI(input$weight, input$height)})
    output$label <- renderPrint({bmiToLabel(calculateBMI(input$weight, input$height))})
    output$bmimetric <- renderPrint({calculateBMIMetric(input$weight, input$height)})
    output$label2 <- renderPrint({bmiToLabel2(calculateBMIMetric(input$weight, input$height))})

    }
)
