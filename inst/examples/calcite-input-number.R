library(shiny)
devtools::load_all()

ui <- div(
  style = "padding: 20px; max-width: 600px;",

  # Basic number input
  calcite_label(
    label = "Quantity",
    target_id = "quantity"
  ),
  calcite_input_number(
    id = "quantity",
    placeholder = "Enter quantity"
  ),

  tags$br(),
  tags$br(),

  # Integer-only input with constraints
  calcite_label(
    label = "Age (integers only)",
    target_id = "age"
  ),
  calcite_input_number(
    id = "age",
    integer = TRUE,
    min = 0,
    max = 120,
    step = 1,
    required = TRUE
  ),

  tags$br(),
  tags$br(),

  # Price input with prefix and group separator
  calcite_label(
    label = "Price",
    target_id = "price"
  ),
  calcite_input_number(
    id = "price",
    prefix_text = "$",
    group_separator = TRUE,
    step = 0.01,
    min = 0,
    placeholder = "0.00"
  ),

  tags$br(),
  tags$br(),

  # Percentage input
  calcite_label(
    label = "Discount (%)",
    target_id = "percent"
  ),
  calcite_input_number(
    id = "percent",
    suffix_text = "%",
    min = 0,
    max = 100,
    step = 1
  ),

  tags$br(),
  tags$br(),

  # Display input values
  tags$h3("Quantity:"),
  verbatimTextOutput("quantity_output"),

  tags$h3("Age:"),
  verbatimTextOutput("age_output"),

  tags$h3("Price:"),
  verbatimTextOutput("price_output"),

  tags$h3("Percent:"),
  verbatimTextOutput("percent_output")
)

server <- function(input, output, session) {
  output$quantity_output <- renderPrint({
    input$quantity
  })

  output$age_output <- renderPrint({
    input$age
  })

  output$price_output <- renderPrint({
    input$price
  })

  output$percent_output <- renderPrint({
    input$percent
  })
}

shinyApp(ui, server)
