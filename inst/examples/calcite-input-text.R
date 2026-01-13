library(shiny)
devtools::load_all()

ui <- htmltools::tags$form(
  # Basic text input
  calcite_label(
    label = "Username",
    target_id = "username",
    calcite_input_text(
      id = "username",
      placeholder = "Enter username",
      clearable = TRUE
    )
  ),

  # Text input with length constraints
  calcite_label(
    label = "Display Name (3-20 characters)",
    target_id = "display_name",
    calcite_input_text(
      id = "display_name",
      min_length = 3,
      max_length = 20,
      required = TRUE
    )
  ),

  # Pattern validation (ZIP code)
  calcite_label(
    label = "ZIP Code",
    # target_id = "zip",
    calcite_input_text(
      id = "zip",
      pattern = "\\d{5}",
      placeholder = "12345"
    )
  ),

  # Search input with icon
  calcite_label(
    label = "Search",
    target_id = "search",
    calcite_input_text(
      id = "search",
      icon = "search",
      clearable = TRUE,
      placeholder = "Search..."
    )
  ),

  tags$br(),
  tags$br(),

  # Display input values
  tags$h3("Username:"),
  verbatimTextOutput("username_output"),

  tags$h3("Display Name:"),
  verbatimTextOutput("display_name_output"),

  tags$h3("ZIP Code:"),
  verbatimTextOutput("zip_output"),

  tags$h3("Search:"),
  verbatimTextOutput("search_output")
)

server <- function(input, output, session) {
  output$username_output <- renderPrint({
    input$username
  })

  output$display_name_output <- renderPrint({
    input$display_name
  })

  output$zip_output <- renderPrint({
    input$zip
  })

  output$search_output <- renderPrint({
    input$search
  })
}

shinyApp(ui, server)
