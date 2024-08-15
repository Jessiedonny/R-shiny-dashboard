require(shinydashboard)
dashboardPage(
  dashboardHeader(title="Hello Shiny"),
  dashboardSidebar(sliderInput(inputId = "bins",
                               label = "Number of bins:",
                               min = 1,
                               max = 50,
                               value = 30)
                   ),
  dashboardBody(
  # Main panel for displaying outputs ----
  box( width = 12,
      # Output: Histogram ----
      plotOutput(outputId = "distPlot")
    )
 )
)


