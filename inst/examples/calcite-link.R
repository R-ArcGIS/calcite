library(shiny)

ui <- div(
  style = "padding: 20px;",

  # Basic link
  calcite_link(
    text = "View Calcite Design System",
    href = "https://developers.arcgis.com/calcite-design-system/"
  ),

  tags$br(), tags$br(),

  # Link with icon at end (external link)
  calcite_link(
    text = "Open in new tab",
    href = "https://example.com",
    icon_end = "launch",
    target = "_blank",
    rel = "noopener noreferrer"
  ),

  tags$br(), tags$br(),

  # Link with icon at start
  calcite_link(
    text = "Download file",
    href = "#",
    icon_start = "download",
    download = TRUE
  ),

  tags$br(), tags$br(),

  # Disabled link
  calcite_link(
    text = "Coming soon",
    href = "#",
    disabled = TRUE
  ),

  tags$br(), tags$br(),

  # Link in a sentence (inline usage)
  tags$p(
    "For more information, visit our ",
    calcite_link(
      text = "documentation",
      href = "https://developers.arcgis.com/calcite-design-system/components/"
    ),
    " or ",
    calcite_link(
      text = "contact support",
      href = "#support",
      icon_end = "email-address"
    ),
    "."
  )
)

server <- function(input, output, session) {
  # No server logic needed for this example
}

shinyApp(ui, server)
