# ui.R

library(shiny)
library(datasets)

shinyUI(
  fluidPage(
    titlePanel("Death rates per 1000 in Virginia in 1940"),
  
    sidebarLayout(
      sidebarPanel( 
        selectInput("group","Population Group:",choices=colnames(VADeaths)),
        hr(),
        helpText("Data from McNeil, D. R. (1977) Interactive Data Analysis. Wiley.")
      ),
      mainPanel(
        plotOutput("killed")
      )
    )
  )
)