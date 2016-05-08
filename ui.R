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
        verbatimTextOutput("label")),
        tabPanel('Metric',
        h3('Your BMI'),
        verbatimTextOutput("bmimetric"),
        h3('BMI Category'),
        verbatimTextOutput("label2"))
    )
  )
))
