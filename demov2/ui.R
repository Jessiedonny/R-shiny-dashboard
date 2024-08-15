library(shiny)
library(shinydashboard)
library(htmltools)

dashboardPage(
  dashboardHeader(
    tags$li(class = "dropdown",
            tags$style(".main-header {max-height: 114px}"),
            tags$style(".main-header .logo {height: 114px;}"),
            tags$style(".sidebar-toggle {height:57px; padding-top: 0px !important;}"),
            tags$style(".navbar {min-height:57px !important}")
    ),
    title = HTML('<img src="logo.png">')
  ),
  
  dashboardSidebar(
    tags$style(".left-side, .main-sidebar {padding-top: 114px}"),
    tags$script(HTML("document.getElementsByClassName('sidebar-toggle')[0].style.visibility = 'hidden';")),
    
    sliderInput(inputId = "bins",
                label = "Number of bins:",
                min = 1,
                max = 50,
                value = 30)
  ),
  
  dashboardBody(
    tags$head(
      tags$link(rel = "stylesheet", type = "text/css", href = "stylesheet.css")
    ),
    tags$script(HTML('
      $(document).ready(function() {
        $("header").find("nav").append(\'<div class="title"><h2>Kia ora Shiny me tōna āhua hou</h2></div><div class="title2"><h1>Hello shiny with a new look</h1></div>\');
      });
     ')),
    hr(),
    div(id="heading", h3("Write your title here")),
    hr(),
    box(width = 12,
        plotOutput(outputId = "distPlot"))
  )
)
