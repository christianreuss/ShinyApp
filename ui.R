#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)
library(shinyBS)

# Define UI for application that draws a histogram
shinyUI(fluidPage(

    # Application title
    titlePanel("MEAN"),

    # tooltip for as explenation how app works
    bsTooltip("Fvalue", "type in numeric value", placement = "bottom", trigger = "hover",
              options = NULL),
    bsTooltip("Svalue", "type in numeric value", placement = "bottom", trigger = "hover",
              options = NULL),
    
    
    # Sidebar with a slider input for number of bins
    sidebarLayout(
        sidebarPanel(
            helpText("Mean is a common measure in statistics."),            
            br(),           
            numericInput("Fvalue",label = h4("First value"), value = 1), #
            br(),
            numericInput("Svalue",label = h4("Second value"),value = 11), #
            br(),
  
            actionButton("meanbutton", label = "Calculate!")    
            
            
        ),
        mainPanel
        (
            tabsetPanel
            (
                tabPanel("Find out your personal mean",
                         p(h4("Here is your current mean:")),
                         textOutput("result")

                         
                )
            )
        )
    )
))
