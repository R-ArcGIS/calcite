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
  - New alert components: `calcite_alert()`, `calcite_alert_info()`, `calcite_alert_danger()`, `calcite_alert_warning()`, `calcite_alert_success()`, and `calcite_alert_brand()`
  - Accordions: `calcite_accordion()` and `calcite_accordion_item()`
  - Improved responsiveness of `calcite_button()`
  - Improved `calcite_label()` behavior
  - Added `calcite_link()` for creating links
  - Added `calcite_switch()` for boolean values
  - Added input components: 
    - `calcite_input_text()` for text inputs
    - `calcite_input_number()` for numeric inputs
    - `calcite_input_message()` for adding messages to inputs

Examples: 

A number of examples have been added to understand how to interact with each component 

Use `open_example()` to run one yourself! 

- inst/examples/calcite-accordion.R
- inst/examples/calcite-action-button.R
- inst/examples/calcite-alert.R
- inst/examples/calcite-block.R
- inst/examples/calcite-button.R
- inst/examples/calcite-date-picker.R
- inst/examples/calcite-input-message.R
- inst/examples/calcite-input-number.R
- inst/examples/calcite-input-text.R
- inst/examples/calcite-label.R
- inst/examples/calcite-link.R
- inst/examples/calcite-navigation.R
- inst/examples/calcite-notice.R
- inst/examples/calcite-panel.R
- inst/examples/calcite-segmented-control.R
- inst/examples/calcite-slider.R
- inst/examples/calcite-switch.R
- inst/examples/calcite-tile-group.R
- inst/examples/page-actionbar.R

# calcite 0.1.2

- `calcite_button()` click handler can be tracked via `input$your_button$clicked`

# calcite 0.1.1

- Add event handler for clicks in `calcite_button()`. See example `system.file("examples/button-click-test.R", package = "calcite")`

# calcite 0.1.0

- Initial release
