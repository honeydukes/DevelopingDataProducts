shinyServer(
  function(input, output) {
    
      output$text <- renderText({
      
      if (input$radio == 1) {
        paste(input$temp, "Fahrenheit =", round((input$temp - 32) * 5/9,1), "Celsius")
      }
      else if (input$radio == 2) {
        paste(input$temp, "Celsius =", round(input$temp * 9/5 + 32,1), "Fahrenheit")
        }

    })
  }
)

#set session to working directory that contains "ui.R" and "server.R" files
#type runApp() in R console (with output only)
#or type runApp(display.mode = 'showcase') in R console (with output + code)