library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  # Application title
  titlePanel("New York Air Quality Measurements, May to September 1973"),
  # Sidebar with a slider input for number of bins 
  sidebarLayout(
    sidebarPanel(
      selectInput(
        "month", "Select the month",
        choices = 5:9
      ),
      selectInput(
        "obs", "Select one variable",
        choices = names(airquality)[1:4]
      ),
      helpText("Data from R built-in airquality data set")
      ),
    # Show a plot of the selected condition
    mainPanel(
       plotOutput("airplot")
    )
  )
))