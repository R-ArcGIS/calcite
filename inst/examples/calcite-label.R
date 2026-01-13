library(shiny)

ui <- div(
  style = "padding: 20px;",

  # Basic label with input
  calcite_label(
    label = "Username",
    target_id = "username"
  ),
  calcite_input(
    id = "username",
    placeholder = "Enter username"
  ),

  tags$br(),
  tags$br(),

  # Label with center alignment
  calcite_label(
    label = "Email Address",
    target_id = "email",
    alignment = "center"
  ),
  calcite_input(
    id = "email",
    type = "email",
    placeholder = "you@example.com"
  ),

  tags$br(),
  tags$br(),

  # Large scale label
  calcite_label(
    label = "Password",
    target_id = "password",
    scale = "l"
  ),
  calcite_input(
    id = "password",
    type = "password",
    scale = "l"
  )
)

server <- function(input, output, session) {
  # No server logic needed for this example
}

shinyApp(ui, server)
