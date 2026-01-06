library(shiny)
library(calcite)

ui <- calcite_shell(
  calcite_shell_panel(
    slot = "panel-start",
    width = "l",
    calcite_panel(
      closable = TRUE,
      id = "map_options_panel",
      heading = "Map Options",
      header_actions_start = calcite_action(
        icon = "question",
        text = "Favorite"
      ),
      header_actions_end = calcite_action(
        icon = "save",
        text = "Save"
      ),
      header_menu_actions = tagList(
        calcite_action(
          icon = "reset",
          text = "Reset",
          text_enabled = TRUE
        ),
        calcite_action(
          icon = "pencil",
          text = "Rename",
          text_enabled = TRUE
        )
      ),
      footer = tagList(
        calcite_button(
          width = "half",
          appearance = "outline",
          "Cancel"
        ),
        calcite_button(
          width = "half",
          "Next"
        )
      ),
      fab = calcite_fab(slot = "fab"),
      # Panel content
      calcite_block(
        collapsible = TRUE,
        heading = "Layer effects",
        description = "Adjust blur, highlight, and more",
        icon_start = "effects",
        calcite_notice(
          open = TRUE,
          div(slot = "message", "Use layer effects sparingly, for emphasis")
        )
      ),
      calcite_block(
        collapsible = TRUE,
        heading = "Symbology",
        description = "Select type, color, and transparency",
        icon_start = "map-pin",
        calcite_notice(
          open = TRUE,
          div(slot = "message", "The viewers are going to love this")
        )
      )
    )
  ),
  calcite_panel(
    heading = "Content",
    verbatimTextOutput("panel_state")
  )
)

server <- function(input, output, session) {
  output$panel_state <- renderPrint({
    input$map_options_panel
  })
}

shinyApp(ui, server)
