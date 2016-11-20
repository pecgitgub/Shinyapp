#
# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#
library(shiny)
 
points <- c(63, 54,51)

shinyServer(function(input, output) {

  output$text1 <- renderText(input$Slider2 + 10)
  
  output$text2 <- renderText(input$text2)
  output$Checkbox1 <- renderText(input$Checkbox1)
  output$CheckGroup <- renderText(input$CheckGroup)
  output$Cardinals <- renderText(input$Cardinals)
  output$Seattle <- renderText(input$Seattle)
})