actionbar_app <- page_actionbar(
  title = "Wildlife Areas",

  header_actions = calcite_action(
    slot = "content-end",
    icon = "map-pin",
    scale = "l",
    text = "Choose location"
  ),

  actions = calcite_action_bar(
    calcite_action_group(
      calcite_action(text = "Add", icon = "plus", text_enabled = TRUE),
      calcite_action(
        text = "Layers",
        icon = "layers",
        active = TRUE,
        indicator = TRUE,
        text_enabled = TRUE,
        id = "layers-action"
      )
    ),
    calcite_action_group(
      calcite_action(text = "Undo", icon = "undo", text_enabled = TRUE),
      calcite_action(
        text = "Redo",
        icon = "redo",
        indicator = TRUE,
        text_enabled = TRUE
      ),
      calcite_action(
        text = "Save",
        icon = "save",
        disabled = TRUE,
        text_enabled = TRUE
      )
    ),
    calcite_action_group(
      slot = "bottom-actions",
      calcite_action(text = "Tips", icon = "question", text_enabled = TRUE),
      calcite_action(
        text = "Settings",
        icon = "gear",
        indicator = TRUE,
        text_enabled = TRUE
      )
    )
  ),

  panel_content = calcite_panel(
    heading = "Layers",
    id = "panel-start",

    calcite_block(
      collapsible = TRUE,
      heading = "Layer effects",
      description = "Adjust blur, highlight, and more",
      `icon-start` = "effects",

      calcite_label(
        "Effect type",
        calcite_segmented_control(
          width = "full",
          calcite_segmented_control_item(value = "blur", label = "Blur"),
          calcite_segmented_control_item(value = "highlight", label = "Highlight", checked = TRUE),
          calcite_segmented_control_item(value = "party", label = "Party mode")
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
      `icon-start` = "map-pin",

      calcite_notice(
        open = TRUE,
        div(slot = "message", "The viewers are going to love this")
      )
    )
  ),

  # Main content
  calcite_panel(heading = "Content")
)

if (interactive()) {
  shinyApp(
    ui = actionbar_app,
    server = function(input, output, session) {}
  )
}
