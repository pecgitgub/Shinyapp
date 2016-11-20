#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#
library(shiny)

# Define UI for application that draws a histogram
shinyUI (fluidPage (
  headerPanel("Shiny application , Week 4"),
  sidebarPanel(
    h1("Move the Slider!"),
    sliderInput("Slider2","Slide Me!", 0, 100,0)
  ),
  mainPanel(
    
     h3("Slider Value:", textOutput("text1"))
     
      ),
  br(),
  br(),
     tabsetPanel(
            tabPanel("Textbox",
                     h3("How to use the App documentation "),
                      p("This app helps to create shiny widgets use"),
                      p("Results will be dispalyed using shiny app")
                      ),
            tabPanel("Radio Buttons",
                     radioButtons("Cardinals","11/10 - Cardinals vs SF", c("Cardinals Win" = "Win",
                                                                           "Draw" = "Draw",
                                                                           "Cardinals Loss" = "Loss"),inline=TRUE),
                     h3("Cardinals :"), textOutput( "Cardinals"),
                    radioButtons("Seattle","11/10 - Seattle vs Patriots", c("Seattle Win" = "Win",
                                                                                          "Seattle Draw" = "Draw","Seattle loss" = "Loss"),inline=TRUE),
                    h3("Seattle:"), textOutput( "Seattle")
                    ),
            tabPanel("Checkboxgroup",
                     checkboxGroupInput("CheckGroup",
                                        label = h3("Checkbox Group"),
                                        choices = list("Choice 1" = 1, "Choice 2" = 2, "Choice 3" = 3),
                                        selected = 1),
                     h3("Choice :"), textOutput( "CheckGroup")
            ),
            tabPanel("Checkbox",
                      h3("Single Checkbox"),
                     checkboxInput("Checkbox1", label = "Choice A", value = TRUE),
                     textOutput("Checkbox1")
                     ),
            tabPanel("text",
                           textInput("text2", label = h3("Text Input"),
                               value = "Enter you text:"),
                         textOutput("text2")
                     )    
                             
            )
            
      )
)
    
 
 