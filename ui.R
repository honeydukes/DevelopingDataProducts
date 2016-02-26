#install.packages("devtools")
#require(devtools)
#install.packages("shiny")
#library(shiny)

shinyUI(pageWithSidebar(
  headerPanel("Temperature Conversion"),
  sidebarPanel( 
    h4('Instruction'),
    h5('Step 1: Slide to temperature'),
    h5('Step 2: Choose conversion type'),
    h5('Step 3: Click "Convert" button'),
    h3('     '),
    sliderInput('temp', 'Temperature', value = 37, min = -150, max = 250, step = 0.5),
    radioButtons("radio", "Choose one :",
                      list("from Fahrenheit to Celcius" = 1,
                        "from Celsius to Fahrenheit" = 2), selected = 1),
    submitButton('Convert')
  ),
  mainPanel(
    h3('Conversion Result'),
    verbatimTextOutput('text')
  )
))