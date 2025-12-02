library(shiny)
library(calcite)

ui <- div(
  calcite_button(
    id = "test_button",
    "Click Me!",
    appearance = "solid",
    kind = "brand"
  ),
  tags$br(),
  tags$br(),
  verbatimTextOutput("click_count"),
  verbatimTextOutput("button_props")
)

server <- function(input, output, session) {
  # Track number of clicks
  clicks <- reactiveVal(0)

  # Observe click events
  observeEvent(input$test_button, {
    clicks(clicks() + 1)
    message("Button clicked! Total clicks: ", clicks())
  })

  # Display click count
  output$click_count <- renderText({
    paste("Button has been clicked", clicks(), "times")
  })

  # Display button properties
  output$button_props <- renderPrint({
    input$test_button
  })
}

shinyApp(ui, server)
