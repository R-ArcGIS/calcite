#' Calcite Accordion Item
#'
#' Create a `<calcite-accordion-item>` component.
#'
#'
#'
#' @param ... named attributes passed to `htmltools::tag()`
#' @export
#' @return an object of class `calcite_component` which is a subclass of `shiny.tag`
#'
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/accordion-item/)
calcite_accordion_item <- function(...) {
  res <- htmltools::tag("calcite-accordion-item", rlang::dots_list(..., calcite_dependency(), calcite_bindings()))
  class(res) <- c("calcite_component", class(res))
  res
}


#' Calcite Accordion
#'
#' Create a `<calcite-accordion>` component.
#'
#'
#'
#' @param ... named attributes passed to `htmltools::tag()`
#' @export
#' @return an object of class `calcite_component` which is a subclass of `shiny.tag`
#'
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/accordion/)
calcite_accordion <- function(...) {
  res <- htmltools::tag("calcite-accordion", rlang::dots_list(..., calcite_dependency(), calcite_bindings()))
  class(res) <- c("calcite_component", class(res))
  res
}


#' Calcite Action Bar
#'
#' Create a `<calcite-action-bar>` component.
#'
#'
#'
#' @param ... named attributes passed to `htmltools::tag()`
#' @export
#' @return an object of class `calcite_component` which is a subclass of `shiny.tag`
#'
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/action-bar/)
calcite_action_bar <- function(...) {
  res <- htmltools::tag("calcite-action-bar", rlang::dots_list(..., calcite_dependency(), calcite_bindings()))
  class(res) <- c("calcite_component", class(res))
  res
}


#' Calcite Action Group
#'
#' Create a `<calcite-action-group>` component.
#'
#'
#'
#' @param ... named attributes passed to `htmltools::tag()`
#' @export
#' @return an object of class `calcite_component` which is a subclass of `shiny.tag`
#'
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/action-group/)
calcite_action_group <- function(...) {
  res <- htmltools::tag("calcite-action-group", rlang::dots_list(..., calcite_dependency(), calcite_bindings()))
  class(res) <- c("calcite_component", class(res))
  res
}


#' Calcite Action Menu
#'
#' Create a `<calcite-action-menu>` component.
#'
#'
#'
#' @param ... named attributes passed to `htmltools::tag()`
#' @export
#' @return an object of class `calcite_component` which is a subclass of `shiny.tag`
#'
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/action-menu/)
calcite_action_menu <- function(...) {
  res <- htmltools::tag("calcite-action-menu", rlang::dots_list(..., calcite_dependency(), calcite_bindings()))
  class(res) <- c("calcite_component", class(res))
  res
}


#' Calcite Action Pad
#'
#' Create a `<calcite-action-pad>` component.
#'
#'
#'
#' @param ... named attributes passed to `htmltools::tag()`
#' @export
#' @return an object of class `calcite_component` which is a subclass of `shiny.tag`
#'
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/action-pad/)
calcite_action_pad <- function(...) {
  res <- htmltools::tag("calcite-action-pad", rlang::dots_list(..., calcite_dependency(), calcite_bindings()))
  class(res) <- c("calcite_component", class(res))
  res
}


#' Calcite Action
#'
#' Create a `<calcite-action>` component.
#'
#'
#'
#' @param ... named attributes passed to `htmltools::tag()`
#' @export
#' @return an object of class `calcite_component` which is a subclass of `shiny.tag`
#'
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/action/)
calcite_action <- function(...) {
  res <- htmltools::tag("calcite-action", rlang::dots_list(..., calcite_dependency(), calcite_bindings()))
  class(res) <- c("calcite_component", class(res))
  res
}


#' Calcite Alert
#'
#' Create a `<calcite-alert>` component.
#'
#'
#'
#' @param ... named attributes passed to `htmltools::tag()`
#' @export
#' @return an object of class `calcite_component` which is a subclass of `shiny.tag`
#'
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/alert/)
calcite_alert <- function(...) {
  res <- htmltools::tag("calcite-alert", rlang::dots_list(..., calcite_dependency(), calcite_bindings()))
  class(res) <- c("calcite_component", class(res))
  res
}


#' Calcite Autocomplete Item Group
#'
#' Create a `<calcite-autocomplete-item-group>` component.
#'
#'
#'
#' @param ... named attributes passed to `htmltools::tag()`
#' @export
#' @return an object of class `calcite_component` which is a subclass of `shiny.tag`
#'
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/autocomplete-item-group/)
calcite_autocomplete_item_group <- function(...) {
  res <- htmltools::tag("calcite-autocomplete-item-group", rlang::dots_list(..., calcite_dependency(), calcite_bindings()))
  class(res) <- c("calcite_component", class(res))
  res
}


#' Calcite Autocomplete Item
#'
#' Create a `<calcite-autocomplete-item>` component.
#'
#'
#'
#' @param ... named attributes passed to `htmltools::tag()`
#' @export
#' @return an object of class `calcite_component` which is a subclass of `shiny.tag`
#'
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/autocomplete-item/)
calcite_autocomplete_item <- function(...) {
  res <- htmltools::tag("calcite-autocomplete-item", rlang::dots_list(..., calcite_dependency(), calcite_bindings()))
  class(res) <- c("calcite_component", class(res))
  res
}


#' Calcite Autocomplete
#'
#' Create a `<calcite-autocomplete>` component.
#'
#'
#'
#' @param ... named attributes passed to `htmltools::tag()`
#' @export
#' @return an object of class `calcite_component` which is a subclass of `shiny.tag`
#'
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/autocomplete/)
calcite_autocomplete <- function(...) {
  res <- htmltools::tag("calcite-autocomplete", rlang::dots_list(..., calcite_dependency(), calcite_bindings()))
  class(res) <- c("calcite_component", class(res))
  res
}


#' Calcite Avatar
#'
#' Create a `<calcite-avatar>` component.
#'
#'
#'
#' @param ... named attributes passed to `htmltools::tag()`
#' @export
#' @return an object of class `calcite_component` which is a subclass of `shiny.tag`
#'
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/avatar/)
calcite_avatar <- function(...) {
  res <- htmltools::tag("calcite-avatar", rlang::dots_list(..., calcite_dependency(), calcite_bindings()))
  class(res) <- c("calcite_component", class(res))
  res
}


#' Calcite Block Group
#'
#' Create a `<calcite-block-group>` component.
#'
#'
#'
#' @param ... named attributes passed to `htmltools::tag()`
#' @export
#' @return an object of class `calcite_component` which is a subclass of `shiny.tag`
#'
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/block-group/)
calcite_block_group <- function(...) {
  res <- htmltools::tag("calcite-block-group", rlang::dots_list(..., calcite_dependency(), calcite_bindings()))
  class(res) <- c("calcite_component", class(res))
  res
}


#' Calcite Block Section
#'
#' Create a `<calcite-block-section>` component.
#'
#'
#'
#' @param ... named attributes passed to `htmltools::tag()`
#' @export
#' @return an object of class `calcite_component` which is a subclass of `shiny.tag`
#'
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/block-section/)
calcite_block_section <- function(...) {
  res <- htmltools::tag("calcite-block-section", rlang::dots_list(..., calcite_dependency(), calcite_bindings()))
  class(res) <- c("calcite_component", class(res))
  res
}


