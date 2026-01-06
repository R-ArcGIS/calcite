library(shiny)
library(shinyjs)
devtools::load_all()

ui <- calcite_shell(
  shinyjs::useShinyjs(),
  calcite_action(
    id = "test_action",
    text = "Click me",
    icon = "check",
    text_enabled = TRUE
  ),
  verbatimTextOutput("output")
)

server <- function(input, output, session) {
  observeEvent(input$test_action, {
    shinyjs::logjs("hi")
  })

  output$output <- renderPrint({
    input$test_action
  })
}

shinyApp(ui, server)
