# Changelog

## calcite v1.0.0

CRAN release: 2026-03-03

- adds experimental page layouts:
  [`page_navbar()`](https://r.esri.com/calcite/reference/page_navbar.md),
  [`page_sidebar()`](https://r.esri.com/calcite/reference/page_sidebar.md),
  [`page_actionbar()`](https://r.esri.com/calcite/reference/page_actionbar.md)
- manually implements numerous components for improved shiny integration
  and documentation clarity:
  - Layout:
    [`calcite_shell()`](https://r.esri.com/calcite/reference/calcite_shell.md),
    [`calcite_shell_panel()`](https://r.esri.com/calcite/reference/calcite_shell_panel.md)
  - Actions:
    [`calcite_action()`](https://r.esri.com/calcite/reference/calcite_action.md),
    [`calcite_action_bar()`](https://r.esri.com/calcite/reference/calcite_action_bar.md),
    [`calcite_action_group()`](https://r.esri.com/calcite/reference/calcite_action_group.md)
  - Inputs:
    [`calcite_checkbox()`](https://r.esri.com/calcite/reference/calcite_checkbox.md),
    [`calcite_select()`](https://r.esri.com/calcite/reference/calcite_select.md),
    [`calcite_segmented_control()`](https://r.esri.com/calcite/reference/calcite_segmented_control.md),
    [`calcite_segmented_control_item()`](https://r.esri.com/calcite/reference/calcite_segmented_control_item.md),
    [`calcite_input_file()`](https://r.esri.com/calcite/reference/calcite_input_file.md),
    [`calcite_input_text()`](https://r.esri.com/calcite/reference/calcite_input_text.md),
    [`calcite_input_number()`](https://r.esri.com/calcite/reference/calcite_input_number.md),
    [`calcite_input_message()`](https://r.esri.com/calcite/reference/calcite_input_message.md)
  - Display:
    [`calcite_table()`](https://r.esri.com/calcite/reference/calcite_table.md),
    [`calcite_table_header()`](https://r.esri.com/calcite/reference/calcite_table_header.md),
    [`calcite_tile()`](https://r.esri.com/calcite/reference/calcite_tile.md),
    [`calcite_tile_group()`](https://r.esri.com/calcite/reference/calcite_tile_group.md)
  - Feedback:
    [`calcite_scrim()`](https://r.esri.com/calcite/reference/calcite_scrim.md),
    [`calcite_notice()`](https://r.esri.com/calcite/reference/calcite_notice.md),
    [`calcite_alert()`](https://r.esri.com/calcite/reference/calcite_alert.md),
    [`calcite_alert_info()`](https://r.esri.com/calcite/reference/calcite_alert.md),
    [`calcite_alert_danger()`](https://r.esri.com/calcite/reference/calcite_alert.md),
    [`calcite_alert_warning()`](https://r.esri.com/calcite/reference/calcite_alert.md),
    [`calcite_alert_success()`](https://r.esri.com/calcite/reference/calcite_alert.md),
    [`calcite_alert_brand()`](https://r.esri.com/calcite/reference/calcite_alert.md)
  - Structure:
    [`calcite_block()`](https://r.esri.com/calcite/reference/calcite_block.md),
    [`calcite_panel()`](https://r.esri.com/calcite/reference/calcite_panel.md),
    [`calcite_accordion()`](https://r.esri.com/calcite/reference/calcite_accordion.md),
    [`calcite_accordion_item()`](https://r.esri.com/calcite/reference/calcite_accordion_item.md)
  - Controls:
    [`calcite_slider()`](https://r.esri.com/calcite/reference/calcite_slider.md),
    [`calcite_date_picker()`](https://r.esri.com/calcite/reference/calcite_date_picker.md),
    [`calcite_switch()`](https://r.esri.com/calcite/reference/calcite_switch.md),
    [`calcite_link()`](https://r.esri.com/calcite/reference/calcite_link.md),
    [`calcite_label()`](https://r.esri.com/calcite/reference/calcite_label.md)
  - Improved responsiveness of
    [`calcite_button()`](https://r.esri.com/calcite/reference/calcite_button.md)

Examples:

A number of examples have been added to understand how to interact with
each component, including full app examples.

Use
[`list_examples()`](https://r.esri.com/calcite/reference/examples.md) to
see what’s available,
[`open_example()`](https://r.esri.com/calcite/reference/examples.md) to
open in Positron/RStudio, or
[`run_example()`](https://r.esri.com/calcite/reference/examples.md) to
run one directly!

## calcite 0.1.2

- [`calcite_button()`](https://r.esri.com/calcite/reference/calcite_button.md)
  click handler can be tracked via `input$your_button$clicked`

## calcite 0.1.1

CRAN release: 2025-12-03

- Add event handler for clicks in
  [`calcite_button()`](https://r.esri.com/calcite/reference/calcite_button.md).
  See example
  `system.file("examples/button-click-test.R", package = "calcite")`

## calcite 0.1.0

CRAN release: 2025-04-01

- Initial release