#' Calcite Block
#'
#' Create a `<calcite-block>` component.
#'
#'
#'
#' @param ... named attributes passed to `htmltools::tag()`
#' @export
#' @return an object of class `calcite_component` which is a subclass of `shiny.tag`
#'
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/block/)
calcite_block <- function(...) {
  res <- htmltools::tag("calcite-block", rlang::dots_list(..., calcite_dependency(), calcite_bindings()))
  class(res) <- c("calcite_component", class(res))
  res
}


#' Calcite Button
#'
#' Create a `<calcite-button>` component.
#'
#'
#'
#' @param ... named attributes passed to `htmltools::tag()`
#' @export
#' @return an object of class `calcite_component` which is a subclass of `shiny.tag`
#'
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/button/)
calcite_button <- function(...) {
  res <- htmltools::tag("calcite-button", rlang::dots_list(..., calcite_dependency(), calcite_bindings()))
  class(res) <- c("calcite_component", class(res))
  res
}


#' Calcite Card Group
#'
#' Create a `<calcite-card-group>` component.
#'
#'
#'
#' @param ... named attributes passed to `htmltools::tag()`
#' @export
#' @return an object of class `calcite_component` which is a subclass of `shiny.tag`
#'
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/card-group/)
calcite_card_group <- function(...) {
  res <- htmltools::tag("calcite-card-group", rlang::dots_list(..., calcite_dependency(), calcite_bindings()))
  class(res) <- c("calcite_component", class(res))
  res
}


#' Calcite Card
#'
#' Create a `<calcite-card>` component.
#'
#'
#'
#' @param ... named attributes passed to `htmltools::tag()`
#' @export
#' @return an object of class `calcite_component` which is a subclass of `shiny.tag`
#'
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/card/)
calcite_card <- function(...) {
  res <- htmltools::tag("calcite-card", rlang::dots_list(..., calcite_dependency(), calcite_bindings()))
  class(res) <- c("calcite_component", class(res))
  res
}


#' Calcite Carousel Item
#'
#' Create a `<calcite-carousel-item>` component.
#'
#'
#'
#' @param ... named attributes passed to `htmltools::tag()`
#' @export
#' @return an object of class `calcite_component` which is a subclass of `shiny.tag`
#'
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/carousel-item/)
calcite_carousel_item <- function(...) {
  res <- htmltools::tag("calcite-carousel-item", rlang::dots_list(..., calcite_dependency(), calcite_bindings()))
  class(res) <- c("calcite_component", class(res))
  res
}


#' Calcite Carousel
#'
#' Create a `<calcite-carousel>` component.
#'
#'
#'
#' @param ... named attributes passed to `htmltools::tag()`
#' @export
#' @return an object of class `calcite_component` which is a subclass of `shiny.tag`
#'
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/carousel/)
calcite_carousel <- function(...) {
  res <- htmltools::tag("calcite-carousel", rlang::dots_list(..., calcite_dependency(), calcite_bindings()))
  class(res) <- c("calcite_component", class(res))
  res
}


#' Calcite Checkbox
#'
#' Create a `<calcite-checkbox>` component.
#'
#'
#'
#' @param ... named attributes passed to `htmltools::tag()`
#' @export
#' @return an object of class `calcite_component` which is a subclass of `shiny.tag`
#'
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/checkbox/)
calcite_checkbox <- function(...) {
  res <- htmltools::tag("calcite-checkbox", rlang::dots_list(..., calcite_dependency(), calcite_bindings()))
  class(res) <- c("calcite_component", class(res))
  res
}


#' Calcite Chip Group
#'
#' Create a `<calcite-chip-group>` component.
#'
#'
#'
#' @param ... named attributes passed to `htmltools::tag()`
#' @export
#' @return an object of class `calcite_component` which is a subclass of `shiny.tag`
#'
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/chip-group/)
calcite_chip_group <- function(...) {
  res <- htmltools::tag("calcite-chip-group", rlang::dots_list(..., calcite_dependency(), calcite_bindings()))
  class(res) <- c("calcite_component", class(res))
  res
}


#' Calcite Chip
#'
#' Create a `<calcite-chip>` component.
#'
#'
#'
#' @param ... named attributes passed to `htmltools::tag()`
#' @export
#' @return an object of class `calcite_component` which is a subclass of `shiny.tag`
#'
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/chip/)
calcite_chip <- function(...) {
  res <- htmltools::tag("calcite-chip", rlang::dots_list(..., calcite_dependency(), calcite_bindings()))
  class(res) <- c("calcite_component", class(res))
  res
}


#' Calcite Color Picker Hex Input
#'
#' Create a `<calcite-color-picker-hex-input>` component.
#'
#'
#'
#' @param ... named attributes passed to `htmltools::tag()`
#' @export
#' @return an object of class `calcite_component` which is a subclass of `shiny.tag`
#'
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/color-picker-hex-input/)
calcite_color_picker_hex_input <- function(...) {
  res <- htmltools::tag("calcite-color-picker-hex-input", rlang::dots_list(..., calcite_dependency(), calcite_bindings()))
  class(res) <- c("calcite_component", class(res))
  res
}


#' Calcite Color Picker Swatch
#'
#' Create a `<calcite-color-picker-swatch>` component.
#'
#'
#'
#' @param ... named attributes passed to `htmltools::tag()`
#' @export
#' @return an object of class `calcite_component` which is a subclass of `shiny.tag`
#'
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/color-picker-swatch/)
calcite_color_picker_swatch <- function(...) {
  res <- htmltools::tag("calcite-color-picker-swatch", rlang::dots_list(..., calcite_dependency(), calcite_bindings()))
  class(res) <- c("calcite_component", class(res))
  res
}


#' Calcite Color Picker
#'
#' Create a `<calcite-color-picker>` component.
#'
#'
#'
#' @param ... named attributes passed to `htmltools::tag()`
#' @export
#' @return an object of class `calcite_component` which is a subclass of `shiny.tag`
#'
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/color-picker/)
calcite_color_picker <- function(...) {
  res <- htmltools::tag("calcite-color-picker", rlang::dots_list(..., calcite_dependency(), calcite_bindings()))
  class(res) <- c("calcite_component", class(res))
  res
}


#' Calcite Combobox Item Group
#'
#' Create a `<calcite-combobox-item-group>` component.
#'
#'
#'
#' @param ... named attributes passed to `htmltools::tag()`
#' @export
#' @return an object of class `calcite_component` which is a subclass of `shiny.tag`
#'
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/combobox-item-group/)
calcite_combobox_item_group <- function(...) {
  res <- htmltools::tag("calcite-combobox-item-group", rlang::dots_list(..., calcite_dependency(), calcite_bindings()))
  class(res) <- c("calcite_component", class(res))
  res
}


#' Calcite Combobox Item
#'
#' Create a `<calcite-combobox-item>` component.
#'
#'
#'
#' @param ... named attributes passed to `htmltools::tag()`
#' @export
#' @return an object of class `calcite_component` which is a subclass of `shiny.tag`
#'
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/combobox-item/)
calcite_combobox_item <- function(...) {
  res <- htmltools::tag("calcite-combobox-item", rlang::dots_list(..., calcite_dependency(), calcite_bindings()))
  class(res) <- c("calcite_component", class(res))
  res
}


