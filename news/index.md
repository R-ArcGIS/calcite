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
