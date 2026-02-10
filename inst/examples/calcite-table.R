library(shiny)
devtools::load_all()

ui <- calcite_shell(
  calcite_shell_panel(
    slot = "panel-end",
    width = "l",

    calcite_panel(
      heading = "Table example",

      calcite_table(
        id = "simple_table",
        data = mtcars[1:10, 1:4],
        caption = "Motor Trend Car Data",
        bordered = TRUE,
        striped = TRUE
      ),

      calcite_table(
        id = "paginated_table",
        data = iris,
        caption = "Iris Dataset",
        page_size = 5,
        numbered = TRUE,
        bordered = TRUE
      ),

      calcite_table(
        id = "custom_header_table",
        data = mtcars[1:5, 1:3],
        caption = "Cars with Custom Headers",
        header = list(
          calcite_table_header(heading = "MPG", description = "Miles per gallon"),
          calcite_table_header(heading = "Cyl", description = "Cylinders"),
          calcite_table_header(heading = "Disp", description = "Displacement")
        ),
        striped = TRUE
      )
    )
  ),

  calcite_panel(
    heading = "Content",
    verbatimTextOutput("simple_output"),
    verbatimTextOutput("paginated_output"),
    verbatimTextOutput("custom_output")
  )
)

server <- function(input, output, session) {
  output$simple_output <- renderPrint({
    input$simple_table
  })

  output$paginated_output <- renderPrint({
    input$paginated_table
  })

  output$custom_output <- renderPrint({
    input$custom_header_table
  })
}

shinyApp(ui, server)
