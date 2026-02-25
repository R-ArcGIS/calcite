library(shiny)
devtools::load_all()

ui <- page_actionbar(
  title = "Wildlife Areas",

  header_actions = calcite_action(
    slot = "content-end",
    icon = "map-pin",
    scale = "l",
    text = "Choose location"
  ),

  actions = calcite_action_bar(
    id = "my_bar",
    calcite_action_group(
      calcite_action(text = "Add", icon = "plus", text_enabled = TRUE),
      calcite_action(
        text = "Layers",
        icon = "layers",
        active = TRUE,
        indicator = TRUE,
        text_enabled = TRUE
      ),
      calcite_action(
        text = "Legend",
        icon = "legend",
        text_enabled = TRUE
      )
    ),
    calcite_action_group(
      calcite_action(id = "undo", text = "Undo", icon = "undo", text_enabled = TRUE),
      calcite_action(id = "redo", text = "Redo", icon = "redo", indicator = TRUE, text_enabled = TRUE),
      calcite_action(id = "save", text = "Save", icon = "save", disabled = TRUE, text_enabled = TRUE)
    ),
    calcite_action_group(
      slot = "bottom-actions",
      calcite_action(id = "tips", text = "Tips", icon = "question", text_enabled = TRUE),
      calcite_action(id = "settings", text = "Settings", icon = "gear", indicator = TRUE, text_enabled = TRUE)
    )
  ),

  panel_content = list(
    calcite_panel(
      id = "layers_panel",
      heading = "Layers",
      calcite_block(
        collapsible = TRUE,
        heading = "Layer effects",
        description = "Adjust blur, highlight, and more",
        icon_start = "effects",
        calcite_label(
          "Effect type",
          calcite_segmented_control(
            width = "full",
            calcite_segmented_control_item(value = "blur", label = "Blur"),
            calcite_segmented_control_item(
              value = "highlight",
              label = "Highlight",
              checked = TRUE
            ),
            calcite_segmented_control_item(
              value = "party",
              label = "Party mode"
            )
          )
        ),
        calcite_label(
          "Effect intensity",
          calcite_slider()
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
    ),
    calcite_panel(
      id = "legend_panel",
      heading = "Legend",
      hidden = TRUE,
      calcite_block(
        collapsible = TRUE,
        expanded = TRUE,
        heading = "Legend items",
        "Legend content goes here"
      )
    )
  ),

  # Main content
  calcite_panel(
    heading = "Content",
    calcite_block(
      heading = "Active Panel",
      collapsible = TRUE,
      expanded = TRUE,
      verbatimTextOutput("bar_state")
    ),
    calcite_block(
      heading = "Undo",
      collapsible = TRUE,
      expanded = TRUE,
      verbatimTextOutput("undo_state")
    ),
    calcite_block(
      heading = "Redo",
      collapsible = TRUE,
      expanded = TRUE,
      verbatimTextOutput("redo_state")
    ),
    calcite_block(
      heading = "Tips",
      collapsible = TRUE,
      expanded = TRUE,
      verbatimTextOutput("tips_state")
    ),
    calcite_block(
      heading = "Settings",
      collapsible = TRUE,
      expanded = TRUE,
      verbatimTextOutput("settings_state")
    )
  )
)

panel_actions <- c("Layers", "Legend")

server <- function(input, output, session) {
  active_panel <- reactiveVal("Layers")

  observeEvent(
    input$my_bar,
    {
      clicked <- input$my_bar
      if (!clicked %in% panel_actions) return()

      active_panel(clicked)
      update_calcite("layers_panel", hidden = clicked != "Layers")
      update_calcite("legend_panel", hidden = clicked != "Legend")
    },
    ignoreInit = TRUE
  )

  output$bar_state <- renderPrint({ active_panel() })
  output$undo_state <- renderPrint({ input$undo })
  output$redo_state <- renderPrint({ input$redo })
  output$tips_state <- renderPrint({ input$tips })
  output$settings_state <- renderPrint({ input$settings })
}

shinyApp(ui, server)
