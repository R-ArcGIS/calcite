library(shiny)
devtools::load_all()

ui <- calcite_shell(
  calcite_shell_panel(
    slot = "panel-start",
    position = "start",
    width = "l",

    calcite_panel(
      heading = "Date Picker Examples",

      tags$h3("Basic Date Picker"),
      calcite_date_picker(
        id = "basic_date"
      ),

      tags$br(),
      tags$h3("Date Picker with Initial Value"),
      calcite_date_picker(
        id = "preset_date",
        value = "2024-12-25"
      ),

      tags$br(),
      tags$h3("Range Date Picker (Horizontal)"),
      calcite_date_picker(
        id = "date_range",
        range = TRUE,
        layout = "horizontal",
        value = c("2024-01-15", "2024-01-21")
      )
    )
  ),

  calcite_panel(
    heading = "Output",
    verbatimTextOutput("date_output")
  )
)

server <- function(input, output, session) {
  output$date_output <- renderPrint({
    list(
      basic_date = input$basic_date$value,
      preset_date = input$preset_date$value,
      date_range = input$date_range$value
    )
  })

  # Log date changes
  observeEvent(input$basic_date$value, {
    if (length(input$basic_date$value) > 0) {
      message("Basic date selected: ", input$basic_date$value[1])
    }
  })

  observeEvent(input$date_range$value, {
    if (length(input$date_range$value) == 2) {
      message(
        "Range selected: ",
        input$date_range$value[1],
        " to ",
        input$date_range$value[2]
      )
    }
  })
}

shinyApp(ui, server)
