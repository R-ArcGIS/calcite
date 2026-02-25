library(shiny)
devtools::load_all()

ui <- calcite_shell(
  panel_start = calcite_shell_panel(
    width = "m",
    calcite_panel(
      heading = "Layers",

      calcite_block(
        heading = "Basemap",
        description = "Choose a basemap style",
        collapsible = TRUE,
        expanded = TRUE,
        calcite_notice(
          open = TRUE,
          div(slot = "message", "Imagery with Labels selected")
        )
      ),

      calcite_block(
        heading = "Operational Layers",
        description = "Toggle map layers",
        collapsible = TRUE,
        expanded = FALSE,
        calcite_notice(
          open = TRUE,
          div(slot = "message", "3 layers available")
        )
      )
    )
  ),

  calcite_panel(heading = "Map View")
)

server <- function(input, output, session) {}

shinyApp(ui, server)
