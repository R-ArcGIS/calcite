# Changelog

## calcite (development version)

- adds experimental page layous:
  [`page_navbar()`](http://r.esri.com/calcite/reference/page_navbar.md),
  [`page_sidebar()`](http://r.esri.com/calcite/reference/page_sidebar.md),
  [`page_actionbar()`](http://r.esri.com/calcite/reference/page_actionbar.md)
- manually implements numerous components for improved shiny integration
  and documentation clarity:
  - [`calcite_action()`](http://r.esri.com/calcite/reference/calcite_action.md)
  - [`calcite_block()`](http://r.esri.com/calcite/reference/calcite_block.md)
  - [`calcite_date_picker()`](http://r.esri.com/calcite/reference/calcite_date_picker.md)
  - [`calcite_tile()`](http://r.esri.com/calcite/reference/calcite_tile.md)
  - [`calcite_tile_group()`](http://r.esri.com/calcite/reference/calcite_tile_group.md)
  - [`calcite_slider()`](http://r.esri.com/calcite/reference/calcite_slider.md)
  - [`calcite_segmented_control_item()`](http://r.esri.com/calcite/reference/calcite_segmented_control_item.md)
  - [`calcite_notice()`](http://r.esri.com/calcite/reference/calcite_notice.md)
  - [`calcite_panel()`](http://r.esri.com/calcite/reference/calcite_panel.md)
  - New alert components:
    [`calcite_alert()`](http://r.esri.com/calcite/reference/calcite_alert.md),
    [`calcite_alert_info()`](http://r.esri.com/calcite/reference/calcite_alert.md),
    [`calcite_alert_danger()`](http://r.esri.com/calcite/reference/calcite_alert.md),
    [`calcite_alert_warning()`](http://r.esri.com/calcite/reference/calcite_alert.md),
    [`calcite_alert_success()`](http://r.esri.com/calcite/reference/calcite_alert.md),
    and
    [`calcite_alert_brand()`](http://r.esri.com/calcite/reference/calcite_alert.md)
  - Accordions:
    [`calcite_accordion()`](http://r.esri.com/calcite/reference/calcite_accordion.md)
    and
    [`calcite_accordion_item()`](http://r.esri.com/calcite/reference/calcite_accordion_item.md)
  - Improved responsiveness of
    [`calcite_button()`](http://r.esri.com/calcite/reference/calcite_button.md)
  - Improved
    [`calcite_label()`](http://r.esri.com/calcite/reference/calcite_label.md)
    behavior
  - Added
    [`calcite_link()`](http://r.esri.com/calcite/reference/calcite_link.md)
    for creating links
  - Added
    [`calcite_switch()`](http://r.esri.com/calcite/reference/calcite_switch.md)
    for boolean values
  - Added input components:
    - [`calcite_input_text()`](http://r.esri.com/calcite/reference/calcite_input_text.md)
      for text inputs
    - [`calcite_input_number()`](http://r.esri.com/calcite/reference/calcite_input_number.md)
      for numeric inputs
    - [`calcite_input_message()`](http://r.esri.com/calcite/reference/calcite_input_message.md)
      for adding messages to inputs

Examples:

A number of examples have been added to understand how to interact with
each component

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

## calcite 0.1.2

- [`calcite_button()`](http://r.esri.com/calcite/reference/calcite_button.md)
  click handler can be tracked via `input$your_button$clicked`

## calcite 0.1.1

CRAN release: 2025-12-03

- Add event handler for clicks in
  [`calcite_button()`](http://r.esri.com/calcite/reference/calcite_button.md).
  See example
  `system.file("examples/button-click-test.R", package = "calcite")`

## calcite 0.1.0

CRAN release: 2025-04-01

- Initial release
