library(shiny)
devtools::load_all()

ui <- calcite_shell(
  calcite_shell_panel(
    slot = "panel-end",
    width = "l",

    calcite_panel(
      heading = "Block example",

      calcite_block(
      id = "effects_block",
      heading = "Layer effects",
      description = "Adjust blur, highlight, and more",
      collapsible = TRUE,
      expanded = TRUE,
      icon_start = "effects",

      calcite_label(
        "Effect type",
        calcite_segmented_control(
          id = "effect_type",
          width = "full",
          calcite_segmented_control_item(value = "blur", label = "Blur"),
          calcite_segmented_control_item(
            value = "highlight",
            label = "Highlight",
            checked = TRUE
          ),
          calcite_segmented_control_item(value = "party", label = "Party mode")
        )
      ),

      calcite_label(
        "Effect intensity",
        calcite_slider(
          id = "intensity",
          value = 50,
          min = 0,
          max = 100,
          step = 5,
          label_handles = TRUE
        )
      )
    ),

    calcite_block(
      id = "symbology_block",
      heading = "Symbology",
      description = "Select type, color, and transparency",
      collapsible = TRUE,
      expanded = FALSE,
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
    verbatimTextOutput("output")
  )
)

server <- function(input, output, session) {
  output$output <- renderPrint({
    list(
      effects_block = list(
        expanded = input$effects_block$expanded,
        heading = input$effects_block$heading
      ),
      symbology_block = list(
        expanded = input$symbology_block$expanded,
        heading = input$symbology_block$heading
      ),
      effect_type = input$effect_type$value,
      intensity = input$intensity$value
    )
  })
}

shinyApp(ui, server)
