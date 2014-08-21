# server.R

library(shiny)
library(datasets)




shinyServer(function(input, output) {
  output$killed <- renderPlot({
    barplot(VADeaths[,input$group],
            main=input$month,
            ylab="Death Rates",
            xlab="Age Group")
  })
})