#' Calcite Combobox
#'
#' Create a `<calcite-combobox>` component.
#'
#'
#'
#' @param ... named attributes passed to `htmltools::tag()`
#' @export
#' @return an object of class `calcite_component` which is a subclass of `shiny.tag`
#'
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/combobox/)
calcite_combobox <- function(...) {
  res <- htmltools::tag("calcite-combobox", rlang::dots_list(..., calcite_dependency(), calcite_bindings()))
  class(res) <- c("calcite_component", class(res))
  res
}


#' Calcite Date Picker Day
#'
#' Create a `<calcite-date-picker-day>` component.
#'
#'
#'
#' @param ... named attributes passed to `htmltools::tag()`
#' @export
#' @return an object of class `calcite_component` which is a subclass of `shiny.tag`
#'
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/date-picker-day/)
calcite_date_picker_day <- function(...) {
  res <- htmltools::tag("calcite-date-picker-day", rlang::dots_list(..., calcite_dependency(), calcite_bindings()))
  class(res) <- c("calcite_component", class(res))
  res
}


#' Calcite Date Picker Month Header
#'
#' Create a `<calcite-date-picker-month-header>` component.
#'
#'
#'
#' @param ... named attributes passed to `htmltools::tag()`
#' @export
#' @return an object of class `calcite_component` which is a subclass of `shiny.tag`
#'
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/date-picker-month-header/)
calcite_date_picker_month_header <- function(...) {
  res <- htmltools::tag("calcite-date-picker-month-header", rlang::dots_list(..., calcite_dependency(), calcite_bindings()))
  class(res) <- c("calcite_component", class(res))
  res
}


#' Calcite Date Picker Month
#'
#' Create a `<calcite-date-picker-month>` component.
#'
#'
#'
#' @param ... named attributes passed to `htmltools::tag()`
#' @export
#' @return an object of class `calcite_component` which is a subclass of `shiny.tag`
#'
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/date-picker-month/)
calcite_date_picker_month <- function(...) {
  res <- htmltools::tag("calcite-date-picker-month", rlang::dots_list(..., calcite_dependency(), calcite_bindings()))
  class(res) <- c("calcite_component", class(res))
  res
}


#' Calcite Date Picker
#'
#' Create a `<calcite-date-picker>` component.
#'
#'
#'
#' @param ... named attributes passed to `htmltools::tag()`
#' @export
#' @return an object of class `calcite_component` which is a subclass of `shiny.tag`
#'
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/date-picker/)
calcite_date_picker <- function(...) {
  res <- htmltools::tag("calcite-date-picker", rlang::dots_list(..., calcite_dependency(), calcite_bindings()))
  class(res) <- c("calcite_component", class(res))
  res
}


#' Calcite Dialog
#'
#' Create a `<calcite-dialog>` component.
#'
#'
#'
#' @param ... named attributes passed to `htmltools::tag()`
#' @export
#' @return an object of class `calcite_component` which is a subclass of `shiny.tag`
#'
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/dialog/)
calcite_dialog <- function(...) {
  res <- htmltools::tag("calcite-dialog", rlang::dots_list(..., calcite_dependency(), calcite_bindings()))
  class(res) <- c("calcite_component", class(res))
  res
}


#' Calcite Dropdown Group
#'
#' Create a `<calcite-dropdown-group>` component.
#'
#'
#'
#' @param ... named attributes passed to `htmltools::tag()`
#' @export
#' @return an object of class `calcite_component` which is a subclass of `shiny.tag`
#'
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/dropdown-group/)
calcite_dropdown_group <- function(...) {
  res <- htmltools::tag("calcite-dropdown-group", rlang::dots_list(..., calcite_dependency(), calcite_bindings()))
  class(res) <- c("calcite_component", class(res))
  res
}


#' Calcite Dropdown Item
#'
#' Create a `<calcite-dropdown-item>` component.
#'
#'
#'
#' @param ... named attributes passed to `htmltools::tag()`
#' @export
#' @return an object of class `calcite_component` which is a subclass of `shiny.tag`
#'
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/dropdown-item/)
calcite_dropdown_item <- function(...) {
  res <- htmltools::tag("calcite-dropdown-item", rlang::dots_list(..., calcite_dependency(), calcite_bindings()))
  class(res) <- c("calcite_component", class(res))
  res
}


#' Calcite Dropdown
#'
#' Create a `<calcite-dropdown>` component.
#'
#'
#'
#' @param ... named attributes passed to `htmltools::tag()`
#' @export
#' @return an object of class `calcite_component` which is a subclass of `shiny.tag`
#'
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/dropdown/)
calcite_dropdown <- function(...) {
  res <- htmltools::tag("calcite-dropdown", rlang::dots_list(..., calcite_dependency(), calcite_bindings()))
  class(res) <- c("calcite_component", class(res))
  res
}


#' Calcite Fab
#'
#' Create a `<calcite-fab>` component.
#'
#'
#'
#' @param ... named attributes passed to `htmltools::tag()`
#' @export
#' @return an object of class `calcite_component` which is a subclass of `shiny.tag`
#'
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/fab/)
calcite_fab <- function(...) {
  res <- htmltools::tag("calcite-fab", rlang::dots_list(..., calcite_dependency(), calcite_bindings()))
  class(res) <- c("calcite_component", class(res))
  res
}


#' Calcite Filter
#'
#' Create a `<calcite-filter>` component.
#'
#'
#'
#' @param ... named attributes passed to `htmltools::tag()`
#' @export
#' @return an object of class `calcite_component` which is a subclass of `shiny.tag`
#'
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/filter/)
calcite_filter <- function(...) {
  res <- htmltools::tag("calcite-filter", rlang::dots_list(..., calcite_dependency(), calcite_bindings()))
  class(res) <- c("calcite_component", class(res))
  res
}


#' Calcite Flow Item
#'
#' Create a `<calcite-flow-item>` component.
#'
#'
#'
#' @param ... named attributes passed to `htmltools::tag()`
#' @export
#' @return an object of class `calcite_component` which is a subclass of `shiny.tag`
#'
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/flow-item/)
calcite_flow_item <- function(...) {
  res <- htmltools::tag("calcite-flow-item", rlang::dots_list(..., calcite_dependency(), calcite_bindings()))
  class(res) <- c("calcite_component", class(res))
  res
}


#' Calcite Flow
#'
#' Create a `<calcite-flow>` component.
#'
#'
#'
#' @param ... named attributes passed to `htmltools::tag()`
#' @export
#' @return an object of class `calcite_component` which is a subclass of `shiny.tag`
#'
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/flow/)
calcite_flow <- function(...) {
  res <- htmltools::tag("calcite-flow", rlang::dots_list(..., calcite_dependency(), calcite_bindings()))
  class(res) <- c("calcite_component", class(res))
  res
}


