library(shiny)

ui <- div(
  calcite_button(
    id = "test_button",
    "Click Me!",
    appearance = "solid",
    kind = "brand"
  ),
  tags$br(),
  tags$br(),
  verbatimTextOutput("button_state")
)

server <- function(input, output, session) {
  # Display button state including click count
  output$button_state <- renderPrint({
    input$test_button
  })
}

shinyApp(ui, server)
