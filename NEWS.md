# calcite v1.0.0

- adds experimental page layouts: `page_navbar()`, `page_sidebar()`, `page_actionbar()`
- manually implements numerous components for improved shiny integration and documentation clarity:
  - Layout: `calcite_shell()`, `calcite_shell_panel()`
  - Actions: `calcite_action()`, `calcite_action_bar()`, `calcite_action_group()`
  - Inputs: `calcite_checkbox()`, `calcite_select()`, `calcite_segmented_control()`, `calcite_segmented_control_item()`, `calcite_input_file()`, `calcite_input_text()`, `calcite_input_number()`, `calcite_input_message()`
  - Display: `calcite_table()`, `calcite_table_header()`, `calcite_tile()`, `calcite_tile_group()`
  - Feedback: `calcite_scrim()`, `calcite_notice()`, `calcite_alert()`, `calcite_alert_info()`, `calcite_alert_danger()`, `calcite_alert_warning()`, `calcite_alert_success()`, `calcite_alert_brand()`
  - Structure: `calcite_block()`, `calcite_panel()`, `calcite_accordion()`, `calcite_accordion_item()`
  - Controls: `calcite_slider()`, `calcite_date_picker()`, `calcite_switch()`, `calcite_link()`, `calcite_label()`
  - Improved responsiveness of `calcite_button()`

Examples:

A number of examples have been added to understand how to interact with each component, including full app examples.

Use `list_examples()` to see what's available, `open_example()` to open in Positron/RStudio, or `run_example()` to run one directly!

# calcite 0.1.2

- `calcite_button()` click handler can be tracked via `input$your_button$clicked`

# calcite 0.1.1

- Add event handler for clicks in `calcite_button()`. See example `system.file("examples/button-click-test.R", package = "calcite")`

# calcite 0.1.0

- Initial release
