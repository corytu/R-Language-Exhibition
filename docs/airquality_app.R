library(shiny)
library(ggplot2)

ui <- fluidPage(
  # Application title
  titlePanel("New York Air Quality Measurements, May to September 1973"),
  sidebarLayout(
    sidebarPanel(
      helpText("1. Select one month and one variable which interest you"),
      helpText("2. Click \"Confirm\""),
      helpText("3. The line graph (with a blue trend curve) of the chosen variable versus days of the month will be showed"),
      selectInput(
        "month", "Select the month",
        choices = month.name[5:9]
      ),
      selectInput(
        "obs", "Select one variable",
        choices = names(airquality)[1:4]
      ),
      h5("Ozone:"),
      "Mean ozone in parts per billion from 1300 to 1500 hours at Roosevelt Island",
      h5("Solar.R:"),
      "Solar radiation in Langleys in the frequency band 4000-7700 Angstroms from 0800 to 1200 hours at Central Park",
      h5("Wind:"),
      "Average wind speed in miles per hour at 0700 and 1000 hours at LaGuardia Airport",
      h5("Temp:"),
      "Maximum daily temperature in degrees Fahrenheit at La Guardia Airport",
      tags$i(helpText("Data from R built-in airquality data set")),
      submitButton("Confirm")
    ),
    # Show a plot of the selected condition
    mainPanel(
       plotOutput("airplot")
    )
  )
)

ylab_list <- list(
  Ozone = "Mean Ozone (ppb)",
  Solar.R = "Solar Radiation (Langleys)",
  Wind = "Average Wind Speed (miles/hour)",
  Temp = expression(paste("Maximun Daily Temperature (", degree ~ F, ")", sep = ""))
)

# Define server logic required to draw a line chart
server <- function(input, output) {
  month_selected <- reactive({match(input$month, month.name)})
  output$airplot <- renderPlot({
    ggplot(aes_string(x = "Day", y = input$obs),
                data = subset(airquality, Month == month_selected())) +
      geom_line(size = 1) + geom_smooth() +
      labs(list(x = "Day of Month", y = ylab_list[[input$obs]]))
  })
}

shinyApp(ui = ui, server = server)