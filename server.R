library(shiny)
library(ggplot2)

# Define server logic required to draw a line chart
shinyServer(function(input, output) {
  month_selected <- reactive({which(input$month == month.name)})
  output$airplot <- renderPlot({
    if (input$obs == "Ozone") {
      ggplot(aes(x = Day, y = Ozone),
             data = subset(airquality, Month == input$month)) +
        geom_line(size = 1) + geom_smooth() +
        labs(list(x = "Day of Month", y = "Mean Ozone (parts/billion)"))
    }
    else if (input$obs == "Solar.R") {
      ggplot(aes(x = Day, y = Solar.R),
             data = subset(airquality, Month == input$month)) +
        geom_line(size = 1) + geom_smooth() +
        labs(list(x = "Day of Month", y = "Solar Radiation (Langleys)"))
    }
    else if (input$obs == "Wind") {
      ggplot(aes(x = Day, y = Wind),
             data = subset(airquality, Month == input$month)) +
        geom_line(size = 1) + geom_smooth() +
        labs(list(x = "Day of Month", y = "Average Wind Speed (miles/hour)"))
    }
    else {
      ggplot(aes(x = Day, y = Temp),
             data = subset(airquality, Month == input$month)) +
        geom_line(size = 1) + geom_smooth() +
        labs(list(x = "Day of Month",
                  y = expression(paste("Maximun Daily Temperature (", degree ~ F, ")", sep = ""))))
    }
  })
})
