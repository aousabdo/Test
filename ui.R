library(knitr)

shinyUI(fluidPage(
  titlePanel("IncludeHTML in Shiny"),
  
  sidebarLayout(
    sidebarPanel(
      sliderInput("bins","Slide Input:",min = 1,max = 50,value = 30), 
      br(),
      br(),
      numericInput(inputId = "foo",label = "Some Numeric Input",  min = 1, max=10, value = 2), 
      br(),
      br(),
      numericInput(inputId = "foo2",label = "Another Numeric Input",  min = 1, max=100, value = 20),
      br(),
      br(),
      selectInput("variable", "Some Select Input:",
                  c("Cylinders" = "cyl",
                    "Transmission" = "am",
                    "Gears" = "gear"))
    ),
    mainPanel(
      tabsetPanel(
                tabPanel("tab1",
                         includeHTML("About.html"))
        
      )
    )
  )
))