#' Calcite Functional
#'
#' Create a `<calcite-functional>` component.
#'
#'
#'
#' @param ... named attributes passed to `htmltools::tag()`
#' @export
#' @return an object of class `calcite_component` which is a subclass of `shiny.tag`
#'
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/functional/)
calcite_functional <- function(...) {
  res <- htmltools::tag("calcite-functional", rlang::dots_list(..., calcite_dependency(), calcite_bindings()))
  class(res) <- c("calcite_component", class(res))
  res
}


#' Calcite Graph
#'
#' Create a `<calcite-graph>` component.
#'
#'
#'
#' @param ... named attributes passed to `htmltools::tag()`
#' @export
#' @return an object of class `calcite_component` which is a subclass of `shiny.tag`
#'
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/graph/)
calcite_graph <- function(...) {
  res <- htmltools::tag("calcite-graph", rlang::dots_list(..., calcite_dependency(), calcite_bindings()))
  class(res) <- c("calcite_component", class(res))
  res
}


#' Calcite Handle
#'
#' Create a `<calcite-handle>` component.
#'
#'
#'
#' @param ... named attributes passed to `htmltools::tag()`
#' @export
#' @return an object of class `calcite_component` which is a subclass of `shiny.tag`
#'
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/handle/)
calcite_handle <- function(...) {
  res <- htmltools::tag("calcite-handle", rlang::dots_list(..., calcite_dependency(), calcite_bindings()))
  class(res) <- c("calcite_component", class(res))
  res
}


#' Calcite Icon
#'
#' Create a `<calcite-icon>` component.
#'
#'
#'
#' @param ... named attributes passed to `htmltools::tag()`
#' @export
#' @return an object of class `calcite_component` which is a subclass of `shiny.tag`
#'
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/icon/)
calcite_icon <- function(...) {
  res <- htmltools::tag("calcite-icon", rlang::dots_list(..., calcite_dependency(), calcite_bindings()))
  class(res) <- c("calcite_component", class(res))
  res
}


#' Calcite Inline Editable
#'
#' Create a `<calcite-inline-editable>` component.
#'
#'
#'
#' @param ... named attributes passed to `htmltools::tag()`
#' @export
#' @return an object of class `calcite_component` which is a subclass of `shiny.tag`
#'
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/inline-editable/)
calcite_inline_editable <- function(...) {
  res <- htmltools::tag("calcite-inline-editable", rlang::dots_list(..., calcite_dependency(), calcite_bindings()))
  class(res) <- c("calcite_component", class(res))
  res
}


#' Calcite Input Date Picker
#'
#' Create a `<calcite-input-date-picker>` component.
#'
#'
#'
#' @param ... named attributes passed to `htmltools::tag()`
#' @export
#' @return an object of class `calcite_component` which is a subclass of `shiny.tag`
#'
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/input-date-picker/)
calcite_input_date_picker <- function(...) {
  res <- htmltools::tag("calcite-input-date-picker", rlang::dots_list(..., calcite_dependency(), calcite_bindings()))
  class(res) <- c("calcite_component", class(res))
  res
}


#' Calcite Input Message
#'
#' Create a `<calcite-input-message>` component.
#'
#'
#'
#' @param ... named attributes passed to `htmltools::tag()`
#' @export
#' @return an object of class `calcite_component` which is a subclass of `shiny.tag`
#'
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/input-message/)
calcite_input_message <- function(...) {
  res <- htmltools::tag("calcite-input-message", rlang::dots_list(..., calcite_dependency(), calcite_bindings()))
  class(res) <- c("calcite_component", class(res))
  res
}


#' Calcite Input Number
#'
#' Create a `<calcite-input-number>` component.
#'
#'
#'
#' @param ... named attributes passed to `htmltools::tag()`
#' @export
#' @return an object of class `calcite_component` which is a subclass of `shiny.tag`
#'
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/input-number/)
calcite_input_number <- function(...) {
  res <- htmltools::tag("calcite-input-number", rlang::dots_list(..., calcite_dependency(), calcite_bindings()))
  class(res) <- c("calcite_component", class(res))
  res
}


#' Calcite Input Text
#'
#' Create a `<calcite-input-text>` component.
#'
#'
#'
#' @param ... named attributes passed to `htmltools::tag()`
#' @export
#' @return an object of class `calcite_component` which is a subclass of `shiny.tag`
#'
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/input-text/)
calcite_input_text <- function(...) {
  res <- htmltools::tag("calcite-input-text", rlang::dots_list(..., calcite_dependency(), calcite_bindings()))
  class(res) <- c("calcite_component", class(res))
  res
}


#' Calcite Input Time Picker
#'
#' Create a `<calcite-input-time-picker>` component.
#'
#'
#'
#' @param ... named attributes passed to `htmltools::tag()`
#' @export
#' @return an object of class `calcite_component` which is a subclass of `shiny.tag`
#'
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/input-time-picker/)
calcite_input_time_picker <- function(...) {
  res <- htmltools::tag("calcite-input-time-picker", rlang::dots_list(..., calcite_dependency(), calcite_bindings()))
  class(res) <- c("calcite_component", class(res))
  res
}


#' Calcite Input Time Zone
#'
#' Create a `<calcite-input-time-zone>` component.
#'
#'
#'
#' @param ... named attributes passed to `htmltools::tag()`
#' @export
#' @return an object of class `calcite_component` which is a subclass of `shiny.tag`
#'
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/input-time-zone/)
calcite_input_time_zone <- function(...) {
  res <- htmltools::tag("calcite-input-time-zone", rlang::dots_list(..., calcite_dependency(), calcite_bindings()))
  class(res) <- c("calcite_component", class(res))
  res
}


#' Calcite Input
#'
#' Create a `<calcite-input>` component.
#'
#'
#'
#' @param ... named attributes passed to `htmltools::tag()`
#' @export
#' @return an object of class `calcite_component` which is a subclass of `shiny.tag`
#'
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/input/)
calcite_input <- function(...) {
  res <- htmltools::tag("calcite-input", rlang::dots_list(..., calcite_dependency(), calcite_bindings()))
  class(res) <- c("calcite_component", class(res))
  res
}


#' Calcite Label
#'
#' Create a `<calcite-label>` component.
#'
#'
#'
#' @param ... named attributes passed to `htmltools::tag()`
#' @export
#' @return an object of class `calcite_component` which is a subclass of `shiny.tag`
#'
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/label/)
calcite_label <- function(...) {
  res <- htmltools::tag("calcite-label", rlang::dots_list(..., calcite_dependency(), calcite_bindings()))
  class(res) <- c("calcite_component", class(res))
  res
}


#' Calcite Link
#'
#' Create a `<calcite-link>` component.
#'
#'
#'
#' @param ... named attributes passed to `htmltools::tag()`
#' @export
#' @return an object of class `calcite_component` which is a subclass of `shiny.tag`
#'
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/link/)
calcite_link <- function(...) {
  res <- htmltools::tag("calcite-link", rlang::dots_list(..., calcite_dependency(), calcite_bindings()))
  class(res) <- c("calcite_component", class(res))
  res
}


#' Calcite List Item Group
#'
#' Create a `<calcite-list-item-group>` component.
#'
#'
#'
#' @param ... named attributes passed to `htmltools::tag()`
#' @export
#' @return an object of class `calcite_component` which is a subclass of `shiny.tag`
#'
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/list-item-group/)
calcite_list_item_group <- function(...) {
  res <- htmltools::tag("calcite-list-item-group", rlang::dots_list(..., calcite_dependency(), calcite_bindings()))
  class(res) <- c("calcite_component", class(res))
  res
}


