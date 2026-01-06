# calcite (development version)

- adds experimental page layous: `page_navbar()`, `page_sidebar()`, `page_actionbar()`
- manually implements numerous components for improved shiny integration and documentation clarity: 
  - `calcite_action()`
  - `calcite_block()`
  - `calcite_date_picker()`
  - `calcite_tile()`
  - `calcite_tile_group()`
  - `calcite_slider()`
  - `calcite_segmented_control_item()`
  - `calcite_notice()`
  - `calcite_panel()`

# calcite 0.1.2

- `calcite_button()` click handler can be tracked via `input$your_button$clicked`

# calcite 0.1.1

- Add event handler for clicks in `calcite_button()`. See example `system.file("examples/button-click-test.R", package = "calcite")`

# calcite 0.1.0

- Initial release
