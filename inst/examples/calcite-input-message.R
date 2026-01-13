library(shiny)
devtools::load_all()

ui <- div(
  style = "padding: 20px; max-width: 600px;",

  # Example with dynamic validation message
  calcite_label(
    label = "Username",
    calcite_input_text(
      id = "username",
      placeholder = "Enter username",
      clearable = TRUE
    ),
    calcite_input_message(
      textOutput("username_validation"),
      status = "invalid",
      icon = "exclamation-mark-circle",
      id = "username_msg"
    )
  ),

  tags$br(),
  tags$br(),

  # Example with valid message
  calcite_label(
    label = "Subdomain",
    calcite_input_text(
      id = "subdomain",
      suffix_text = ".city-of-acme.gov",
      placeholder = "Enter your subdomain",
      value = "big-map-fan"
    ),
    calcite_input_message(
      "Excellent news - this domain is available.",
      status = "valid",
      icon = "smile"
    )
  ),

  tags$br(),
  tags$br(),

  # Display input values
  tags$h3("Username Input:"),
  verbatimTextOutput("username_output")
)

server <- function(input, output, session) {
  # Dynamic validation text and update message properties
  observeEvent(input$username$value, {
    username_value <- input$username$value

    # Check if empty (NULL or empty string)
    is_empty <- is.null(username_value) || username_value == ""
    cat(is_empty, "\n")
    if (is_empty) {
      # Update message properties for invalid state
      update_calcite(
        "username_msg",
        status = "invalid",
        icon = "exclamation-mark-circle"
      )
    } else {
      cli::cli_alert_info("setting icon to check-circle")
      # Update message properties for valid state
      update_calcite(
        "username_msg",
        status = "valid",
        icon = "check-circle"
      )
    }
  })

  # Render the message text
  output$username_validation <- renderText({
    username_value <- input$username$value
    is_empty <- is.null(username_value) || username_value == ""

    if (is_empty) {
      "This cannot be empty! :("
    } else {
      "Looking good!"
    }
  })

  output$username_output <- renderPrint({
    input$username
  })
}

shinyApp(ui, server)