#' Calcite List Item
#'
#' Create a `<calcite-list-item>` component.
#'
#'
#'
#' @param ... named attributes passed to `htmltools::tag()`
#' @export
#' @return an object of class `calcite_component` which is a subclass of `shiny.tag`
#'
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/list-item/)
calcite_list_item <- function(...) {
  res <- htmltools::tag("calcite-list-item", rlang::dots_list(..., calcite_dependency(), calcite_bindings()))
  class(res) <- c("calcite_component", class(res))
  res
}


#' Calcite List
#'
#' Create a `<calcite-list>` component.
#'
#'
#'
#' @param ... named attributes passed to `htmltools::tag()`
#' @export
#' @return an object of class `calcite_component` which is a subclass of `shiny.tag`
#'
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/list/)
calcite_list <- function(...) {
  res <- htmltools::tag("calcite-list", rlang::dots_list(..., calcite_dependency(), calcite_bindings()))
  class(res) <- c("calcite_component", class(res))
  res
}


#' Calcite Loader
#'
#' Create a `<calcite-loader>` component.
#'
#'
#'
#' @param ... named attributes passed to `htmltools::tag()`
#' @export
#' @return an object of class `calcite_component` which is a subclass of `shiny.tag`
#'
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/loader/)
calcite_loader <- function(...) {
  res <- htmltools::tag("calcite-loader", rlang::dots_list(..., calcite_dependency(), calcite_bindings()))
  class(res) <- c("calcite_component", class(res))
  res
}


#' Calcite Menu Item
#'
#' Create a `<calcite-menu-item>` component.
#'
#'
#'
#' @param ... named attributes passed to `htmltools::tag()`
#' @export
#' @return an object of class `calcite_component` which is a subclass of `shiny.tag`
#'
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/menu-item/)
calcite_menu_item <- function(...) {
  res <- htmltools::tag("calcite-menu-item", rlang::dots_list(..., calcite_dependency(), calcite_bindings()))
  class(res) <- c("calcite_component", class(res))
  res
}


#' Calcite Menu
#'
#' Create a `<calcite-menu>` component.
#'
#'
#'
#' @param ... named attributes passed to `htmltools::tag()`
#' @export
#' @return an object of class `calcite_component` which is a subclass of `shiny.tag`
#'
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/menu/)
calcite_menu <- function(...) {
  res <- htmltools::tag("calcite-menu", rlang::dots_list(..., calcite_dependency(), calcite_bindings()))
  class(res) <- c("calcite_component", class(res))
  res
}


#' Calcite Meter
#'
#' Create a `<calcite-meter>` component.
#'
#'
#'
#' @param ... named attributes passed to `htmltools::tag()`
#' @export
#' @return an object of class `calcite_component` which is a subclass of `shiny.tag`
#'
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/meter/)
calcite_meter <- function(...) {
  res <- htmltools::tag("calcite-meter", rlang::dots_list(..., calcite_dependency(), calcite_bindings()))
  class(res) <- c("calcite_component", class(res))
  res
}


#' Calcite Modal
#'
#' Create a `<calcite-modal>` component.
#'
#'
#'
#' @param ... named attributes passed to `htmltools::tag()`
#' @export
#' @return an object of class `calcite_component` which is a subclass of `shiny.tag`
#'
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/modal/)
calcite_modal <- function(...) {
  res <- htmltools::tag("calcite-modal", rlang::dots_list(..., calcite_dependency(), calcite_bindings()))
  class(res) <- c("calcite_component", class(res))
  res
}


#' Calcite Navigation Logo
#'
#' Create a `<calcite-navigation-logo>` component.
#'
#'
#'
#' @param ... named attributes passed to `htmltools::tag()`
#' @export
#' @return an object of class `calcite_component` which is a subclass of `shiny.tag`
#'
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/navigation-logo/)
calcite_navigation_logo <- function(...) {
  res <- htmltools::tag("calcite-navigation-logo", rlang::dots_list(..., calcite_dependency(), calcite_bindings()))
  class(res) <- c("calcite_component", class(res))
  res
}


#' Calcite Navigation User
#'
#' Create a `<calcite-navigation-user>` component.
#'
#'
#'
#' @param ... named attributes passed to `htmltools::tag()`
#' @export
#' @return an object of class `calcite_component` which is a subclass of `shiny.tag`
#'
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/navigation-user/)
calcite_navigation_user <- function(...) {
  res <- htmltools::tag("calcite-navigation-user", rlang::dots_list(..., calcite_dependency(), calcite_bindings()))
  class(res) <- c("calcite_component", class(res))
  res
}


#' Calcite Navigation
#'
#' Create a `<calcite-navigation>` component.
#'
#'
#'
#' @param ... named attributes passed to `htmltools::tag()`
#' @export
#' @return an object of class `calcite_component` which is a subclass of `shiny.tag`
#'
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/navigation/)
calcite_navigation <- function(...) {
  res <- htmltools::tag("calcite-navigation", rlang::dots_list(..., calcite_dependency(), calcite_bindings()))
  class(res) <- c("calcite_component", class(res))
  res
}


#' Calcite Notice
#'
#' Create a `<calcite-notice>` component.
#'
#'
#'
#' @param ... named attributes passed to `htmltools::tag()`
#' @export
#' @return an object of class `calcite_component` which is a subclass of `shiny.tag`
#'
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/notice/)
calcite_notice <- function(...) {
  res <- htmltools::tag("calcite-notice", rlang::dots_list(..., calcite_dependency(), calcite_bindings()))
  class(res) <- c("calcite_component", class(res))
  res
}


#' Calcite Option Group
#'
#' Create a `<calcite-option-group>` component.
#'
#'
#'
#' @param ... named attributes passed to `htmltools::tag()`
#' @export
#' @return an object of class `calcite_component` which is a subclass of `shiny.tag`
#'
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/option-group/)
calcite_option_group <- function(...) {
  res <- htmltools::tag("calcite-option-group", rlang::dots_list(..., calcite_dependency(), calcite_bindings()))
  class(res) <- c("calcite_component", class(res))
  res
}


#' Calcite Option
#'
#' Create a `<calcite-option>` component.
#'
#'
#'
#' @param ... named attributes passed to `htmltools::tag()`
#' @export
#' @return an object of class `calcite_component` which is a subclass of `shiny.tag`
#'
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/option/)
calcite_option <- function(...) {
  res <- htmltools::tag("calcite-option", rlang::dots_list(..., calcite_dependency(), calcite_bindings()))
  class(res) <- c("calcite_component", class(res))
  res
}


#' Calcite Pagination
#'
#' Create a `<calcite-pagination>` component.
#'
#'
#'
#' @param ... named attributes passed to `htmltools::tag()`
#' @export
#' @return an object of class `calcite_component` which is a subclass of `shiny.tag`
#'
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/pagination/)
calcite_pagination <- function(...) {
  res <- htmltools::tag("calcite-pagination", rlang::dots_list(..., calcite_dependency(), calcite_bindings()))
  class(res) <- c("calcite_component", class(res))
  res
}


