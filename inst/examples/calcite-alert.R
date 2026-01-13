library(shiny)
devtools::load_all()

ui <- calcite_shell(
  calcite_alert_success(
    id = "success_alert",
    label = "Successful action occurred",
    icon = "smile",
    open = TRUE,
    title = "Everything worked out!",
    message = "Take a moment to reflect on your day"
  ),

  calcite_alert_info(
    id = "info_alert",
    label = "Something interesting alert",
    open = FALSE,
    title = "Something interesting just happened",
    message = "We thought you might want to take a look"
  ),

  calcite_alert_danger(
    id = "danger_alert",
    label = "Error alert",
    icon = TRUE,
    open = FALSE,
    auto_close = TRUE,
    auto_close_duration = "medium",
    title = "An error occurred",
    message = "Please try again"
  ),

  h3("Success Alert State"),
  verbatimTextOutput("success_output"),

  h3("Info Alert State"),
  verbatimTextOutput("info_output"),

  h3("Danger Alert State"),
  verbatimTextOutput("danger_output")
)

server <- function(input, output, session) {
  output$success_output <- renderPrint({
    input$success_alert
  })

  output$info_output <- renderPrint({
    input$info_alert
  })

  output$danger_output <- renderPrint({
    input$danger_alert
  })
}

shinyApp(ui, server)
