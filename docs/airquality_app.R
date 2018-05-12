library(shiny)
library(ggplot2)

ui <- fluidPage(
  # Application title
  titlePanel("New York Air Quality Measurements, May to September 1973"),
  sidebarLayout(
    sidebarPanel(
      selectInput(
        "month", "Select the month",
        choices = month.name[5:9]
      ),
      selectInput(
        "obs", "Select one variable",
        choices = names(airquality)[1:4]
      ),
      # actionButton can be a better choice than submitButton
      submitButton("Confirm"),
      helpText("1. Select one month and one variable which interest you"),
      helpText("2. Click \"Confirm\""),
      helpText("3. The line graph (with a blue trend curve) of the chosen variable versus days of the month will be showed"),
      tags$i(helpText("Data from R built-in airquality data set")),
      HTML("<div><b>Ozone:</b><br>
           Mean ozone in parts per billion from 1300 to 1500 hours at Roosevelt Island<br>
           <b>Solar.R:</b><br>
           Solar radiation in Langleys in the frequency band 4000-7700 Angstroms from 0800 to 1200 hours at Central Park<br>
           <b>Wind:</b><br>
           Average wind speed in miles per hour at 0700 and 1000 hours at LaGuardia Airport<br>
           <b>Temp:</b><br>
           Maximum daily temperature in degrees Fahrenheit at La Guardia Airport</div>")
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