#' Calcite Panel
#'
#' Create a `<calcite-panel>` component.
#'
#'
#'
#' @param ... named attributes passed to `htmltools::tag()`
#' @export
#' @return an object of class `calcite_component` which is a subclass of `shiny.tag`
#'
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/panel/)
calcite_panel <- function(...) {
  res <- htmltools::tag("calcite-panel", rlang::dots_list(..., calcite_dependency(), calcite_bindings()))
  class(res) <- c("calcite_component", class(res))
  res
}


#' Calcite Popover
#'
#' Create a `<calcite-popover>` component.
#'
#'
#'
#' @param ... named attributes passed to `htmltools::tag()`
#' @export
#' @return an object of class `calcite_component` which is a subclass of `shiny.tag`
#'
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/popover/)
calcite_popover <- function(...) {
  res <- htmltools::tag("calcite-popover", rlang::dots_list(..., calcite_dependency(), calcite_bindings()))
  class(res) <- c("calcite_component", class(res))
  res
}


#' Calcite Progress
#'
#' Create a `<calcite-progress>` component.
#'
#'
#'
#' @param ... named attributes passed to `htmltools::tag()`
#' @export
#' @return an object of class `calcite_component` which is a subclass of `shiny.tag`
#'
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/progress/)
calcite_progress <- function(...) {
  res <- htmltools::tag("calcite-progress", rlang::dots_list(..., calcite_dependency(), calcite_bindings()))
  class(res) <- c("calcite_component", class(res))
  res
}


#' Calcite Radio Button Group
#'
#' Create a `<calcite-radio-button-group>` component.
#'
#'
#'
#' @param ... named attributes passed to `htmltools::tag()`
#' @export
#' @return an object of class `calcite_component` which is a subclass of `shiny.tag`
#'
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/radio-button-group/)
calcite_radio_button_group <- function(...) {
  res <- htmltools::tag("calcite-radio-button-group", rlang::dots_list(..., calcite_dependency(), calcite_bindings()))
  class(res) <- c("calcite_component", class(res))
  res
}


#' Calcite Radio Button
#'
#' Create a `<calcite-radio-button>` component.
#'
#'
#'
#' @param ... named attributes passed to `htmltools::tag()`
#' @export
#' @return an object of class `calcite_component` which is a subclass of `shiny.tag`
#'
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/radio-button/)
calcite_radio_button <- function(...) {
  res <- htmltools::tag("calcite-radio-button", rlang::dots_list(..., calcite_dependency(), calcite_bindings()))
  class(res) <- c("calcite_component", class(res))
  res
}


#' Calcite Rating
#'
#' Create a `<calcite-rating>` component.
#'
#'
#'
#' @param ... named attributes passed to `htmltools::tag()`
#' @export
#' @return an object of class `calcite_component` which is a subclass of `shiny.tag`
#'
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/rating/)
calcite_rating <- function(...) {
  res <- htmltools::tag("calcite-rating", rlang::dots_list(..., calcite_dependency(), calcite_bindings()))
  class(res) <- c("calcite_component", class(res))
  res
}


#' Calcite Scrim
#'
#' Create a `<calcite-scrim>` component.
#'
#'
#'
#' @param ... named attributes passed to `htmltools::tag()`
#' @export
#' @return an object of class `calcite_component` which is a subclass of `shiny.tag`
#'
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/scrim/)
calcite_scrim <- function(...) {
  res <- htmltools::tag("calcite-scrim", rlang::dots_list(..., calcite_dependency(), calcite_bindings()))
  class(res) <- c("calcite_component", class(res))
  res
}


#' Calcite Segmented Control Item
#'
#' Create a `<calcite-segmented-control-item>` component.
#'
#'
#'
#' @param ... named attributes passed to `htmltools::tag()`
#' @export
#' @return an object of class `calcite_component` which is a subclass of `shiny.tag`
#'
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/segmented-control-item/)
calcite_segmented_control_item <- function(...) {
  res <- htmltools::tag("calcite-segmented-control-item", rlang::dots_list(..., calcite_dependency(), calcite_bindings()))
  class(res) <- c("calcite_component", class(res))
  res
}


#' Calcite Segmented Control
#'
#' Create a `<calcite-segmented-control>` component.
#'
#'
#'
#' @param ... named attributes passed to `htmltools::tag()`
#' @export
#' @return an object of class `calcite_component` which is a subclass of `shiny.tag`
#'
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/segmented-control/)
calcite_segmented_control <- function(...) {
  res <- htmltools::tag("calcite-segmented-control", rlang::dots_list(..., calcite_dependency(), calcite_bindings()))
  class(res) <- c("calcite_component", class(res))
  res
}


#' Calcite Select
#'
#' Create a `<calcite-select>` component.
#'
#'
#'
#' @param ... named attributes passed to `htmltools::tag()`
#' @export
#' @return an object of class `calcite_component` which is a subclass of `shiny.tag`
#'
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/select/)
calcite_select <- function(...) {
  res <- htmltools::tag("calcite-select", rlang::dots_list(..., calcite_dependency(), calcite_bindings()))
  class(res) <- c("calcite_component", class(res))
  res
}


#' Calcite Sheet
#'
#' Create a `<calcite-sheet>` component.
#'
#'
#'
#' @param ... named attributes passed to `htmltools::tag()`
#' @export
#' @return an object of class `calcite_component` which is a subclass of `shiny.tag`
#'
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/sheet/)
calcite_sheet <- function(...) {
  res <- htmltools::tag("calcite-sheet", rlang::dots_list(..., calcite_dependency(), calcite_bindings()))
  class(res) <- c("calcite_component", class(res))
  res
}


#' Calcite Shell Center Row
#'
#' Create a `<calcite-shell-center-row>` component.
#'
#'
#'
#' @param ... named attributes passed to `htmltools::tag()`
#' @export
#' @return an object of class `calcite_component` which is a subclass of `shiny.tag`
#'
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/shell-center-row/)
calcite_shell_center_row <- function(...) {
  res <- htmltools::tag("calcite-shell-center-row", rlang::dots_list(..., calcite_dependency(), calcite_bindings()))
  class(res) <- c("calcite_component", class(res))
  res
}


#' Calcite Shell Panel
#'
#' Create a `<calcite-shell-panel>` component.
#'
#'
#'
#' @param ... named attributes passed to `htmltools::tag()`
#' @export
#' @return an object of class `calcite_component` which is a subclass of `shiny.tag`
#'
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/shell-panel/)
calcite_shell_panel <- function(...) {
  res <- htmltools::tag("calcite-shell-panel", rlang::dots_list(..., calcite_dependency(), calcite_bindings()))
  class(res) <- c("calcite_component", class(res))
  res
}


#' Calcite Shell
#'
#' Create a `<calcite-shell>` component.
#'
#'
#'
#' @param ... named attributes passed to `htmltools::tag()`
#' @export
#' @return an object of class `calcite_component` which is a subclass of `shiny.tag`
#'
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/shell/)
calcite_shell <- function(...) {
  res <- htmltools::tag("calcite-shell", rlang::dots_list(..., calcite_dependency(), calcite_bindings()))
  class(res) <- c("calcite_component", class(res))
  res
}


