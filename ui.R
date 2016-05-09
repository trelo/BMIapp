shinyUI(
  pageWithSidebar(
    headerPanel("Calculate Your Body Mass Index"),
    sidebarPanel(
      helpText('Enter your weight and height using standard (pounds & inches ) or
               metric (kilograms & centimeters) measures.'),
      radioButtons("measure", "Measure Type",
                   c("Standard" = "std",
                     "Metric" = "met"), inline = TRUE, width = NULL),
      numericInput('weight', 'Your Weight (pounds or kilograms)', 120, min = 0, max = 1000, step = 1),
      numericInput('height', 'Your Height (inches or centimeters)', 65, min = 12, max = 108, step = 1),
      submitButton('Compute BMI')
    ),
    mainPanel(
      tabsetPanel(
        tabPanel('Standard',
        h3('Your BMI'),
        verbatimTextOutput("bmi"),
        h3('BMI Category'),
        verbatimTextOutput("label"),
        h5('BMI Weight categories:'),
        h6('1.underweight   (BMI less than 18.5)'),
        h6('2.normal weight (BMI between 18.5 & 24.9)'),
        h6('3.overweight    (BMI between 25.0 & 29.9)'),
        h6('4.obese         (BMI 30.0 and above)')),
        tabPanel('Metric',
        h3('Your BMI'),
        verbatimTextOutput("bmimetric"),
        h3('BMI Category'),
        verbatimTextOutput("label2"),
        h5('BMI Weight categories:'),
        h6('1.underweight   (BMI less than 18.5)'),
        h6('2.normal weight (BMI between 18.5 & 24.9)'),
        h6('3.overweight    (BMI between 25.0 & 29.9)'),
        h6('4.obese         (BMI 30.0 and above)'))
    )
  )
))
