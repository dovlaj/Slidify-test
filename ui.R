library(shiny)
shinyUI(pageWithSidebar(
  headerPanel("Shiny"),
  sidebarPanel(
      textInput(inputId = "t1", label = "1"),
      textInput(inputId = "t2", label = "2"),
      actionButton("goButton", "GO")
    ),
  mainPanel(
    p('Output text1'),
    textOutput('text1'),
    p('Output text2'),
    textOutput('text2'),
    p('Output text3'),
    textOutput('text3')
    )
  ))