#' Calcite Slider
#'
#' Create a `<calcite-slider>` component.
#'
#'
#'
#' @param ... named attributes passed to `htmltools::tag()`
#' @export
#' @return an object of class `calcite_component` which is a subclass of `shiny.tag`
#'
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/slider/)
calcite_slider <- function(...) {
  res <- htmltools::tag("calcite-slider", rlang::dots_list(..., calcite_dependency(), calcite_bindings()))
  class(res) <- c("calcite_component", class(res))
  res
}


#' Calcite Sort Handle
#'
#' Create a `<calcite-sort-handle>` component.
#'
#'
#'
#' @param ... named attributes passed to `htmltools::tag()`
#' @export
#' @return an object of class `calcite_component` which is a subclass of `shiny.tag`
#'
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/sort-handle/)
calcite_sort_handle <- function(...) {
  res <- htmltools::tag("calcite-sort-handle", rlang::dots_list(..., calcite_dependency(), calcite_bindings()))
  class(res) <- c("calcite_component", class(res))
  res
}


#' Calcite Sortable List
#'
#' Create a `<calcite-sortable-list>` component.
#'
#'
#'
#' @param ... named attributes passed to `htmltools::tag()`
#' @export
#' @return an object of class `calcite_component` which is a subclass of `shiny.tag`
#'
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/sortable-list/)
calcite_sortable_list <- function(...) {
  res <- htmltools::tag("calcite-sortable-list", rlang::dots_list(..., calcite_dependency(), calcite_bindings()))
  class(res) <- c("calcite_component", class(res))
  res
}


#' Calcite Split Button
#'
#' Create a `<calcite-split-button>` component.
#'
#'
#'
#' @param ... named attributes passed to `htmltools::tag()`
#' @export
#' @return an object of class `calcite_component` which is a subclass of `shiny.tag`
#'
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/split-button/)
calcite_split_button <- function(...) {
  res <- htmltools::tag("calcite-split-button", rlang::dots_list(..., calcite_dependency(), calcite_bindings()))
  class(res) <- c("calcite_component", class(res))
  res
}


#' Calcite Stack
#'
#' Create a `<calcite-stack>` component.
#'
#'
#'
#' @param ... named attributes passed to `htmltools::tag()`
#' @export
#' @return an object of class `calcite_component` which is a subclass of `shiny.tag`
#'
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/stack/)
calcite_stack <- function(...) {
  res <- htmltools::tag("calcite-stack", rlang::dots_list(..., calcite_dependency(), calcite_bindings()))
  class(res) <- c("calcite_component", class(res))
  res
}


#' Calcite Stepper Item
#'
#' Create a `<calcite-stepper-item>` component.
#'
#'
#'
#' @param ... named attributes passed to `htmltools::tag()`
#' @export
#' @return an object of class `calcite_component` which is a subclass of `shiny.tag`
#'
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/stepper-item/)
calcite_stepper_item <- function(...) {
  res <- htmltools::tag("calcite-stepper-item", rlang::dots_list(..., calcite_dependency(), calcite_bindings()))
  class(res) <- c("calcite_component", class(res))
  res
}


#' Calcite Stepper
#'
#' Create a `<calcite-stepper>` component.
#'
#'
#'
#' @param ... named attributes passed to `htmltools::tag()`
#' @export
#' @return an object of class `calcite_component` which is a subclass of `shiny.tag`
#'
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/stepper/)
calcite_stepper <- function(...) {
  res <- htmltools::tag("calcite-stepper", rlang::dots_list(..., calcite_dependency(), calcite_bindings()))
  class(res) <- c("calcite_component", class(res))
  res
}


#' Calcite Switch
#'
#' Create a `<calcite-switch>` component.
#'
#'
#'
#' @param ... named attributes passed to `htmltools::tag()`
#' @export
#' @return an object of class `calcite_component` which is a subclass of `shiny.tag`
#'
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/switch/)
calcite_switch <- function(...) {
  res <- htmltools::tag("calcite-switch", rlang::dots_list(..., calcite_dependency(), calcite_bindings()))
  class(res) <- c("calcite_component", class(res))
  res
}


#' Calcite Tab Nav
#'
#' Create a `<calcite-tab-nav>` component.
#'
#'
#'
#' @param ... named attributes passed to `htmltools::tag()`
#' @export
#' @return an object of class `calcite_component` which is a subclass of `shiny.tag`
#'
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/tab-nav/)
calcite_tab_nav <- function(...) {
  res <- htmltools::tag("calcite-tab-nav", rlang::dots_list(..., calcite_dependency(), calcite_bindings()))
  class(res) <- c("calcite_component", class(res))
  res
}


#' Calcite Tab Title
#'
#' Create a `<calcite-tab-title>` component.
#'
#'
#'
#' @param ... named attributes passed to `htmltools::tag()`
#' @export
#' @return an object of class `calcite_component` which is a subclass of `shiny.tag`
#'
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/tab-title/)
calcite_tab_title <- function(...) {
  res <- htmltools::tag("calcite-tab-title", rlang::dots_list(..., calcite_dependency(), calcite_bindings()))
  class(res) <- c("calcite_component", class(res))
  res
}


#' Calcite Tab
#'
#' Create a `<calcite-tab>` component.
#'
#'
#'
#' @param ... named attributes passed to `htmltools::tag()`
#' @export
#' @return an object of class `calcite_component` which is a subclass of `shiny.tag`
#'
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/tab/)
calcite_tab <- function(...) {
  res <- htmltools::tag("calcite-tab", rlang::dots_list(..., calcite_dependency(), calcite_bindings()))
  class(res) <- c("calcite_component", class(res))
  res
}


#' Calcite Table Cell
#'
#' Create a `<calcite-table-cell>` component.
#'
#'
#'
#' @param ... named attributes passed to `htmltools::tag()`
#' @export
#' @return an object of class `calcite_component` which is a subclass of `shiny.tag`
#'
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/table-cell/)
calcite_table_cell <- function(...) {
  res <- htmltools::tag("calcite-table-cell", rlang::dots_list(..., calcite_dependency(), calcite_bindings()))
  class(res) <- c("calcite_component", class(res))
  res
}


#' Calcite Table Header
#'
#' Create a `<calcite-table-header>` component.
#'
#'
#'
#' @param ... named attributes passed to `htmltools::tag()`
#' @export
#' @return an object of class `calcite_component` which is a subclass of `shiny.tag`
#'
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/table-header/)
calcite_table_header <- function(...) {
  res <- htmltools::tag("calcite-table-header", rlang::dots_list(..., calcite_dependency(), calcite_bindings()))
  class(res) <- c("calcite_component", class(res))
  res
}


#' Calcite Table Row
#'
#' Create a `<calcite-table-row>` component.
#'
#'
#'
#' @param ... named attributes passed to `htmltools::tag()`
#' @export
#' @return an object of class `calcite_component` which is a subclass of `shiny.tag`
#'
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/table-row/)
calcite_table_row <- function(...) {
  res <- htmltools::tag("calcite-table-row", rlang::dots_list(..., calcite_dependency(), calcite_bindings()))
  class(res) <- c("calcite_component", class(res))
  res
}


