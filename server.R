library(shiny)

shinyServer(
  function(input, output)
  { 
    output$text1 <- renderText({input$t1})
    output$text2 <- renderText({input$t2})
    output$text3 <- renderText({
      if (input$goButton == 1)
      {
        "You pressed it once"
      }
      else
      {
      isolate(paste(input$t1, input$t2))
      }
    })
  }
  )i