#' Calcite Table
#'
#' Create a `<calcite-table>` component.
#'
#'
#'
#' @param ... named attributes passed to `htmltools::tag()`
#' @export
#' @return an object of class `calcite_component` which is a subclass of `shiny.tag`
#'
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/table/)
calcite_table <- function(...) {
  res <- htmltools::tag("calcite-table", rlang::dots_list(..., calcite_dependency(), calcite_bindings()))
  class(res) <- c("calcite_component", class(res))
  res
}


#' Calcite Tabs
#'
#' Create a `<calcite-tabs>` component.
#'
#'
#'
#' @param ... named attributes passed to `htmltools::tag()`
#' @export
#' @return an object of class `calcite_component` which is a subclass of `shiny.tag`
#'
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/tabs/)
calcite_tabs <- function(...) {
  res <- htmltools::tag("calcite-tabs", rlang::dots_list(..., calcite_dependency(), calcite_bindings()))
  class(res) <- c("calcite_component", class(res))
  res
}


#' Calcite Text Area
#'
#' Create a `<calcite-text-area>` component.
#'
#'
#'
#' @param ... named attributes passed to `htmltools::tag()`
#' @export
#' @return an object of class `calcite_component` which is a subclass of `shiny.tag`
#'
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/text-area/)
calcite_text_area <- function(...) {
  res <- htmltools::tag("calcite-text-area", rlang::dots_list(..., calcite_dependency(), calcite_bindings()))
  class(res) <- c("calcite_component", class(res))
  res
}


#' Calcite Tile Group
#'
#' Create a `<calcite-tile-group>` component.
#'
#'
#'
#' @param ... named attributes passed to `htmltools::tag()`
#' @export
#' @return an object of class `calcite_component` which is a subclass of `shiny.tag`
#'
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/tile-group/)
calcite_tile_group <- function(...) {
  res <- htmltools::tag("calcite-tile-group", rlang::dots_list(..., calcite_dependency(), calcite_bindings()))
  class(res) <- c("calcite_component", class(res))
  res
}


#' Calcite Tile Select Group
#'
#' Create a `<calcite-tile-select-group>` component.
#'
#'
#'
#' @param ... named attributes passed to `htmltools::tag()`
#' @export
#' @return an object of class `calcite_component` which is a subclass of `shiny.tag`
#'
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/tile-select-group/)
calcite_tile_select_group <- function(...) {
  res <- htmltools::tag("calcite-tile-select-group", rlang::dots_list(..., calcite_dependency(), calcite_bindings()))
  class(res) <- c("calcite_component", class(res))
  res
}


#' Calcite Tile Select
#'
#' Create a `<calcite-tile-select>` component.
#'
#'
#'
#' @param ... named attributes passed to `htmltools::tag()`
#' @export
#' @return an object of class `calcite_component` which is a subclass of `shiny.tag`
#'
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/tile-select/)
calcite_tile_select <- function(...) {
  res <- htmltools::tag("calcite-tile-select", rlang::dots_list(..., calcite_dependency(), calcite_bindings()))
  class(res) <- c("calcite_component", class(res))
  res
}


#' Calcite Tile
#'
#' Create a `<calcite-tile>` component.
#'
#'
#'
#' @param ... named attributes passed to `htmltools::tag()`
#' @export
#' @return an object of class `calcite_component` which is a subclass of `shiny.tag`
#'
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/tile/)
calcite_tile <- function(...) {
  res <- htmltools::tag("calcite-tile", rlang::dots_list(..., calcite_dependency(), calcite_bindings()))
  class(res) <- c("calcite_component", class(res))
  res
}


#' Calcite Time Picker
#'
#' Create a `<calcite-time-picker>` component.
#'
#'
#'
#' @param ... named attributes passed to `htmltools::tag()`
#' @export
#' @return an object of class `calcite_component` which is a subclass of `shiny.tag`
#'
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/time-picker/)
calcite_time_picker <- function(...) {
  res <- htmltools::tag("calcite-time-picker", rlang::dots_list(..., calcite_dependency(), calcite_bindings()))
  class(res) <- c("calcite_component", class(res))
  res
}


#' Calcite Tip Group
#'
#' Create a `<calcite-tip-group>` component.
#'
#'
#'
#' @param ... named attributes passed to `htmltools::tag()`
#' @export
#' @return an object of class `calcite_component` which is a subclass of `shiny.tag`
#'
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/tip-group/)
calcite_tip_group <- function(...) {
  res <- htmltools::tag("calcite-tip-group", rlang::dots_list(..., calcite_dependency(), calcite_bindings()))
  class(res) <- c("calcite_component", class(res))
  res
}


#' Calcite Tip Manager
#'
#' Create a `<calcite-tip-manager>` component.
#'
#'
#'
#' @param ... named attributes passed to `htmltools::tag()`
#' @export
#' @return an object of class `calcite_component` which is a subclass of `shiny.tag`
#'
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/tip-manager/)
calcite_tip_manager <- function(...) {
  res <- htmltools::tag("calcite-tip-manager", rlang::dots_list(..., calcite_dependency(), calcite_bindings()))
  class(res) <- c("calcite_component", class(res))
  res
}


#' Calcite Tip
#'
#' Create a `<calcite-tip>` component.
#'
#'
#'
#' @param ... named attributes passed to `htmltools::tag()`
#' @export
#' @return an object of class `calcite_component` which is a subclass of `shiny.tag`
#'
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/tip/)
calcite_tip <- function(...) {
  res <- htmltools::tag("calcite-tip", rlang::dots_list(..., calcite_dependency(), calcite_bindings()))
  class(res) <- c("calcite_component", class(res))
  res
}


#' Calcite Tooltip
#'
#' Create a `<calcite-tooltip>` component.
#'
#'
#'
#' @param ... named attributes passed to `htmltools::tag()`
#' @export
#' @return an object of class `calcite_component` which is a subclass of `shiny.tag`
#'
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/tooltip/)
calcite_tooltip <- function(...) {
  res <- htmltools::tag("calcite-tooltip", rlang::dots_list(..., calcite_dependency(), calcite_bindings()))
  class(res) <- c("calcite_component", class(res))
  res
}


#' Calcite Tree Item
#'
#' Create a `<calcite-tree-item>` component.
#'
#'
#'
#' @param ... named attributes passed to `htmltools::tag()`
#' @export
#' @return an object of class `calcite_component` which is a subclass of `shiny.tag`
#'
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/tree-item/)
calcite_tree_item <- function(...) {
  res <- htmltools::tag("calcite-tree-item", rlang::dots_list(..., calcite_dependency(), calcite_bindings()))
  class(res) <- c("calcite_component", class(res))
  res
}


#' Calcite Tree
#'
#' Create a `<calcite-tree>` component.
#'
#'
#'
#' @param ... named attributes passed to `htmltools::tag()`
#' @export
#' @return an object of class `calcite_component` which is a subclass of `shiny.tag`
#'
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/tree/)
calcite_tree <- function(...) {
  res <- htmltools::tag("calcite-tree", rlang::dots_list(..., calcite_dependency(), calcite_bindings()))
  class(res) <- c("calcite_component", class(res))
  res
}


