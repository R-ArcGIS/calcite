#' Calcite Accordion Item
#'
#' Create a `<calcite-accordion-item>` component.
#'
#'
#' @section Component Details:
#'
#' The below tables illustrate the properties, attributes, and optionally the
#' slots, events, and methods associated with this component.
#'
#' Each attribute can be set by passing it in via `...` as a named value e.g. `"icon-start" = "snow"`.
#'
#' Each event is subscribed to by shiny. The component properties are updated
#' on each of the events.
#'
#' ## Properties
#' |Property    |Attribute     |Description                                                                                           |Type                               |Default   |
#' |:-----------|:-------------|:-----------------------------------------------------------------------------------------------------|:----------------------------------|:---------|
#' |description |description   |Specifies a description for the component.                                                            |string                             |undefined |
#' |expanded    |expanded      |When true, the component is expanded.                                                                 |boolean                            |false     |
#' |heading     |heading       |Specifies heading text for the component.                                                             |string                             |undefined |
#' |iconEnd     |icon-end      |Specifies an icon to display at the end of the component.                                             |string                             |undefined |
#' |iconFlipRtl |icon-flip-rtl |Displays the iconStart and/or iconEnd as flipped when the element direction is right-to-left ("rtl"). |"both" &#124; "end" &#124; "start" |undefined |
#' |iconStart   |icon-start    |Specifies an icon to display at the start of the component.                                           |string                             |undefined |
#' 
#' ## Slots
#' |Slot            |Description                                                                               |
#' |:---------------|:-----------------------------------------------------------------------------------------|
#' |                |A slot for adding custom content, including nested calcite-accordion-items.               |
#' |"actions-end"   |A slot for adding calcite-actions or content to the end side of the component’s header.   |
#' |"actions-start" |A slot for adding calcite-actions or content to the start side of the component’s header. |
#' 
#'
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
#' @section Component Details:
#'
#' The below tables illustrate the properties, attributes, and optionally the
#' slots, events, and methods associated with this component.
#'
#' Each attribute can be set by passing it in via `...` as a named value e.g. `"icon-start" = "snow"`.
#'
#' Each event is subscribed to by shiny. The component properties are updated
#' on each of the events.
#'
#' ## Properties
#' |Property      |Attribute      |Description                                                                                                                                                                                                |Type                                               |Default    |
#' |:-------------|:--------------|:----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|:--------------------------------------------------|:----------|
#' |appearance    |appearance     |Specifies the appearance of the component.                                                                                                                                                                 |"solid" &#124; "transparent"                       |"solid"    |
#' |iconPosition  |icon-position  |Specifies the placement of the icon in the header.                                                                                                                                                         |"end" &#124; "start"                               |"end"      |
#' |iconType      |icon-type      |Specifies the type of the icon in the header.                                                                                                                                                              |"caret" &#124; "chevron" &#124; "plus-minus"       |"chevron"  |
#' |scale         |scale          |Specifies the size of the component.                                                                                                                                                                       |"l" &#124; "m" &#124; "s"                          |"m"        |
#' |selectionMode |selection-mode |Specifies the selection mode of the component, where: "multiple" allows any number of selections, "single" allows only one selection, and "single-persist" allows one selection and prevents de-selection. |"multiple" &#124; "single" &#124; "single-persist" |"multiple" |
#' 
#' ## Slots
#' |Slot |Description                                                                                                         |
#' |:----|:-------------------------------------------------------------------------------------------------------------------|
#' |NA   |A slot for adding calcite-accordion-items. calcite-accordion cannot be nested, however calcite-accordion-items can. |
#' 
#'
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
#' @section Component Details:
#'
#' The below tables illustrate the properties, attributes, and optionally the
#' slots, events, and methods associated with this component.
#'
#' Each attribute can be set by passing it in via `...` as a named value e.g. `"icon-start" = "snow"`.
#'
#' Each event is subscribed to by shiny. The component properties are updated
#' on each of the events.
#'
#' ## Properties
#' |Property                |Attribute                 |Description                                                                                                                                                                                                                                                                                                                                                         |Type                           |Default    |
#' |:-----------------------|:-------------------------|:-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|:------------------------------|:----------|
#' |actionsEndGroupLabel    |actions-end-group-label   |Specifies the accessible label for the last calcite-action-group.                                                                                                                                                                                                                                                                                                   |string                         |undefined  |
#' |expandDisabled          |expand-disabled           |When true, the expand-toggling behavior is disabled.                                                                                                                                                                                                                                                                                                                |boolean                        |false      |
#' |expanded                |expanded                  |When true, the component is expanded.                                                                                                                                                                                                                                                                                                                               |boolean                        |false      |
#' |layout                  |layout                    |Specifies the layout direction of the actions.                                                                                                                                                                                                                                                                                                                      |"horizontal" &#124; "vertical" |"vertical" |
#' |messageOverrides        |message-overrides         |Use this property to override individual strings used by the component.                                                                                                                                                                                                                                                                                             |ActionBarMessages              |undefined  |
#' |overflowActionsDisabled |overflow-actions-disabled |Disables automatically overflowing calcite-actions that won’t fit into menus.                                                                                                                                                                                                                                                                                       |boolean                        |false      |
#' |overlayPositioning      |overlay-positioning       |Determines the type of positioning to use for the overlaid content. Using "absolute" will work for most cases. The component will be positioned inside of overflowing parent containers and will affect the container’s layout. "fixed" should be used to escape an overflowing parent container, or when the reference element’s position CSS property is "fixed". |"absolute" &#124; "fixed"      |"absolute" |
#' |position                |position                  |Arranges the component depending on the element’s dir property.                                                                                                                                                                                                                                                                                                     |"end" &#124; "start"           |undefined  |
#' |scale                   |scale                     |Specifies the size of the expand calcite-action.                                                                                                                                                                                                                                                                                                                    |"l" &#124; "m" &#124; "s"      |undefined  |
#' 
#' ## Events
#' |Event                  |Description                                  |Type              |
#' |:----------------------|:--------------------------------------------|:-----------------|
#' |calciteActionBarToggle |Fires when the expanded property is toggled. |CustomEvent<void> |
#' 
#' ## Slots
#' |Slot             |Description                                                                                                                                                           |
#' |:----------------|:---------------------------------------------------------------------------------------------------------------------------------------------------------------------|
#' |                 |A slot for adding calcite-actions that will appear at the top of the component.                                                                                       |
#' |"actions-end"    |A slot for adding calcite-actions that will appear at the end of the component, prior to the collapse/expand button.                                                  |
#' |"bottom-actions" |[Deprecated] Use the "actions-end" slot instead. A slot for adding calcite-actions that will appear at the bottom of the component, above the collapse/expand button. |
#' |"expand-tooltip" |A slot to set the calcite-tooltip for the expand toggle.                                                                                                              |
#' 
#'
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
#' @section Component Details:
#'
#' The below tables illustrate the properties, attributes, and optionally the
#' slots, events, and methods associated with this component.
#'
#' Each attribute can be set by passing it in via `...` as a named value e.g. `"icon-start" = "snow"`.
#'
#' Each event is subscribed to by shiny. The component properties are updated
#' on each of the events.
#'
#' ## Properties
#' |Property           |Attribute           |Description                                                                                                                                                                                                                                                                                                                                                         |Type                                                                                                                                                                                                                                                                                                                                                                                            |Default    |
#' |:------------------|:-------------------|:-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|:-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|:----------|
#' |columns            |columns             |Indicates number of columns.                                                                                                                                                                                                                                                                                                                                        |1 &#124; 2 &#124; 3 &#124; 4 &#124; 5 &#124; 6                                                                                                                                                                                                                                                                                                                                                  |undefined  |
#' |expanded           |expanded            |When true, the component is expanded.                                                                                                                                                                                                                                                                                                                               |boolean                                                                                                                                                                                                                                                                                                                                                                                         |false      |
#' |label              |label               |Accessible name for the component.                                                                                                                                                                                                                                                                                                                                  |string                                                                                                                                                                                                                                                                                                                                                                                          |undefined  |
#' |layout             |layout              |[DEPRECATED] Use the layout property on the component’s parent instead.Indicates the layout of the component.                                                                                                                                                                                                                                                       |"grid" &#124; "horizontal" &#124; "vertical"                                                                                                                                                                                                                                                                                                                                                    |"vertical" |
#' |menuFlipPlacements |–                   |Specifies the component’s fallback menu placement when it’s initial or specified placement has insufficient space available.                                                                                                                                                                                                                                        |FlipPlacement[]                                                                                                                                                                                                                                                                                                                                                                                 |undefined  |
#' |menuOpen           |menu-open           |When true, the calcite-action-menu is open.                                                                                                                                                                                                                                                                                                                         |boolean                                                                                                                                                                                                                                                                                                                                                                                         |false      |
#' |menuPlacement      |menu-placement      |Determines where the action menu will be positioned.                                                                                                                                                                                                                                                                                                                |"auto" &#124; "top" &#124; "bottom" &#124; "right" &#124; "left" &#124; "top-start" &#124; "top-end" &#124; "bottom-start" &#124; "bottom-end" &#124; "right-start" &#124; "right-end" &#124; "left-start" &#124; "left-end" &#124; "leading" &#124; "trailing" &#124; "auto-start" &#124; "auto-end" &#124; "leading-start" &#124; "leading-end" &#124; "trailing-end" &#124; "trailing-start" |undefined  |
#' |messageOverrides   |message-overrides   |Use this property to override individual strings used by the component.                                                                                                                                                                                                                                                                                             |ActionGroupMessages                                                                                                                                                                                                                                                                                                                                                                             |undefined  |
#' |overlayPositioning |overlay-positioning |Determines the type of positioning to use for the overlaid content. Using "absolute" will work for most cases. The component will be positioned inside of overflowing parent containers and will affect the container’s layout. "fixed" should be used to escape an overflowing parent container, or when the reference element’s position CSS property is "fixed". |"absolute" &#124; "fixed"                                                                                                                                                                                                                                                                                                                                                                       |"absolute" |
#' |scale              |scale               |Specifies the size of the calcite-action-menu.                                                                                                                                                                                                                                                                                                                      |"l" &#124; "m" &#124; "s"                                                                                                                                                                                                                                                                                                                                                                       |undefined  |
#' 
#' ## Slots
#' |Slot           |Description                                                                        |
#' |:--------------|:----------------------------------------------------------------------------------|
#' |               |A slot for adding a group of calcite-actions.                                      |
#' |"menu-actions" |A slot for adding an overflow menu with calcite-actions inside a calcite-dropdown. |
#' |"menu-tooltip" |A slot for adding a calcite-tooltip for the menu.                                  |
#' 
#'
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
#' @section Component Details:
#'
#' The below tables illustrate the properties, attributes, and optionally the
#' slots, events, and methods associated with this component.
#'
#' Each attribute can be set by passing it in via `...` as a named value e.g. `"icon-start" = "snow"`.
#'
#' Each event is subscribed to by shiny. The component properties are updated
#' on each of the events.
#'
#' ## Properties
#' |Property           |Attribute           |Description                                                                                                                                                                                                                                                                                                                                                         |Type                                                                                                                                                                                                                                                                                                                                                                                            |Default    |
#' |:------------------|:-------------------|:-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|:-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|:----------|
#' |appearance         |appearance          |Specifies the appearance of the component.                                                                                                                                                                                                                                                                                                                          |"solid" &#124; "transparent"                                                                                                                                                                                                                                                                                                                                                                    |"solid"    |
#' |expanded           |expanded            |When true, the component is expanded.                                                                                                                                                                                                                                                                                                                               |boolean                                                                                                                                                                                                                                                                                                                                                                                         |false      |
#' |flipPlacements     |–                   |Specifies the component’s fallback slotted content placement when it’s initial or specified placement has insufficient space available.                                                                                                                                                                                                                             |FlipPlacement[]                                                                                                                                                                                                                                                                                                                                                                                 |undefined  |
#' |label (required)   |label               |Specifies the text string for the component.                                                                                                                                                                                                                                                                                                                        |string                                                                                                                                                                                                                                                                                                                                                                                          |undefined  |
#' |open               |open                |When true, the component is open.                                                                                                                                                                                                                                                                                                                                   |boolean                                                                                                                                                                                                                                                                                                                                                                                         |false      |
#' |overlayPositioning |overlay-positioning |Determines the type of positioning to use for the overlaid content. Using "absolute" will work for most cases. The component will be positioned inside of overflowing parent containers and will affect the container’s layout. "fixed" should be used to escape an overflowing parent container, or when the reference element’s position CSS property is "fixed". |"absolute" &#124; "fixed"                                                                                                                                                                                                                                                                                                                                                                       |"absolute" |
#' |placement          |placement           |Determines where the component will be positioned relative to the referenceElement.                                                                                                                                                                                                                                                                                 |"auto" &#124; "top" &#124; "bottom" &#124; "right" &#124; "left" &#124; "top-start" &#124; "top-end" &#124; "bottom-start" &#124; "bottom-end" &#124; "right-start" &#124; "right-end" &#124; "left-start" &#124; "left-end" &#124; "leading" &#124; "trailing" &#124; "auto-start" &#124; "auto-end" &#124; "leading-start" &#124; "leading-end" &#124; "trailing-end" &#124; "trailing-start" |"auto"     |
#' |scale              |scale               |Specifies the size of the component’s trigger calcite-action.                                                                                                                                                                                                                                                                                                       |"l" &#124; "m" &#124; "s"                                                                                                                                                                                                                                                                                                                                                                       |undefined  |
#' 
#' ## Events
#' |Event                 |Description                              |Type              |
#' |:---------------------|:----------------------------------------|:-----------------|
#' |calciteActionMenuOpen |Fires when the open property is toggled. |CustomEvent<void> |
#' 
#' ## Slots
#' |Slot      |Description                                                     |
#' |:---------|:---------------------------------------------------------------|
#' |          |A slot for adding calcite-actions.                              |
#' |"tooltip" |A slot for adding an tooltip for the menu.                      |
#' |"trigger" |A slot for adding a calcite-action to trigger opening the menu. |
#' 
#'
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
#' @section Component Details:
#'
#' The below tables illustrate the properties, attributes, and optionally the
#' slots, events, and methods associated with this component.
#'
#' Each attribute can be set by passing it in via `...` as a named value e.g. `"icon-start" = "snow"`.
#'
#' Each event is subscribed to by shiny. The component properties are updated
#' on each of the events.
#'
#' ## Properties
#' |Property             |Attribute               |Description                                                                                                                                                                                                                                                                                                                                                         |Type                                         |Default    |
#' |:--------------------|:-----------------------|:-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|:--------------------------------------------|:----------|
#' |actionsEndGroupLabel |actions-end-group-label |Specifies the accessible label for the last calcite-action-group.                                                                                                                                                                                                                                                                                                   |string                                       |undefined  |
#' |expandDisabled       |expand-disabled         |When true, the expand-toggling behavior is disabled.                                                                                                                                                                                                                                                                                                                |boolean                                      |false      |
#' |expanded             |expanded                |When true, the component is expanded.                                                                                                                                                                                                                                                                                                                               |boolean                                      |false      |
#' |layout               |layout                  |Indicates the layout of the component.                                                                                                                                                                                                                                                                                                                              |"grid" &#124; "horizontal" &#124; "vertical" |"vertical" |
#' |messageOverrides     |message-overrides       |Use this property to override individual strings used by the component.                                                                                                                                                                                                                                                                                             |ActionPadMessages                            |undefined  |
#' |overlayPositioning   |overlay-positioning     |Determines the type of positioning to use for the overlaid content. Using "absolute" will work for most cases. The component will be positioned inside of overflowing parent containers and will affect the container’s layout. "fixed" should be used to escape an overflowing parent container, or when the reference element’s position CSS property is "fixed". |"absolute" &#124; "fixed"                    |"absolute" |
#' |position             |position                |Arranges the component depending on the element’s dir property.                                                                                                                                                                                                                                                                                                     |"end" &#124; "start"                         |undefined  |
#' |scale                |scale                   |Specifies the size of the expand calcite-action.                                                                                                                                                                                                                                                                                                                    |"l" &#124; "m" &#124; "s"                    |undefined  |
#' 
#' ## Events
#' |Event                  |Description                                  |Type              |
#' |:----------------------|:--------------------------------------------|:-----------------|
#' |calciteActionPadToggle |Fires when the expanded property is toggled. |CustomEvent<void> |
#' 
#' ## Slots
#' |Slot             |Description                                              |
#' |:----------------|:--------------------------------------------------------|
#' |                 |A slot for adding calcite-actions to the component.      |
#' |"expand-tooltip" |A slot to set the calcite-tooltip for the expand toggle. |
#' 
#'
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
#' @section Component Details:
#'
#' The below tables illustrate the properties, attributes, and optionally the
#' slots, events, and methods associated with this component.
#'
#' Each attribute can be set by passing it in via `...` as a named value e.g. `"icon-start" = "snow"`.
#'
#' Each event is subscribed to by shiny. The component properties are updated
#' on each of the events.
#'
#' ## Properties
#' |Property         |Attribute         |Description                                                                                                          |Type                                 |Default   |
#' |:----------------|:-----------------|:--------------------------------------------------------------------------------------------------------------------|:------------------------------------|:---------|
#' |active           |active            |When true, the component is highlighted.                                                                             |boolean                              |false     |
#' |alignment        |alignment         |Specifies the horizontal alignment of button elements with text content.                                             |"center" &#124; "end" &#124; "start" |undefined |
#' |appearance       |appearance        |Specifies the appearance of the component.                                                                           |"solid" &#124; "transparent"         |"solid"   |
#' |compact          |compact           |[DEPRECATED] No longer necessary.When true, the side padding of the component is reduced.                            |boolean                              |false     |
#' |disabled         |disabled          |When true, interaction is prevented and the component is displayed with lower opacity.                               |boolean                              |false     |
#' |icon             |icon              |Specifies an icon to display.                                                                                        |string                               |undefined |
#' |iconFlipRtl      |icon-flip-rtl     |When true, the icon will be flipped when the element direction is right-to-left ("rtl").                             |boolean                              |false     |
#' |indicator        |indicator         |When true, displays a visual indicator.                                                                              |boolean                              |false     |
#' |label            |label             |Specifies the label of the component. If no label is provided, the label inherits what’s provided for the text prop. |string                               |undefined |
#' |loading          |loading           |When true, a busy indicator is displayed.                                                                            |boolean                              |false     |
#' |messageOverrides |message-overrides |Use this property to override individual strings used by the component.                                              |ActionMessages                       |undefined |
#' |scale            |scale             |Specifies the size of the component.                                                                                 |"l" &#124; "m" &#124; "s"            |"m"       |
#' |text (required)  |text              |Specifies text that accompanies the icon.                                                                            |string                               |undefined |
#' |textEnabled      |text-enabled      |Indicates whether the text is displayed.                                                                             |boolean                              |false     |
#' 
#' ## Slots
#' |Slot      |Description                                             |
#' |:---------|:-------------------------------------------------------|
#' |          |A slot for adding a calcite-icon.                       |
#' |"tooltip" |[Deprecated] Use the calcite-tooltip component instead. |
#' 
#'
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
#' @section Component Details:
#'
#' The below tables illustrate the properties, attributes, and optionally the
#' slots, events, and methods associated with this component.
#'
#' Each attribute can be set by passing it in via `...` as a named value e.g. `"icon-start" = "snow"`.
#'
#' Each event is subscribed to by shiny. The component properties are updated
#' on each of the events.
#'
#' ## Properties
#' |Property          |Attribute           |Description                                                                                                         |Type                                                                                                |Default   |
#' |:-----------------|:-------------------|:-------------------------------------------------------------------------------------------------------------------|:---------------------------------------------------------------------------------------------------|:---------|
#' |autoClose         |auto-close          |When true, the component closes automatically. Recommended for passive, non-blocking alerts.                        |boolean                                                                                             |false     |
#' |autoCloseDuration |auto-close-duration |Specifies the duration before the component automatically closes - only use with autoClose.                         |"fast" &#124; "medium" &#124; "slow"                                                                |"medium"  |
#' |icon              |icon                |When true, shows a default recommended icon. Alternatively, pass a Calcite UI Icon name to display a specific icon. |boolean &#124; string                                                                               |undefined |
#' |iconFlipRtl       |icon-flip-rtl       |When true, the icon will be flipped when the element direction is right-to-left ("rtl").                            |boolean                                                                                             |false     |
#' |kind              |kind                |Specifies the kind of the component, which will apply to top border and icon.                                       |"brand" &#124; "danger" &#124; "info" &#124; "success" &#124; "warning"                             |"brand"   |
#' |label (required)  |label               |Specifies an accessible name for the component.                                                                     |string                                                                                              |undefined |
#' |messageOverrides  |message-overrides   |Use this property to override individual strings used by the component.                                             |AlertMessages                                                                                       |undefined |
#' |numberingSystem   |numbering-system    |Specifies the Unicode numeral system used by the component for localization.                                        |"arab" &#124; "arabext" &#124; "latn"                                                               |undefined |
#' |open              |open                |When true, displays and positions the component.                                                                    |boolean                                                                                             |false     |
#' |placement         |placement           |Specifies the placement of the component.                                                                           |"bottom" &#124; "bottom-end" &#124; "bottom-start" &#124; "top" &#124; "top-end" &#124; "top-start" |"bottom"  |
#' |queue             |queue               |Specifies the ordering priority of the component when opened.                                                       |"immediate" &#124; "last" &#124; "next"                                                             |"last"    |
#' |scale             |scale               |Specifies the size of the component.                                                                                |"l" &#124; "m" &#124; "s"                                                                           |"m"       |
#' 
#' ## Events
#' |Event                   |Description                                                                                              |Type              |
#' |:-----------------------|:--------------------------------------------------------------------------------------------------------|:-----------------|
#' |calciteAlertBeforeClose |Fires when the component is requested to be closed and before the closing transition begins.             |CustomEvent<void> |
#' |calciteAlertBeforeOpen  |Fires when the component is added to the DOM but not rendered, and before the opening transition begins. |CustomEvent<void> |
#' |calciteAlertClose       |Fires when the component is closed and animation is complete.                                            |CustomEvent<void> |
#' |calciteAlertOpen        |Fires when the component is open and animation is complete.                                              |CustomEvent<void> |
#' 
#' ## Slots
#' |Slot          |Description                                                                                                      |
#' |:-------------|:----------------------------------------------------------------------------------------------------------------|
#' |"actions-end" |A slot for adding calcite-actions to the end of the component. It is recommended to use two or fewer actions.    |
#' |"link"        |A slot for adding a calcite-action to take from the component such as: “undo”, “try again”, “link to page”, etc. |
#' |"message"     |A slot for adding main text to the component.                                                                    |
#' |"title"       |A slot for adding a title to the component.                                                                      |
#' 
#'
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
#'
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
#'
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
#'
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
#' @section Component Details:
#'
#' The below tables illustrate the properties, attributes, and optionally the
#' slots, events, and methods associated with this component.
#'
#' Each attribute can be set by passing it in via `...` as a named value e.g. `"icon-start" = "snow"`.
#'
#' Each event is subscribed to by shiny. The component properties are updated
#' on each of the events.
#'
#' ## Properties
#' |Property  |Attribute |Description                                                                                                                     |Type                      |Default   |
#' |:---------|:---------|:-------------------------------------------------------------------------------------------------------------------------------|:-------------------------|:---------|
#' |fullName  |full-name |Specifies the full name of the user. When label and thumbnail are not defined, specifies the accessible name for the component. |string                    |undefined |
#' |label     |label     |Specifies alternative text when thumbnail is defined, otherwise specifies an accessible label.                                  |string                    |undefined |
#' |scale     |scale     |Specifies the size of the component.                                                                                            |"l" &#124; "m" &#124; "s" |"m"       |
#' |thumbnail |thumbnail |Specifies the src to an image (remember to add a token if the user is private).                                                 |string                    |undefined |
#' |userId    |user-id   |Specifies the unique id of the user.                                                                                            |string                    |undefined |
#' |username  |username  |Specifies the username of the user.                                                                                             |string                    |undefined |
#' 
#'
#' @export
#' @return an object of class `calcite_component` which is a subclass of `shiny.tag`
#'
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/avatar/)
calcite_avatar <- function(...) {
  res <- htmltools::tag("calcite-avatar", rlang::dots_list(..., calcite_dependency(), calcite_bindings()))
  class(res) <- c("calcite_component", class(res))
  res
}


#' Calcite Block Section
#'
#' Create a `<calcite-block-section>` component.
#'
#'
#' @section Component Details:
#'
#' The below tables illustrate the properties, attributes, and optionally the
#' slots, events, and methods associated with this component.
#'
#' Each attribute can be set by passing it in via `...` as a named value e.g. `"icon-start" = "snow"`.
#'
#' Each event is subscribed to by shiny. The component properties are updated
#' on each of the events.
#'
#' ## Properties
#' |Property         |Attribute         |Description                                                                                                                                          |Type                                   |Default   |
#' |:----------------|:-----------------|:----------------------------------------------------------------------------------------------------------------------------------------------------|:--------------------------------------|:---------|
#' |iconEnd          |icon-end          |Specifies an icon to display at the end of the component.                                                                                            |string                                 |undefined |
#' |iconFlipRtl      |icon-flip-rtl     |Displays the iconStart and/or iconEnd as flipped when the element direction is right-to-left ("rtl").                                                |"both" &#124; "end" &#124; "start"     |undefined |
#' |iconStart        |icon-start        |Specifies an icon to display at the start of the component.                                                                                          |string                                 |undefined |
#' |messageOverrides |message-overrides |Use this property to override individual strings used by the component.                                                                              |BlockSectionMessages                   |undefined |
#' |open             |open              |When true, expands the component and its contents.                                                                                                   |boolean                                |false     |
#' |status           |status            |[DEPRECATED] Use icon-start instead.Displays a status-related indicator icon.                                                                        |"idle" &#124; "invalid" &#124; "valid" |undefined |
#' |text             |text              |The component header text.                                                                                                                           |string                                 |undefined |
#' |toggleDisplay    |toggle-display    |Specifies how the component’s toggle is displayed, where: "button" sets the toggle to a selectable header, and "switch" sets the toggle to a switch. |"button" &#124; "switch"               |"button"  |
#' 
#' ## Events
#' |Event                     |Description                             |Type              |
#' |:-------------------------|:---------------------------------------|:-----------------|
#' |calciteBlockSectionToggle |Fires when the header has been clicked. |CustomEvent<void> |
#' 
#' ## Slots
#' |Slot |Description                       |
#' |:----|:---------------------------------|
#' |NA   |A slot for adding custom content. |
#' 
#'
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
#' @section Component Details:
#'
#' The below tables illustrate the properties, attributes, and optionally the
#' slots, events, and methods associated with this component.
#'
#' Each attribute can be set by passing it in via `...` as a named value e.g. `"icon-start" = "snow"`.
#'
#' Each event is subscribed to by shiny. The component properties are updated
#' on each of the events.
#'
#' ## Properties
#' |Property           |Attribute           |Description                                                                                                                                                                                                                                                                                                                                                         |Type                                                                                                                                                                                                                                                                                                                                                                                            |Default                 |
#' |:------------------|:-------------------|:-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|:-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|:-----------------------|
#' |collapsible        |collapsible         |When true, the component is collapsible.                                                                                                                                                                                                                                                                                                                            |boolean                                                                                                                                                                                                                                                                                                                                                                                         |false                   |
#' |description        |description         |A description for the component, which displays below the heading.                                                                                                                                                                                                                                                                                                  |string                                                                                                                                                                                                                                                                                                                                                                                          |undefined               |
#' |disabled           |disabled            |When true, interaction is prevented and the component is displayed with lower opacity.                                                                                                                                                                                                                                                                              |boolean                                                                                                                                                                                                                                                                                                                                                                                         |false                   |
#' |dragHandle         |drag-handle         |When true, displays a drag handle in the header.                                                                                                                                                                                                                                                                                                                    |boolean                                                                                                                                                                                                                                                                                                                                                                                         |false                   |
#' |heading (required) |heading             |The component header text.                                                                                                                                                                                                                                                                                                                                          |string                                                                                                                                                                                                                                                                                                                                                                                          |undefined               |
#' |headingLevel       |heading-level       |Specifies the heading level of the component’s heading for proper document structure, without affecting visual styling.                                                                                                                                                                                                                                             |1 &#124; 2 &#124; 3 &#124; 4 &#124; 5 &#124; 6                                                                                                                                                                                                                                                                                                                                                  |undefined               |
#' |iconEnd            |icon-end            |Specifies an icon to display at the end of the component.                                                                                                                                                                                                                                                                                                           |string                                                                                                                                                                                                                                                                                                                                                                                          |undefined               |
#' |iconFlipRtl        |icon-flip-rtl       |Displays the iconStart and/or iconEnd as flipped when the element direction is right-to-left ("rtl").                                                                                                                                                                                                                                                               |"both" &#124; "end" &#124; "start"                                                                                                                                                                                                                                                                                                                                                              |undefined               |
#' |iconStart          |icon-start          |Specifies an icon to display at the start of the component.                                                                                                                                                                                                                                                                                                         |string                                                                                                                                                                                                                                                                                                                                                                                          |undefined               |
#' |loading            |loading             |When true, a busy indicator is displayed.                                                                                                                                                                                                                                                                                                                           |boolean                                                                                                                                                                                                                                                                                                                                                                                         |false                   |
#' |menuFlipPlacements |–                   |Specifies the component’s fallback menu placement when it’s initial or specified placement has insufficient space available.                                                                                                                                                                                                                                        |FlipPlacement[]                                                                                                                                                                                                                                                                                                                                                                                 |undefined               |
#' |menuPlacement      |menu-placement      |Determines where the action menu will be positioned.                                                                                                                                                                                                                                                                                                                |"auto" &#124; "top" &#124; "bottom" &#124; "right" &#124; "left" &#124; "top-start" &#124; "top-end" &#124; "bottom-start" &#124; "bottom-end" &#124; "right-start" &#124; "right-end" &#124; "left-start" &#124; "left-end" &#124; "leading" &#124; "trailing" &#124; "auto-start" &#124; "auto-end" &#124; "leading-start" &#124; "leading-end" &#124; "trailing-end" &#124; "trailing-start" |defaultEndMenuPlacement |
#' |messageOverrides   |message-overrides   |Use this property to override individual strings used by the component.                                                                                                                                                                                                                                                                                             |BlockMessages                                                                                                                                                                                                                                                                                                                                                                                   |undefined               |
#' |open               |open                |When true, expands the component and its contents.                                                                                                                                                                                                                                                                                                                  |boolean                                                                                                                                                                                                                                                                                                                                                                                         |false                   |
#' |overlayPositioning |overlay-positioning |Determines the type of positioning to use for the overlaid content. Using "absolute" will work for most cases. The component will be positioned inside of overflowing parent containers and will affect the container’s layout. "fixed" should be used to escape an overflowing parent container, or when the reference element’s position CSS property is "fixed". |"absolute" &#124; "fixed"                                                                                                                                                                                                                                                                                                                                                                       |"absolute"              |
#' |status             |status              |[DEPRECATED] Use icon-start instead.Displays a status-related indicator icon.                                                                                                                                                                                                                                                                                       |"idle" &#124; "invalid" &#124; "valid"                                                                                                                                                                                                                                                                                                                                                          |undefined               |
#' 
#' ## Events
#' |Event                   |Description                                                                                                                                                                              |Type              |
#' |:-----------------------|:----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|:-----------------|
#' |calciteBlockBeforeClose |Fires when the component is requested to be closed and before the closing transition begins.                                                                                             |CustomEvent<void> |
#' |calciteBlockBeforeOpen  |Fires when the component is added to the DOM but not rendered, and before the opening transition begins.                                                                                 |CustomEvent<void> |
#' |calciteBlockClose       |Fires when the component is closed and animation is complete.                                                                                                                            |CustomEvent<void> |
#' |calciteBlockOpen        |Fires when the component is open and animation is complete.                                                                                                                              |CustomEvent<void> |
#' |calciteBlockToggle      |[DEPRECATED] Use openClose events such as calciteBlockOpen, calciteBlockClose, calciteBlockBeforeOpen, and calciteBlockBeforeClose instead.Fires when the component’s header is clicked. |CustomEvent<void> |
#' 
#' ## Slots
#' |Slot                  |Description                                                                                                                             |
#' |:---------------------|:---------------------------------------------------------------------------------------------------------------------------------------|
#' |                      |A slot for adding custom content.                                                                                                       |
#' |"actions-end"         |A slot for adding actionable calcite-action elements after the content of the component. It is recommended to use two or fewer actions. |
#' |"content-start"       |A slot for adding non-actionable elements before content of the component.                                                              |
#' |"control"             |[Deprecated] A slot for adding a single HTML input element in a header. Use actions-end instead.                                        |
#' |"header-menu-actions" |A slot for adding an overflow menu with calcite-actions inside a dropdown menu.                                                         |
#' |"icon"                |[Deprecated] A slot for adding a leading header icon with calcite-icon. Use icon-start instead.                                         |
#' 
#'
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
#' @section Component Details:
#'
#' The below tables illustrate the properties, attributes, and optionally the
#' slots, events, and methods associated with this component.
#'
#' Each attribute can be set by passing it in via `...` as a named value e.g. `"icon-start" = "snow"`.
#'
#' Each event is subscribed to by shiny. The component properties are updated
#' on each of the events.
#'
#' ## Properties
#' |Property         |Attribute         |Description                                                                                                                                                                                                                                             |Type                                                                                                                          |Default   |
#' |:----------------|:-----------------|:-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|:-----------------------------------------------------------------------------------------------------------------------------|:---------|
#' |alignment        |alignment         |Specifies the alignment of the component’s elements.                                                                                                                                                                                                    |"center" &#124; "end" &#124; "icon-end-space-between" &#124; "icon-start-space-between" &#124; "space-between" &#124; "start" |"center"  |
#' |appearance       |appearance        |Specifies the appearance style of the component.                                                                                                                                                                                                        |"outline" &#124; "outline-fill" &#124; "solid" &#124; "transparent"                                                           |"solid"   |
#' |disabled         |disabled          |When true, interaction is prevented and the component is displayed with lower opacity.                                                                                                                                                                  |boolean                                                                                                                       |false     |
#' |download         |download          |Prompts the user to save the linked URL instead of navigating to it. Can be used with or without a value: Without a value, the browser will suggest a filename/extension See https://developer.mozilla.org/en-US/docs/Web/HTML/Element/a#attr-download. |boolean &#124; string                                                                                                         |false     |
#' |form             |form              |The id of the form that will be associated with the component. When not set, the component will be associated with its ancestor form element, if any.                                                                                                   |string                                                                                                                        |undefined |
#' |href             |href              |Specifies the URL of the linked resource, which can be set as an absolute or relative path.                                                                                                                                                             |string                                                                                                                        |undefined |
#' |iconEnd          |icon-end          |Specifies an icon to display at the end of the component.                                                                                                                                                                                               |string                                                                                                                        |undefined |
#' |iconFlipRtl      |icon-flip-rtl     |Displays the iconStart and/or iconEnd as flipped when the element direction is right-to-left ("rtl").                                                                                                                                                   |"both" &#124; "end" &#124; "start"                                                                                            |undefined |
#' |iconStart        |icon-start        |Specifies an icon to display at the start of the component.                                                                                                                                                                                             |string                                                                                                                        |undefined |
#' |kind             |kind              |Specifies the kind of the component, which will apply to the border and background if applicable.                                                                                                                                                       |"brand" &#124; "danger" &#124; "inverse" &#124; "neutral"                                                                     |"brand"   |
#' |label            |label             |Accessible name for the component.                                                                                                                                                                                                                      |string                                                                                                                        |undefined |
#' |loading          |loading           |When true, a busy indicator is displayed and interaction is disabled.                                                                                                                                                                                   |boolean                                                                                                                       |false     |
#' |messageOverrides |message-overrides |Use this property to override individual strings used by the component.                                                                                                                                                                                 |ButtonMessages                                                                                                                |undefined |
#' |name             |name              |Specifies the name of the component on form submission.                                                                                                                                                                                                 |string                                                                                                                        |undefined |
#' |rel              |rel               |Defines the relationship between the href value and the current document.                                                                                                                                                                               |string                                                                                                                        |undefined |
#' |round            |round             |When true, adds a round style to the component.                                                                                                                                                                                                         |boolean                                                                                                                       |false     |
#' |scale            |scale             |Specifies the size of the component.                                                                                                                                                                                                                    |"l" &#124; "m" &#124; "s"                                                                                                     |"m"       |
#' |splitChild       |split-child       |Specifies if the component is a child of a calcite-split-button.                                                                                                                                                                                        |"primary" &#124; "secondary" &#124; boolean                                                                                   |false     |
#' |target           |target            |Specifies where to open the linked document defined in the href property.                                                                                                                                                                               |string                                                                                                                        |undefined |
#' |type             |type              |Specifies the default behavior of the component.                                                                                                                                                                                                        |string                                                                                                                        |"button"  |
#' |width            |width             |Specifies the width of the component.                                                                                                                                                                                                                   |"auto" &#124; "full" &#124; "half"                                                                                            |"auto"    |
#' 
#' ## Slots
#' |Slot |Description             |
#' |:----|:-----------------------|
#' |NA   |A slot for adding text. |
#' 
#'
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
#' @section Component Details:
#'
#' The below tables illustrate the properties, attributes, and optionally the
#' slots, events, and methods associated with this component.
#'
#' Each attribute can be set by passing it in via `...` as a named value e.g. `"icon-start" = "snow"`.
#'
#' Each event is subscribed to by shiny. The component properties are updated
#' on each of the events.
#'
#' ## Properties
#' |Property         |Attribute      |Description                                                                            |Type                                                             |Default   |
#' |:----------------|:--------------|:--------------------------------------------------------------------------------------|:----------------------------------------------------------------|:---------|
#' |disabled         |disabled       |When true, interaction is prevented and the component is displayed with lower opacity. |boolean                                                          |false     |
#' |label (required) |label          |Accessible name for the component.                                                     |string                                                           |undefined |
#' |selectedItems    |–              |Specifies the component’s selected items.                                              |HTMLCalciteCardElement[]                                         |[]        |
#' |selectionMode    |selection-mode |Specifies the selection mode of the component.                                         |"multiple" &#124; "none" &#124; "single" &#124; "single-persist" |"none"    |
#' 
#' ## Events
#' |Event                  |Description                                                                     |Type              |
#' |:----------------------|:-------------------------------------------------------------------------------|:-----------------|
#' |calciteCardGroupSelect |Emits when the component’s selection changes and the selectionMode is not none. |CustomEvent<void> |
#' 
#' ## Slots
#' |Slot |Description                                  |
#' |:----|:--------------------------------------------|
#' |NA   |A slot for adding one or more calcite-cards. |
#' 
#'
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
#' @section Component Details:
#'
#' The below tables illustrate the properties, attributes, and optionally the
#' slots, events, and methods associated with this component.
#'
#' Each attribute can be set by passing it in via `...` as a named value e.g. `"icon-start" = "snow"`.
#'
#' Each event is subscribed to by shiny. The component properties are updated
#' on each of the events.
#'
#' ## Properties
#' |Property          |Attribute          |Description                                                                                                            |Type                                                                       |Default       |
#' |:-----------------|:------------------|:----------------------------------------------------------------------------------------------------------------------|:--------------------------------------------------------------------------|:-------------|
#' |disabled          |disabled           |When true, interaction is prevented and the component is displayed with lower opacity.                                 |boolean                                                                    |false         |
#' |label             |label              |Accessible name for the component.                                                                                     |string                                                                     |undefined     |
#' |loading           |loading            |When true, a busy indicator is displayed.                                                                              |boolean                                                                    |false         |
#' |messageOverrides  |message-overrides  |Use this property to override individual strings used by the component.                                                |CardMessages                                                               |undefined     |
#' |selectable        |selectable         |[DEPRECATED] use selectionMode property on a parent calcite-card-group instead.When true, the component is selectable. |boolean                                                                    |false         |
#' |selected          |selected           |When true, the component is selected.                                                                                  |boolean                                                                    |false         |
#' |thumbnailPosition |thumbnail-position |Sets the placement of the thumbnail defined in the thumbnail slot.                                                     |"block-end" &#124; "block-start" &#124; "inline-end" &#124; "inline-start" |"block-start" |
#' 
#' ## Events
#' |Event             |Description                                                                                                                                |Type              |
#' |:-----------------|:------------------------------------------------------------------------------------------------------------------------------------------|:-----------------|
#' |calciteCardSelect |Fires when the deprecated selectable is true, or selectionMode set on parent calcite-card-group is not none and the component is selected. |CustomEvent<void> |
#' 
#' ## Slots
#' |Slot           |Description                                                            |
#' |:--------------|:----------------------------------------------------------------------|
#' |               |A slot for adding content.                                             |
#' |"description"  |A slot for adding a description.                                       |
#' |"footer-end"   |A slot for adding a trailing footer.                                   |
#' |"footer-start" |A slot for adding a leading footer.                                    |
#' |"heading"      |A slot for adding a heading.                                           |
#' |"subtitle"     |[Deprecated] use description instead. A slot for adding a description. |
#' |"thumbnail"    |A slot for adding a thumbnail.                                         |
#' |"title"        |[Deprecated] use heading instead. A slot for adding a heading.         |
#' 
#'
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
#' @section Component Details:
#'
#' The below tables illustrate the properties, attributes, and optionally the
#' slots, events, and methods associated with this component.
#'
#' Each attribute can be set by passing it in via `...` as a named value e.g. `"icon-start" = "snow"`.
#'
#' Each event is subscribed to by shiny. The component properties are updated
#' on each of the events.
#'
#' ## Properties
#' |Property         |Attribute |Description                           |Type    |Default   |
#' |:----------------|:---------|:-------------------------------------|:-------|:---------|
#' |label (required) |label     |Accessible name for the component.    |string  |undefined |
#' |selected         |selected  |When true, the component is selected. |boolean |false     |
#' 
#' ## Slots
#' |Slot |Description                |
#' |:----|:--------------------------|
#' |NA   |A slot for adding content. |
#' 
#'
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
#' @section Component Details:
#'
#' The below tables illustrate the properties, attributes, and optionally the
#' slots, events, and methods associated with this component.
#'
#' Each attribute can be set by passing it in via `...` as a named value e.g. `"icon-start" = "snow"`.
#'
#' Each event is subscribed to by shiny. The component properties are updated
#' on each of the events.
#'
#' ## Properties
#' |Property         |Attribute         |Description                                                                                                                                                                    |Type                                 |Default   |
#' |:----------------|:-----------------|:------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|:------------------------------------|:---------|
#' |arrowType        |arrow-type        |Specifies how and if the “previous” and “next” arrows are displayed.                                                                                                           |"edge" &#124; "inline" &#124; "none" |"inline"  |
#' |autoplay         |autoplay          |When true, the carousel will autoplay and controls will be displayed. When “paused” at time of initialization, the carousel will not autoplay, but controls will be displayed. |"" &#124; "paused" &#124; boolean    |false     |
#' |autoplayDuration |autoplay-duration |When autoplay is true, specifies in milliseconds the length of time to display each Carousel Item.                                                                             |number                               |DURATION  |
#' |controlOverlay   |control-overlay   |Specifies if the component’s controls are positioned absolutely on top of slotted Carousel Items.                                                                              |boolean                              |false     |
#' |disabled         |disabled          |When true, interaction is prevented and the component is displayed with lower opacity.                                                                                         |boolean                              |false     |
#' |label (required) |label             |Accessible name for the component.                                                                                                                                             |string                               |undefined |
#' |messageOverrides |message-overrides |Use this property to override individual strings used by the component.                                                                                                        |CarouselMessages                     |undefined |
#' |selectedItem     |–                 |The component’s selected calcite-carousel-item.                                                                                                                                |HTMLCalciteCarouselItemElement       |undefined |
#' 
#' ## Events
#' |Event                 |Description                                                                                                                                        |Type              |
#' |:---------------------|:--------------------------------------------------------------------------------------------------------------------------------------------------|:-----------------|
#' |calciteCarouselChange |Fires when the selected calcite-carousel-item changes.                                                                                             |CustomEvent<void> |
#' |calciteCarouselPause  |Fires when the carousel autoplay state pauses due to a user hovering over the component or focusing on the component or slotted content            |CustomEvent<void> |
#' |calciteCarouselPlay   |Fires when the carousel autoplay is invoked by the user.                                                                                           |CustomEvent<void> |
#' |calciteCarouselResume |Fires when the carousel autoplay state resumes due to a user no longer hovering over the component or focusing on the component or slotted content |CustomEvent<void> |
#' |calciteCarouselStop   |Fires when the carousel autoplay state is stopped by a user.                                                                                       |CustomEvent<void> |
#' 
#' ## Slots
#' |Slot |Description                               |
#' |:----|:-----------------------------------------|
#' |NA   |A slot for adding calcite-carousel-items. |
#' 
#'
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
#' @section Component Details:
#'
#' The below tables illustrate the properties, attributes, and optionally the
#' slots, events, and methods associated with this component.
#'
#' Each attribute can be set by passing it in via `...` as a named value e.g. `"icon-start" = "snow"`.
#'
#' Each event is subscribed to by shiny. The component properties are updated
#' on each of the events.
#'
#' ## Properties
#' |Property      |Attribute     |Description                                                                                                                                                         |Type                                                                                                                                                                                                                                              |Default                                                                                                                                                                                                                                                                   |
#' |:-------------|:-------------|:-------------------------------------------------------------------------------------------------------------------------------------------------------------------|:-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|:-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
#' |checked       |checked       |When true, the component is checked.                                                                                                                                |boolean                                                                                                                                                                                                                                           |false                                                                                                                                                                                                                                                                     |
#' |disabled      |disabled      |When true, interaction is prevented and the component is displayed with lower opacity.                                                                              |boolean                                                                                                                                                                                                                                           |false                                                                                                                                                                                                                                                                     |
#' |form          |form          |The id of the form that will be associated with the component. When not set, the component will be associated with its ancestor form element, if any.               |string                                                                                                                                                                                                                                            |undefined                                                                                                                                                                                                                                                                 |
#' |guid          |guid          |[DEPRECATED] No longer necessary.The id attribute of the component. When omitted, a globally unique identifier is used.                                             |string                                                                                                                                                                                                                                            |undefined                                                                                                                                                                                                                                                                 |
#' |indeterminate |indeterminate |When true, the component is initially indeterminate, which is independent from its checked value. The state is visual only, and can look different across browsers. |boolean                                                                                                                                                                                                                                           |false                                                                                                                                                                                                                                                                     |
#' |label         |label         |Accessible name for the component.                                                                                                                                  |string                                                                                                                                                                                                                                            |undefined                                                                                                                                                                                                                                                                 |
#' |name          |name          |Specifies the name of the component. Required to pass the component’s value on form submission.                                                                     |string                                                                                                                                                                                                                                            |undefined                                                                                                                                                                                                                                                                 |
#' |required      |required      |When true, the component must have a value in order for the form to submit.                                                                                         |boolean                                                                                                                                                                                                                                           |false                                                                                                                                                                                                                                                                     |
#' |scale         |scale         |Specifies the size of the component.                                                                                                                                |"l" &#124; "m" &#124; "s"                                                                                                                                                                                                                         |"m"                                                                                                                                                                                                                                                                       |
#' |status        |status        |Specifies the status of the input field, which determines message and icons.                                                                                        |"idle" &#124; "invalid" &#124; "valid"                                                                                                                                                                                                            |"idle"                                                                                                                                                                                                                                                                    |
#' |validity      |–             |The current validation state of the component.                                                                                                                      |{ valid: boolean; badInput: boolean; customError: boolean; patternMismatch: boolean; rangeOverflow: boolean; rangeUnderflow: boolean; stepMismatch: boolean; tooLong: boolean; tooShort: boolean; typeMismatch: boolean; valueMissing: boolean; } |{     valid: false,     badInput: false,     customError: false,     patternMismatch: false,     rangeOverflow: false,     rangeUnderflow: false,     stepMismatch: false,     tooLong: false,     tooShort: false,     typeMismatch: false,     valueMissing: false,   } |
#' |value         |value         |The component’s value.                                                                                                                                              |any                                                                                                                                                                                                                                               |undefined                                                                                                                                                                                                                                                                 |
#' 
#' ## Events
#' |Event                 |Description                                        |Type              |
#' |:---------------------|:--------------------------------------------------|:-----------------|
#' |calciteCheckboxChange |Fires when the component’s checked status changes. |CustomEvent<void> |
#' 
#'
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
#' @section Component Details:
#'
#' The below tables illustrate the properties, attributes, and optionally the
#' slots, events, and methods associated with this component.
#'
#' Each attribute can be set by passing it in via `...` as a named value e.g. `"icon-start" = "snow"`.
#'
#' Each event is subscribed to by shiny. The component properties are updated
#' on each of the events.
#'
#' ## Properties
#' |Property         |Attribute      |Description                                                                                                                                                                                                                                      |Type                                                             |Default   |
#' |:----------------|:--------------|:------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|:----------------------------------------------------------------|:---------|
#' |disabled         |disabled       |When true, interaction is prevented and the component is displayed with lower opacity.                                                                                                                                                           |boolean                                                          |false     |
#' |label (required) |label          |Accessible name for the component.                                                                                                                                                                                                               |string                                                           |undefined |
#' |scale            |scale          |Specifies the size of the component. Child calcite-chips inherit the component’s value.                                                                                                                                                          |"l" &#124; "m" &#124; "s"                                        |"m"       |
#' |selectedItems    |–              |Specifies the component’s selected items.                                                                                                                                                                                                        |HTMLCalciteChipElement[]                                         |[]        |
#' |selectionMode    |selection-mode |Specifies the selection mode of the component, where: "multiple" allows any number of selections, "single" allows only one selection, "single-persist" allows one selection and prevents de-selection, and "none" does not allow any selections. |"multiple" &#124; "none" &#124; "single" &#124; "single-persist" |"none"    |
#' 
#' ## Events
#' |Event                  |Description                                   |Type              |
#' |:----------------------|:---------------------------------------------|:-----------------|
#' |calciteChipGroupSelect |Fires when the component’s selection changes. |CustomEvent<void> |
#' 
#' ## Slots
#' |Slot |Description                                  |
#' |:----|:--------------------------------------------|
#' |NA   |A slot for adding one or more calcite-chips. |
#' 
#'
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
#' @section Component Details:
#'
#' The below tables illustrate the properties, attributes, and optionally the
#' slots, events, and methods associated with this component.
#'
#' Each attribute can be set by passing it in via `...` as a named value e.g. `"icon-start" = "snow"`.
#'
#' Each event is subscribed to by shiny. The component properties are updated
#' on each of the events.
#'
#' ## Properties
#' |Property         |Attribute         |Description                                                                                                           |Type                                           |Default   |
#' |:----------------|:-----------------|:---------------------------------------------------------------------------------------------------------------------|:----------------------------------------------|:---------|
#' |appearance       |appearance        |Specifies the appearance style of the component.                                                                      |"outline" &#124; "outline-fill" &#124; "solid" |"solid"   |
#' |closable         |closable          |When true, a close button is added to the component.                                                                  |boolean                                        |false     |
#' |closed           |closed            |When true, hides the component.                                                                                       |boolean                                        |false     |
#' |disabled         |disabled          |When true, interaction is prevented and the component is displayed with lower opacity.                                |boolean                                        |false     |
#' |icon             |icon              |Specifies an icon to display.                                                                                         |string                                         |undefined |
#' |iconFlipRtl      |icon-flip-rtl     |When true, the icon will be flipped when the element direction is right-to-left ("rtl").                              |boolean                                        |false     |
#' |kind             |kind              |Specifies the kind of the component, which will apply to border and background if applicable.                         |"brand" &#124; "inverse" &#124; "neutral"      |"neutral" |
#' |label            |label             |Accessible name for the component.                                                                                    |string                                         |undefined |
#' |messageOverrides |message-overrides |Use this property to override individual strings used by the component.                                               |ChipMessages                                   |undefined |
#' |scale            |scale             |Specifies the size of the component. When contained in a parent calcite-chip-group inherits the parent’s scale value. |"l" &#124; "m" &#124; "s"                      |"m"       |
#' |selected         |selected          |When true, the component is selected.                                                                                 |boolean                                        |false     |
#' |value (required) |value             |The component’s value.                                                                                                |any                                            |undefined |
#' 
#' ## Events
#' |Event             |Description                                             |Type              |
#' |:-----------------|:-------------------------------------------------------|:-----------------|
#' |calciteChipClose  |Fires when the component’s close button is selected.    |CustomEvent<void> |
#' |calciteChipSelect |Fires when the selected state of the component changes. |CustomEvent<void> |
#' 
#' ## Slots
#' |Slot    |Description                 |
#' |:-------|:---------------------------|
#' |        |A slot for adding text.     |
#' |"image" |A slot for adding an image. |
#' 
#'
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
#' @section Component Details:
#'
#' The below tables illustrate the properties, attributes, and optionally the
#' slots, events, and methods associated with this component.
#'
#' Each attribute can be set by passing it in via `...` as a named value e.g. `"icon-start" = "snow"`.
#'
#' Each event is subscribed to by shiny. The component properties are updated
#' on each of the events.
#'
#' ## Properties
#' |Property        |Attribute        |Description                                                                                                                                                                    |Type                                  |Default                                                                                          |
#' |:---------------|:----------------|:------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|:-------------------------------------|:------------------------------------------------------------------------------------------------|
#' |allowEmpty      |allow-empty      |When true, an empty color (undefined) will be allowed as a value. When false, a color value is enforced, and clearing the input or blurring will restore the last valid value. |boolean                               |false                                                                                            |
#' |alphaChannel    |alpha-channel    |When true, the component will allow updates to the color’s alpha value.                                                                                                        |boolean                               |false                                                                                            |
#' |hexLabel        |hex-label        |[DEPRECATED] use messages insteadSpecifies accessible label for the input field.                                                                                               |string                                |"Hex"                                                                                            |
#' |numberingSystem |numbering-system |Specifies the Unicode numeral system used by the component for localization.                                                                                                   |"arab" &#124; "arabext" &#124; "latn" |undefined                                                                                        |
#' |scale           |scale            |Specifies the size of the component.                                                                                                                                           |"l" &#124; "m" &#124; "s"             |"m"                                                                                              |
#' |value           |value            |The hex value.                                                                                                                                                                 |string                                |normalizeHex(     hexify(DEFAULT_COLOR, this.alphaChannel),     this.alphaChannel,     true,   ) |
#' 
#' ## Events
#' |Event                            |Description                         |Type              |
#' |:--------------------------------|:-----------------------------------|:-----------------|
#' |calciteColorPickerHexInputChange |Emitted when the hex value changes. |CustomEvent<void> |
#' 
#'
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
#' @section Component Details:
#'
#' The below tables illustrate the properties, attributes, and optionally the
#' slots, events, and methods associated with this component.
#'
#' Each attribute can be set by passing it in via `...` as a named value e.g. `"icon-start" = "snow"`.
#'
#' Each event is subscribed to by shiny. The component properties are updated
#' on each of the events.
#'
#' ## Properties
#' |Property |Attribute |Description                          |Type                      |Default   |
#' |:--------|:---------|:------------------------------------|:-------------------------|:---------|
#' |active   |active    |When true, the component is active.  |boolean                   |false     |
#' |color    |color     |The color value.                     |string                    |undefined |
#' |scale    |scale     |Specifies the size of the component. |"l" &#124; "m" &#124; "s" |"m"       |
#' 
#'
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
#' @section Component Details:
#'
#' The below tables illustrate the properties, attributes, and optionally the
#' slots, events, and methods associated with this component.
#'
#' Each attribute can be set by passing it in via `...` as a named value e.g. `"icon-start" = "snow"`.
#'
#' Each event is subscribed to by shiny. The component properties are updated
#' on each of the events.
#'
#' ## Properties
#' |Property         |Attribute         |Description                                                                                                                                                                                                 |Type                                                                                                                                                                                     |Default                                                         |
#' |:----------------|:-----------------|:-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|:----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|:---------------------------------------------------------------|
#' |allowEmpty       |allow-empty       |[DEPRECATED] Use clearable insteadWhen true, an empty color (null) will be allowed as a value. When false, a color value is enforced, and clearing the input or blurring will restore the last valid value. |boolean                                                                                                                                                                                  |false                                                           |
#' |alphaChannel     |alpha-channel     |When true, the component will allow updates to the color’s alpha value.                                                                                                                                     |boolean                                                                                                                                                                                  |false                                                           |
#' |channelsDisabled |channels-disabled |When true, hides the RGB/HSV channel inputs.                                                                                                                                                                |boolean                                                                                                                                                                                  |false                                                           |
#' |clearable        |clearable         |When true, an empty color (null) will be allowed as a value. When false, a color value is enforced, and clearing the input or blurring will restore the last valid value.                                   |boolean                                                                                                                                                                                  |false                                                           |
#' |disabled         |disabled          |When true, interaction is prevented and the component is displayed with lower opacity.                                                                                                                      |boolean                                                                                                                                                                                  |false                                                           |
#' |format           |format            |The format of value. When "auto", the format will be inferred from value when set.                                                                                                                          |"auto" &#124; "hex" &#124; "hexa" &#124; "hsl" &#124; "hsl-css" &#124; "hsla" &#124; "hsla-css" &#124; "hsv" &#124; "hsva" &#124; "rgb" &#124; "rgb-css" &#124; "rgba" &#124; "rgba-css" |"auto"                                                          |
#' |hexDisabled      |hex-disabled      |When true, hides the hex input.                                                                                                                                                                             |boolean                                                                                                                                                                                  |false                                                           |
#' |hideChannels     |hide-channels     |[DEPRECATED] use channelsDisabled insteadWhen true, hides the RGB/HSV channel inputs.                                                                                                                       |boolean                                                                                                                                                                                  |false                                                           |
#' |hideHex          |hide-hex          |[DEPRECATED] use hexDisabled insteadWhen true, hides the hex input.                                                                                                                                         |boolean                                                                                                                                                                                  |false                                                           |
#' |hideSaved        |hide-saved        |[DEPRECATED] use savedDisabled insteadWhen true, hides the saved colors section.                                                                                                                            |boolean                                                                                                                                                                                  |false                                                           |
#' |messageOverrides |message-overrides |Use this property to override individual strings used by the component.                                                                                                                                     |ColorPickerMessages                                                                                                                                                                      |undefined                                                       |
#' |numberingSystem  |numbering-system  |Specifies the Unicode numeral system used by the component for localization.                                                                                                                                |"arab" &#124; "arabext" &#124; "latn"                                                                                                                                                    |undefined                                                       |
#' |savedDisabled    |saved-disabled    |When true, hides the saved colors section.                                                                                                                                                                  |boolean                                                                                                                                                                                  |false                                                           |
#' |scale            |scale             |Specifies the size of the component.                                                                                                                                                                        |"l" &#124; "m" &#124; "s"                                                                                                                                                                |"m"                                                             |
#' |storageId        |storage-id        |Specifies the storage ID for colors.                                                                                                                                                                        |string                                                                                                                                                                                   |undefined                                                       |
#' |value            |value             |The component’s value, where the value can be a CSS color string, or a RGB, HSL or HSV object. The type will be preserved as the color is updated.                                                          |HSL &#124; HSL & ObjectWithAlpha &#124; HSV &#124; HSV & ObjectWithAlpha &#124; RGB &#124; RGB & ObjectWithAlpha &#124; string                                                           |normalizeHex(     hexify(DEFAULT_COLOR, this.alphaChannel),   ) |
#' 
#' ## Events
#' |Event                    |Description                                                                                                                                                                                                |Type              |
#' |:------------------------|:----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|:-----------------|
#' |calciteColorPickerChange |Fires when the color value has changed.                                                                                                                                                                    |CustomEvent<void> |
#' |calciteColorPickerInput  |Fires as the color value changes. Similar to the calciteColorPickerChange event with the exception of dragging. When dragging the color field or hue slider thumb, this event fires as the thumb is moved. |CustomEvent<void> |
#' 
#'
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
#' @section Component Details:
#'
#' The below tables illustrate the properties, attributes, and optionally the
#' slots, events, and methods associated with this component.
#'
#' Each attribute can be set by passing it in via `...` as a named value e.g. `"icon-start" = "snow"`.
#'
#' Each event is subscribed to by shiny. The component properties are updated
#' on each of the events.
#'
#' ## Properties
#' |Property         |Attribute |Description                                                                                     |Type                   |Default   |
#' |:----------------|:---------|:-----------------------------------------------------------------------------------------------|:----------------------|:---------|
#' |ancestors        |–         |Specifies the parent and grandparent calcite-combobox-items, which are set on calcite-combobox. |ComboboxChildElement[] |undefined |
#' |label (required) |label     |Specifies the title of the component.                                                           |string                 |undefined |
#' 
#' ## Slots
#' |Slot |Description                               |
#' |:----|:-----------------------------------------|
#' |NA   |A slot for adding calcite-combobox-items. |
#' 
#'
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
#' @section Component Details:
#'
#' The below tables illustrate the properties, attributes, and optionally the
#' slots, events, and methods associated with this component.
#'
#' Each attribute can be set by passing it in via `...` as a named value e.g. `"icon-start" = "snow"`.
#'
#' Each event is subscribed to by shiny. The component properties are updated
#' on each of the events.
#'
#' ## Properties
#' |Property             |Attribute       |Description                                                                                                                                                     |Type                      |Default   |
#' |:--------------------|:---------------|:---------------------------------------------------------------------------------------------------------------------------------------------------------------|:-------------------------|:---------|
#' |active               |active          |When true, the component is active.                                                                                                                             |boolean                   |false     |
#' |ancestors            |–               |Specifies the parent and grandparent items, which are set on calcite-combobox.                                                                                  |ComboboxChildElement[]    |undefined |
#' |description          |description     |A description for the component, which displays below the label.                                                                                                |string                    |undefined |
#' |disabled             |disabled        |When true, interaction is prevented and the component is displayed with lower opacity.                                                                          |boolean                   |false     |
#' |filterDisabled       |filter-disabled |When true, omits the component from the calcite-combobox filtered search results.                                                                               |boolean                   |undefined |
#' |guid                 |guid            |The id attribute of the component. When omitted, a globally unique identifier is used.                                                                          |string                    |guid()    |
#' |heading              |heading         |The component’s text.                                                                                                                                           |string                    |undefined |
#' |icon                 |icon            |Specifies an icon to display.                                                                                                                                   |string                    |undefined |
#' |iconFlipRtl          |icon-flip-rtl   |When true, the icon will be flipped when the element direction is right-to-left ("rtl").                                                                        |boolean                   |false     |
#' |label                |label           |The component’s label.                                                                                                                                          |any                       |undefined |
#' |metadata             |–               |Provides additional metadata to the component used in filtering.                                                                                                |{ [x: string]: unknown; } |undefined |
#' |selected             |selected        |When true, the component is selected.                                                                                                                           |boolean                   |false     |
#' |shortHeading         |short-heading   |The component’s short heading. When provided, the short heading will be displayed in the component’s selection. It is recommended to use 5 characters or fewer. |string                    |undefined |
#' |textLabel (required) |text-label      |[DEPRECATED] Use heading instead.The component’s text.                                                                                                          |string                    |undefined |
#' |value (required)     |value           |The component’s value.                                                                                                                                          |any                       |undefined |
#' 
#' ## Events
#' |Event                     |Description                                             |Type              |
#' |:-------------------------|:-------------------------------------------------------|:-----------------|
#' |calciteComboboxItemChange |Fires whenever the component is selected or unselected. |CustomEvent<void> |
#' 
#' ## Slots
#' |Slot          |Description                                                              |
#' |:-------------|:------------------------------------------------------------------------|
#' |              |A slot for adding nested calcite-combobox-items.                         |
#' |"content-end" |A slot for adding non-actionable elements after the component’s content. |
#' 
#'
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
#' @section Component Details:
#'
#' The below tables illustrate the properties, attributes, and optionally the
#' slots, events, and methods associated with this component.
#'
#' Each attribute can be set by passing it in via `...` as a named value e.g. `"icon-start" = "snow"`.
#'
#' Each event is subscribed to by shiny. The component properties are updated
#' on each of the events.
#'
#' ## Properties
#' |Property               |Attribute                 |Description                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |Type                                                                                                                                                                                                                                              |Default                                                                                                                                                                                                                                                                   |
#' |:----------------------|:-------------------------|:----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|:-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|:-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
#' |allowCustomValues      |allow-custom-values       |When true, allows entry of custom values, which are not in the original set of items.                                                                                                                                                                                                                                                                                                                                                                                                    |boolean                                                                                                                                                                                                                                           |undefined                                                                                                                                                                                                                                                                 |
#' |clearDisabled          |clear-disabled            |When true, the value-clearing will be disabled.                                                                                                                                                                                                                                                                                                                                                                                                                                          |boolean                                                                                                                                                                                                                                           |false                                                                                                                                                                                                                                                                     |
#' |disabled               |disabled                  |When true, interaction is prevented and the component is displayed with lower opacity.                                                                                                                                                                                                                                                                                                                                                                                                   |boolean                                                                                                                                                                                                                                           |false                                                                                                                                                                                                                                                                     |
#' |filterText             |filter-text               |Text for the component’s filter input field.                                                                                                                                                                                                                                                                                                                                                                                                                                             |string                                                                                                                                                                                                                                            |""                                                                                                                                                                                                                                                                        |
#' |filteredItems          |–                         |Specifies the component’s filtered items.                                                                                                                                                                                                                                                                                                                                                                                                                                                |HTMLCalciteComboboxItemElement[]                                                                                                                                                                                                                  |[]                                                                                                                                                                                                                                                                        |
#' |flipPlacements         |–                         |Specifies the component’s fallback slotted content placement when it’s initial placement has insufficient space available.                                                                                                                                                                                                                                                                                                                                                               |FlipPlacement[]                                                                                                                                                                                                                                   |undefined                                                                                                                                                                                                                                                                 |
#' |form                   |form                      |The id of the form that will be associated with the component. When not set, the component will be associated with its ancestor form element, if any.                                                                                                                                                                                                                                                                                                                                    |string                                                                                                                                                                                                                                            |undefined                                                                                                                                                                                                                                                                 |
#' |label (required)       |label                     |Accessible name for the component.                                                                                                                                                                                                                                                                                                                                                                                                                                                       |string                                                                                                                                                                                                                                            |undefined                                                                                                                                                                                                                                                                 |
#' |maxItems               |max-items                 |Specifies the maximum number of calcite-combobox-items (including nested children) to display before displaying a scrollbar.                                                                                                                                                                                                                                                                                                                                                             |number                                                                                                                                                                                                                                            |0                                                                                                                                                                                                                                                                         |
#' |messageOverrides       |message-overrides         |Use this property to override individual strings used by the component.                                                                                                                                                                                                                                                                                                                                                                                                                  |ComboboxMessages                                                                                                                                                                                                                                  |undefined                                                                                                                                                                                                                                                                 |
#' |name                   |name                      |Specifies the name of the component. Required to pass the component’s value on form submission.                                                                                                                                                                                                                                                                                                                                                                                          |string                                                                                                                                                                                                                                            |undefined                                                                                                                                                                                                                                                                 |
#' |open                   |open                      |When true, displays and positions the component.                                                                                                                                                                                                                                                                                                                                                                                                                                         |boolean                                                                                                                                                                                                                                           |false                                                                                                                                                                                                                                                                     |
#' |overlayPositioning     |overlay-positioning       |Determines the type of positioning to use for the overlaid content. Using "absolute" will work for most cases. The component will be positioned inside of overflowing parent containers and will affect the container’s layout. "fixed" should be used to escape an overflowing parent container, or when the reference element’s position CSS property is "fixed".                                                                                                                      |"absolute" &#124; "fixed"                                                                                                                                                                                                                         |"absolute"                                                                                                                                                                                                                                                                |
#' |placeholder            |placeholder               |Specifies the placeholder text for the input.                                                                                                                                                                                                                                                                                                                                                                                                                                            |string                                                                                                                                                                                                                                            |undefined                                                                                                                                                                                                                                                                 |
#' |placeholderIcon        |placeholder-icon          |Specifies the placeholder icon for the input.                                                                                                                                                                                                                                                                                                                                                                                                                                            |string                                                                                                                                                                                                                                            |undefined                                                                                                                                                                                                                                                                 |
#' |placeholderIconFlipRtl |placeholder-icon-flip-rtl |When true, the icon will be flipped when the element direction is right-to-left ("rtl").                                                                                                                                                                                                                                                                                                                                                                                                 |boolean                                                                                                                                                                                                                                           |false                                                                                                                                                                                                                                                                     |
#' |readOnly               |read-only                 |When true, the component’s value can be read, but controls are not accessible and the value cannot be modified.                                                                                                                                                                                                                                                                                                                                                                          |boolean                                                                                                                                                                                                                                           |false                                                                                                                                                                                                                                                                     |
#' |required               |required                  |When true, the component must have a value in order for the form to submit.                                                                                                                                                                                                                                                                                                                                                                                                              |boolean                                                                                                                                                                                                                                           |false                                                                                                                                                                                                                                                                     |
#' |scale                  |scale                     |Specifies the size of the component.                                                                                                                                                                                                                                                                                                                                                                                                                                                     |"l" &#124; "m" &#124; "s"                                                                                                                                                                                                                         |"m"                                                                                                                                                                                                                                                                       |
#' |selectedItems          |–                         |Specifies the component’s selected items.                                                                                                                                                                                                                                                                                                                                                                                                                                                |HTMLCalciteComboboxItemElement[]                                                                                                                                                                                                                  |[]                                                                                                                                                                                                                                                                        |
#' |selectionDisplay       |selection-display         |When selectionMode is "ancestors" or "multiple", specifies the display of multiple calcite-combobox-item selections, where: "all" displays all selections with individual calcite-chips, "fit" displays individual calcite-chips that scale to the component’s size, including a non-closable calcite-chip, which provides the number of additional calcite-combobox-item selections not visually displayed, and "single" displays one calcite-chip with the total number of selections. |"all" &#124; "fit" &#124; "single"                                                                                                                                                                                                                |"all"                                                                                                                                                                                                                                                                     |
#' |selectionMode          |selection-mode            |Specifies the selection mode of the component, where: "multiple" allows any number of selections, "single" allows only one selection, "single-persist" allows one selection and prevents de-selection, and "ancestors" allows multiple selections, but shows ancestors of selected items as selected, with only deepest children shown in chips.                                                                                                                                         |"ancestors" &#124; "multiple" &#124; "single" &#124; "single-persist"                                                                                                                                                                             |"multiple"                                                                                                                                                                                                                                                                |
#' |status                 |status                    |Specifies the status of the input field, which determines message and icons.                                                                                                                                                                                                                                                                                                                                                                                                             |"idle" &#124; "invalid" &#124; "valid"                                                                                                                                                                                                            |"idle"                                                                                                                                                                                                                                                                    |
#' |validationIcon         |validation-icon           |Specifies the validation icon to display under the component.                                                                                                                                                                                                                                                                                                                                                                                                                            |boolean &#124; string                                                                                                                                                                                                                             |undefined                                                                                                                                                                                                                                                                 |
#' |validationMessage      |validation-message        |Specifies the validation message to display under the component.                                                                                                                                                                                                                                                                                                                                                                                                                         |string                                                                                                                                                                                                                                            |undefined                                                                                                                                                                                                                                                                 |
#' |validity               |–                         |The current validation state of the component.                                                                                                                                                                                                                                                                                                                                                                                                                                           |{ valid: boolean; badInput: boolean; customError: boolean; patternMismatch: boolean; rangeOverflow: boolean; rangeUnderflow: boolean; stepMismatch: boolean; tooLong: boolean; tooShort: boolean; typeMismatch: boolean; valueMissing: boolean; } |{     valid: false,     badInput: false,     customError: false,     patternMismatch: false,     rangeOverflow: false,     rangeUnderflow: false,     stepMismatch: false,     tooLong: false,     tooShort: false,     typeMismatch: false,     valueMissing: false,   } |
#' |value                  |value                     |The component’s value(s) from the selected calcite-combobox-item(s).                                                                                                                                                                                                                                                                                                                                                                                                                     |string &#124; string[]                                                                                                                                                                                                                            |null                                                                                                                                                                                                                                                                      |
#' 
#' ## Events
#' |Event                       |Description                                                                                              |Type              |
#' |:---------------------------|:--------------------------------------------------------------------------------------------------------|:-----------------|
#' |calciteComboboxBeforeClose  |Fires when the component is requested to be closed, and before the closing transition begins.            |CustomEvent<void> |
#' |calciteComboboxBeforeOpen   |Fires when the component is added to the DOM but not rendered, and before the opening transition begins. |CustomEvent<void> |
#' |calciteComboboxChange       |Fires when the selected item(s) changes.                                                                 |CustomEvent<void> |
#' |calciteComboboxChipClose    |Fires when a selected item in the component is closed via its calcite-chip.                              |CustomEvent<void> |
#' |calciteComboboxClose        |Fires when the component is closed and animation is complete.                                            |CustomEvent<void> |
#' |calciteComboboxFilterChange |Fires when text is added to filter the options list.                                                     |CustomEvent<void> |
#' |calciteComboboxOpen         |Fires when the component is open and animation is complete.                                              |CustomEvent<void> |
#' 
#' ## Slots
#' |Slot |Description                               |
#' |:----|:-----------------------------------------|
#' |NA   |A slot for adding calcite-combobox-items. |
#' 
#'
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
#' @section Component Details:
#'
#' The below tables illustrate the properties, attributes, and optionally the
#' slots, events, and methods associated with this component.
#'
#' Each attribute can be set by passing it in via `...` as a named value e.g. `"icon-start" = "snow"`.
#'
#' Each event is subscribed to by shiny. The component properties are updated
#' on each of the events.
#'
#' ## Properties
#' |Property       |Attribute      |Description                                                                            |Type                      |Default   |
#' |:--------------|:--------------|:--------------------------------------------------------------------------------------|:-------------------------|:---------|
#' |active         |active         |When true, the component is active.                                                    |boolean                   |false     |
#' |currentMonth   |current-month  |Date is in the current month.                                                          |boolean                   |false     |
#' |day (required) |day            |Day of the month to be shown.                                                          |number                    |undefined |
#' |disabled       |disabled       |When true, interaction is prevented and the component is displayed with lower opacity. |boolean                   |false     |
#' |endOfRange     |end-of-range   |Date is the end of date range.                                                         |boolean                   |false     |
#' |highlighted    |highlighted    |Date is currently highlighted as part of the range,                                    |boolean                   |false     |
#' |range          |range          |When true, activates the component’s range mode to allow a start and end date.         |boolean                   |false     |
#' |rangeHover     |range-hover    |Date is being hovered and within the set range.                                        |boolean                   |false     |
#' |scale          |scale          |Specifies the size of the component.                                                   |"l" &#124; "m" &#124; "s" |undefined |
#' |selected       |selected       |When true, the component is selected.                                                  |boolean                   |false     |
#' |startOfRange   |start-of-range |Date is the start of date range.                                                       |boolean                   |false     |
#' |value          |–              |The component’s value.                                                                 |Date                      |undefined |
#' 
#' ## Events
#' |Event                    |Description                  |Type              |
#' |:------------------------|:----------------------------|:-----------------|
#' |calciteInternalDaySelect |Fires when user selects day. |CustomEvent<void> |
#' 
#'
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
#' @section Component Details:
#'
#' The below tables illustrate the properties, attributes, and optionally the
#' slots, events, and methods associated with this component.
#'
#' Each attribute can be set by passing it in via `...` as a named value e.g. `"icon-start" = "snow"`.
#'
#' Each event is subscribed to by shiny. The component properties are updated
#' on each of the events.
#'
#' ## Properties
#' |Property     |Attribute     |Description                                                                           |Type                                           |Default   |
#' |:------------|:-------------|:-------------------------------------------------------------------------------------|:----------------------------------------------|:---------|
#' |activeDate   |–             |The focused date is indicated and will become the selected date if the user proceeds. |Date                                           |undefined |
#' |headingLevel |heading-level |Specifies the number at which section headings should start.                          |1 &#124; 2 &#124; 3 &#124; 4 &#124; 5 &#124; 6 |undefined |
#' |localeData   |–             |CLDR locale data for translated calendar info.                                        |DateLocaleData                                 |undefined |
#' |max          |–             |Specifies the latest allowed date ("yyyy-mm-dd").                                     |Date                                           |undefined |
#' |min          |–             |Specifies the earliest allowed date ("yyyy-mm-dd").                                   |Date                                           |undefined |
#' |monthStyle   |month-style   |Specifies the monthStyle used by the component.                                       |"abbreviated" &#124; "wide"                    |undefined |
#' |scale        |scale         |Specifies the size of the component.                                                  |"l" &#124; "m" &#124; "s"                      |undefined |
#' |selectedDate |–             |Already selected date.                                                                |Date                                           |undefined |
#' 
#'
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
#' @section Component Details:
#'
#' The below tables illustrate the properties, attributes, and optionally the
#' slots, events, and methods associated with this component.
#'
#' Each attribute can be set by passing it in via `...` as a named value e.g. `"icon-start" = "snow"`.
#'
#' Each event is subscribed to by shiny. The component properties are updated
#' on each of the events.
#'
#' ## Properties
#' |Property     |Attribute     |Description                                                                                                |Type                                           |Default    |
#' |:------------|:-------------|:----------------------------------------------------------------------------------------------------------|:----------------------------------------------|:----------|
#' |activeDate   |–             |The currently active Date.                                                                                 |Date                                           |new Date() |
#' |endDate      |–             |End date currently active.                                                                                 |Date                                           |undefined  |
#' |headingLevel |heading-level |Specifies the number at which section headings should start.                                               |1 &#124; 2 &#124; 3 &#124; 4 &#124; 5 &#124; 6 |undefined  |
#' |hoverRange   |–             |The range of dates currently being hovered.                                                                |HoverRange                                     |undefined  |
#' |max          |–             |Specifies the latest allowed date ("yyyy-mm-dd").                                                          |Date                                           |undefined  |
#' |min          |–             |Specifies the earliest allowed date ("yyyy-mm-dd").                                                        |Date                                           |undefined  |
#' |monthStyle   |month-style   |Specifies the monthStyle used by the component.                                                            |"abbreviated" &#124; "wide"                    |undefined  |
#' |range        |range         |When true, activates the component’s range mode which renders two calendars for selecting ranges of dates. |boolean                                        |false      |
#' |scale        |scale         |Specifies the size of the component.                                                                       |"l" &#124; "m" &#124; "s"                      |undefined  |
#' |selectedDate |–             |Already selected date.                                                                                     |Date                                           |undefined  |
#' |startDate    |–             |Start date currently active.                                                                               |Date                                           |undefined  |
#' 
#'
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
#' @section Component Details:
#'
#' The below tables illustrate the properties, attributes, and optionally the
#' slots, events, and methods associated with this component.
#'
#' Each attribute can be set by passing it in via `...` as a named value e.g. `"icon-start" = "snow"`.
#'
#' Each event is subscribed to by shiny. The component properties are updated
#' on each of the events.
#'
#' ## Properties
#' |Property                   |Attribute                    |Description                                                                                                                                                              |Type                                           |Default      |
#' |:--------------------------|:----------------------------|:------------------------------------------------------------------------------------------------------------------------------------------------------------------------|:----------------------------------------------|:------------|
#' |activeDate                 |–                            |Specifies the component’s active date.                                                                                                                                   |Date                                           |undefined    |
#' |activeRange                |active-range                 |When range is true, specifies the active range. Where "start" specifies the starting range date and "end" the ending range date.                                         |"end" &#124; "start"                           |undefined    |
#' |headingLevel               |heading-level                |Specifies the heading level of the component’s heading for proper document structure, without affecting visual styling.                                                  |1 &#124; 2 &#124; 3 &#124; 4 &#124; 5 &#124; 6 |undefined    |
#' |layout                     |layout                       |Defines the layout of the component.                                                                                                                                     |"horizontal" &#124; "vertical"                 |"horizontal" |
#' |max                        |max                          |Specifies the latest allowed date ("yyyy-mm-dd").                                                                                                                        |string                                         |undefined    |
#' |maxAsDate                  |–                            |Specifies the latest allowed date as a full date object (new Date("yyyy-mm-dd")).                                                                                        |Date                                           |undefined    |
#' |messageOverrides           |message-overrides            |Use this property to override individual strings used by the component.                                                                                                  |DatePickerMessages                             |undefined    |
#' |min                        |min                          |Specifies the earliest allowed date ("yyyy-mm-dd").                                                                                                                      |string                                         |undefined    |
#' |minAsDate                  |–                            |Specifies the earliest allowed date as a full date object (new Date("yyyy-mm-dd")).                                                                                      |Date                                           |undefined    |
#' |monthStyle                 |month-style                  |Specifies the monthStyle used by the component.                                                                                                                          |"abbreviated" &#124; "wide"                    |"wide"       |
#' |numberingSystem            |numbering-system             |Specifies the Unicode numeral system used by the component for localization. This property cannot be dynamically changed.                                                |"arab" &#124; "arabext" &#124; "latn"          |undefined    |
#' |proximitySelectionDisabled |proximity-selection-disabled |When true, disables the default behavior on the third click of narrowing or extending the range and instead starts a new range.                                          |boolean                                        |false        |
#' |range                      |range                        |When true, activates the component’s range mode to allow a start and end date.                                                                                           |boolean                                        |false        |
#' |scale                      |scale                        |Specifies the size of the component.                                                                                                                                     |"l" &#124; "m" &#124; "s"                      |"m"          |
#' |value                      |value                        |Specifies the selected date as a string ("yyyy-mm-dd"), or an array of strings for range values (["yyyy-mm-dd", "yyyy-mm-dd"]).                                          |string &#124; string[]                         |undefined    |
#' |valueAsDate                |–                            |Specifies the selected date as a full date object (new Date("yyyy-mm-dd")), or an array containing full date objects ([new Date("yyyy-mm-dd"), new Date("yyyy-mm-dd")]). |Date &#124; Date[]                             |undefined    |
#' 
#' ## Events
#' |Event                        |Description                                                                                                     |Type              |
#' |:----------------------------|:---------------------------------------------------------------------------------------------------------------|:-----------------|
#' |calciteDatePickerChange      |Fires when a user changes the component’s date. For range events, use calciteDatePickerRangeChange.             |CustomEvent<void> |
#' |calciteDatePickerRangeChange |Fires when a user changes the component’s date range. For components without range use calciteDatePickerChange. |CustomEvent<void> |
#' 
#'
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
#' @section Component Details:
#'
#' The below tables illustrate the properties, attributes, and optionally the
#' slots, events, and methods associated with this component.
#'
#' Each attribute can be set by passing it in via `...` as a named value e.g. `"icon-start" = "snow"`.
#'
#' Each event is subscribed to by shiny. The component properties are updated
#' on each of the events.
#'
#' ## Properties
#' |Property             |Attribute              |Description                                                                                                                                                                                                                                                                                                                                                         |Type                                                                                                                               |Default    |
#' |:--------------------|:----------------------|:-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|:----------------------------------------------------------------------------------------------------------------------------------|:----------|
#' |beforeClose          |–                      |Passes a function to run before the component closes.                                                                                                                                                                                                                                                                                                               |() => Promise<void>                                                                                                                |undefined  |
#' |closeDisabled        |close-disabled         |When true, disables the component’s close button.                                                                                                                                                                                                                                                                                                                   |boolean                                                                                                                            |false      |
#' |description          |description            |A description for the component.                                                                                                                                                                                                                                                                                                                                    |string                                                                                                                             |undefined  |
#' |dragEnabled          |drag-enabled           |When true, the component is draggable.                                                                                                                                                                                                                                                                                                                              |boolean                                                                                                                            |false      |
#' |escapeDisabled       |escape-disabled        |When true, disables the default close on escape behavior. By default, an open dialog can be dismissed by pressing the Esc key.                                                                                                                                                                                                                                      |boolean                                                                                                                            |false      |
#' |heading              |heading                |The component header text.                                                                                                                                                                                                                                                                                                                                          |string                                                                                                                             |undefined  |
#' |headingLevel         |heading-level          |Specifies the heading level of the component’s heading for proper document structure, without affecting visual styling.                                                                                                                                                                                                                                             |1 &#124; 2 &#124; 3 &#124; 4 &#124; 5 &#124; 6                                                                                     |undefined  |
#' |kind                 |kind                   |Specifies the kind of the component, which will style the top border.                                                                                                                                                                                                                                                                                               |"brand" &#124; "danger" &#124; "info" &#124; "success" &#124; "warning"                                                            |undefined  |
#' |loading              |loading                |When true, a busy indicator is displayed.                                                                                                                                                                                                                                                                                                                           |boolean                                                                                                                            |false      |
#' |menuOpen             |menu-open              |When true, the action menu items in the header-menu-actions slot are open.                                                                                                                                                                                                                                                                                          |boolean                                                                                                                            |false      |
#' |messageOverrides     |message-overrides      |Use this property to override individual strings used by the component.                                                                                                                                                                                                                                                                                             |DialogMessages                                                                                                                     |undefined  |
#' |modal                |modal                  |When true, displays a scrim blocking interaction underneath the component.                                                                                                                                                                                                                                                                                          |boolean                                                                                                                            |false      |
#' |open                 |open                   |When true, displays and positions the component.                                                                                                                                                                                                                                                                                                                    |boolean                                                                                                                            |false      |
#' |outsideCloseDisabled |outside-close-disabled |When true, disables the closing of the component when clicked outside.                                                                                                                                                                                                                                                                                              |boolean                                                                                                                            |false      |
#' |overlayPositioning   |overlay-positioning    |Determines the type of positioning to use for the overlaid content. Using "absolute" will work for most cases. The component will be positioned inside of overflowing parent containers and will affect the container’s layout. "fixed" should be used to escape an overflowing parent container, or when the reference element’s position CSS property is "fixed". |"absolute" &#124; "fixed"                                                                                                          |"absolute" |
#' |placement            |placement              |Specifies the placement of the dialog.                                                                                                                                                                                                                                                                                                                              |"bottom" &#124; "bottom-end" &#124; "bottom-start" &#124; "center" &#124; "cover" &#124; "top" &#124; "top-end" &#124; "top-start" |"center"   |
#' |resizable            |resizable              |When true, the component is resizable.                                                                                                                                                                                                                                                                                                                              |boolean                                                                                                                            |false      |
#' |scale                |scale                  |Specifies the size of the component.                                                                                                                                                                                                                                                                                                                                |"l" &#124; "m" &#124; "s"                                                                                                          |"m"        |
#' |widthScale           |width-scale            |Specifies the width of the component.                                                                                                                                                                                                                                                                                                                               |"l" &#124; "m" &#124; "s"                                                                                                          |"m"        |
#' 
#' ## Events
#' |Event                    |Description                                                                                              |Type              |
#' |:------------------------|:--------------------------------------------------------------------------------------------------------|:-----------------|
#' |calciteDialogBeforeClose |Fires when the component is requested to be closed and before the closing transition begins.             |CustomEvent<void> |
#' |calciteDialogBeforeOpen  |Fires when the component is added to the DOM but not rendered, and before the opening transition begins. |CustomEvent<void> |
#' |calciteDialogClose       |Fires when the component is closed and animation is complete.                                            |CustomEvent<void> |
#' |calciteDialogOpen        |Fires when the component is open and animation is complete.                                              |CustomEvent<void> |
#' |calciteDialogScroll      |Fires when the content is scrolled.                                                                      |CustomEvent<void> |
#' 
#' ## Slots
#' |Slot                   |Description                                                                                                                   |
#' |:----------------------|:-----------------------------------------------------------------------------------------------------------------------------|
#' |                       |A slot for adding content.                                                                                                    |
#' |"action-bar"           |A slot for adding a calcite-action-bar to the component.                                                                      |
#' |"alerts"               |A slot for adding calcite-alerts to the component.                                                                            |
#' |"content"              |A slot for adding custom content.                                                                                             |
#' |"content-bottom"       |A slot for adding content below the unnamed (default) slot and - if populated - the footer slot.                              |
#' |"content-top"          |A slot for adding content above the unnamed (default) slot and - if populated - below the action-bar slot.                    |
#' |"fab"                  |A slot for adding a calcite-fab (floating action button) to perform an action.                                                |
#' |"footer"               |A slot for adding custom content to the component’s footer. Should not be used with the "footer-start" or "footer-end" slots. |
#' |"footer-end"           |A slot for adding a trailing footer custom content. Should not be used with the "footer" slot.                                |
#' |"footer-start"         |A slot for adding a leading footer custom content. Should not be used with the "footer" slot.                                 |
#' |"header-actions-end"   |A slot for adding actions or content to the ending side of the component’s header.                                            |
#' |"header-actions-start" |A slot for adding actions or content to the starting side of the component’s header.                                          |
#' |"header-content"       |A slot for adding custom content to the component’s header.                                                                   |
#' |"header-menu-actions"  |A slot for adding an overflow menu with actions inside a calcite-dropdown.                                                    |
#' 
#'
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
#' @section Component Details:
#'
#' The below tables illustrate the properties, attributes, and optionally the
#' slots, events, and methods associated with this component.
#'
#' Each attribute can be set by passing it in via `...` as a named value e.g. `"icon-start" = "snow"`.
#'
#' Each event is subscribed to by shiny. The component properties are updated
#' on each of the events.
#'
#' ## Properties
#' |Property      |Attribute      |Description                                                                                                                                                                     |Type                                     |Default   |
#' |:-------------|:--------------|:-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|:----------------------------------------|:---------|
#' |groupTitle    |group-title    |Specifies and displays a group title.                                                                                                                                           |string                                   |undefined |
#' |selectionMode |selection-mode |Specifies the selection mode of the component, where: "multiple" allows any number of selections, "single" allows only one selection, and "none" does not allow any selections. |"multiple" &#124; "none" &#124; "single" |"single"  |
#' 
#' ## Slots
#' |Slot |Description                               |
#' |:----|:-----------------------------------------|
#' |NA   |A slot for adding calcite-dropdown-items. |
#' 
#'
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
#' @section Component Details:
#'
#' The below tables illustrate the properties, attributes, and optionally the
#' slots, events, and methods associated with this component.
#'
#' Each attribute can be set by passing it in via `...` as a named value e.g. `"icon-start" = "snow"`.
#'
#' Each event is subscribed to by shiny. The component properties are updated
#' on each of the events.
#'
#' ## Properties
#' |Property    |Attribute     |Description                                                                                                                                       |Type                               |Default   |
#' |:-----------|:-------------|:-------------------------------------------------------------------------------------------------------------------------------------------------|:----------------------------------|:---------|
#' |disabled    |disabled      |When true, interaction is prevented and the component is displayed with lower opacity.                                                            |boolean                            |false     |
#' |href        |href          |Specifies the URL of the linked resource, which can be set as an absolute or relative path. Determines if the component will render as an anchor. |string                             |undefined |
#' |iconEnd     |icon-end      |Specifies an icon to display at the end of the component.                                                                                         |string                             |undefined |
#' |iconFlipRtl |icon-flip-rtl |Displays the iconStart and/or iconEnd as flipped when the element direction is right-to-left ("rtl").                                             |"both" &#124; "end" &#124; "start" |undefined |
#' |iconStart   |icon-start    |Specifies an icon to display at the start of the component.                                                                                       |string                             |undefined |
#' |label       |label         |Accessible name for the component.                                                                                                                |string                             |undefined |
#' |rel         |rel           |Specifies the relationship to the linked document defined in href.                                                                                |string                             |undefined |
#' |selected    |selected      |When true, the component is selected.                                                                                                             |boolean                            |false     |
#' |target      |target        |Specifies the frame or window to open the linked document.                                                                                        |string                             |undefined |
#' 
#' ## Events
#' |Event                     |Description                           |Type              |
#' |:-------------------------|:-------------------------------------|:-----------------|
#' |calciteDropdownItemSelect |Fires when the component is selected. |CustomEvent<void> |
#' 
#' ## Slots
#' |Slot |Description             |
#' |:----|:-----------------------|
#' |NA   |A slot for adding text. |
#' 
#'
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
#' @section Component Details:
#'
#' The below tables illustrate the properties, attributes, and optionally the
#' slots, events, and methods associated with this component.
#'
#' Each attribute can be set by passing it in via `...` as a named value e.g. `"icon-start" = "snow"`.
#'
#' Each event is subscribed to by shiny. The component properties are updated
#' on each of the events.
#'
#' ## Properties
#' |Property              |Attribute                |Description                                                                                                                                                                                                                                                                                                                                                         |Type                                                                                                |Default              |
#' |:---------------------|:------------------------|:-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|:---------------------------------------------------------------------------------------------------|:--------------------|
#' |closeOnSelectDisabled |close-on-select-disabled |When true, the component will remain open after a selection is made. If the selectionMode of the selected calcite-dropdown-item’s containing calcite-dropdown-group is "none", the component will always close.                                                                                                                                                     |boolean                                                                                             |false                |
#' |disabled              |disabled                 |When true, interaction is prevented and the component is displayed with lower opacity.                                                                                                                                                                                                                                                                              |boolean                                                                                             |false                |
#' |flipPlacements        |–                        |Specifies the component’s fallback calcite-dropdown-item placement when it’s initial or specified placement has insufficient space available.                                                                                                                                                                                                                       |FlipPlacement[]                                                                                     |undefined            |
#' |maxItems              |max-items                |Specifies the maximum number of calcite-dropdown-items to display before showing a scroller. Value must be greater than 0, and does not include groupTitle’s from calcite-dropdown-group.                                                                                                                                                                           |number                                                                                              |0                    |
#' |open                  |open                     |When true, displays and positions the component.                                                                                                                                                                                                                                                                                                                    |boolean                                                                                             |false                |
#' |overlayPositioning    |overlay-positioning      |Determines the type of positioning to use for the overlaid content. Using "absolute" will work for most cases. The component will be positioned inside of overflowing parent containers and will affect the container’s layout. "fixed" should be used to escape an overflowing parent container, or when the reference element’s position CSS property is "fixed". |"absolute" &#124; "fixed"                                                                           |"absolute"           |
#' |placement             |placement                |Determines where the component will be positioned relative to the container element.                                                                                                                                                                                                                                                                                |"bottom" &#124; "bottom-end" &#124; "bottom-start" &#124; "top" &#124; "top-end" &#124; "top-start" |defaultMenuPlacement |
#' |scale                 |scale                    |Specifies the size of the component.                                                                                                                                                                                                                                                                                                                                |"l" &#124; "m" &#124; "s"                                                                           |"m"                  |
#' |selectedItems         |–                        |Specifies the component’s selected items.                                                                                                                                                                                                                                                                                                                           |HTMLCalciteDropdownItemElement[]                                                                    |[]                   |
#' |type                  |type                     |Specifies the action to open the component from the container element.                                                                                                                                                                                                                                                                                              |"click" &#124; "hover"                                                                              |"click"              |
#' |widthScale            |width-scale              |Specifies the width of the component.                                                                                                                                                                                                                                                                                                                               |"l" &#124; "m" &#124; "s"                                                                           |undefined            |
#' 
#' ## Events
#' |Event                      |Description                                                                                              |Type              |
#' |:--------------------------|:--------------------------------------------------------------------------------------------------------|:-----------------|
#' |calciteDropdownBeforeClose |Fires when the component is requested to be closed and before the closing transition begins.             |CustomEvent<void> |
#' |calciteDropdownBeforeOpen  |Fires when the component is added to the DOM but not rendered, and before the opening transition begins. |CustomEvent<void> |
#' |calciteDropdownClose       |Fires when the component is closed and animation is complete.                                            |CustomEvent<void> |
#' |calciteDropdownOpen        |Fires when the component is open and animation is complete.                                              |CustomEvent<void> |
#' |calciteDropdownSelect      |Fires when a calcite-dropdown-item’s selection changes.                                                  |CustomEvent<void> |
#' 
#' ## Slots
#' |Slot      |Description                                                                                                                                                           |
#' |:---------|:---------------------------------------------------------------------------------------------------------------------------------------------------------------------|
#' |          |A slot for adding calcite-dropdown-group elements. Every calcite-dropdown-item must have a parent calcite-dropdown-group, even if the groupTitle property is not set. |
#' |"trigger" |A slot for the element that triggers the calcite-dropdown.                                                                                                            |
#' 
#'
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
#' @section Component Details:
#'
#' The below tables illustrate the properties, attributes, and optionally the
#' slots, events, and methods associated with this component.
#'
#' Each attribute can be set by passing it in via `...` as a named value e.g. `"icon-start" = "snow"`.
#'
#' Each event is subscribed to by shiny. The component properties are updated
#' on each of the events.
#'
#' ## Properties
#' |Property    |Attribute     |Description                                                                              |Type                                                      |Default    |
#' |:-----------|:-------------|:----------------------------------------------------------------------------------------|:---------------------------------------------------------|:----------|
#' |appearance  |appearance    |Specifies the appearance style of the component.                                         |"outline-fill" &#124; "solid"                             |"solid"    |
#' |disabled    |disabled      |When true, interaction is prevented and the component is displayed with lower opacity.   |boolean                                                   |false      |
#' |icon        |icon          |Specifies an icon to display.                                                            |string                                                    |ICONS.plus |
#' |iconFlipRtl |icon-flip-rtl |When true, the icon will be flipped when the element direction is right-to-left ("rtl"). |boolean                                                   |false      |
#' |kind        |kind          |Specifies the kind of the component, which will apply to border and background.          |"brand" &#124; "danger" &#124; "inverse" &#124; "neutral" |"brand"    |
#' |label       |label         |Accessible name for the component.                                                       |string                                                    |undefined  |
#' |loading     |loading       |When true, a busy indicator is displayed.                                                |boolean                                                   |false      |
#' |scale       |scale         |Specifies the size of the component.                                                     |"l" &#124; "m" &#124; "s"                                 |"m"        |
#' |text        |text          |Specifies text to accompany the component’s icon.                                        |string                                                    |undefined  |
#' |textEnabled |text-enabled  |When true, displays the text value in the component.                                     |boolean                                                   |false      |
#' 
#'
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
#' @section Component Details:
#'
#' The below tables illustrate the properties, attributes, and optionally the
#' slots, events, and methods associated with this component.
#'
#' Each attribute can be set by passing it in via `...` as a named value e.g. `"icon-start" = "snow"`.
#'
#' Each event is subscribed to by shiny. The component properties are updated
#' on each of the events.
#'
#' ## Properties
#' |Property         |Attribute         |Description                                                                                                                                                                                                                                 |Type                      |Default   |
#' |:----------------|:-----------------|:-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|:-------------------------|:---------|
#' |disabled         |disabled          |When true, interaction is prevented and the component is displayed with lower opacity.                                                                                                                                                      |boolean                   |false     |
#' |filterProps      |–                 |Specifies the properties to match against when filtering. This will only apply when value is an object. If not set, all properties will be matched.                                                                                         |string[]                  |undefined |
#' |filteredItems    |–                 |The component’s resulting items after filtering.                                                                                                                                                                                            |object[]                  |[]        |
#' |items            |–                 |Defines the items to filter. The component uses the values as the starting point, and returns items that contain the string entered in the input, using a partial match and recursive search. This property is needed to conduct filtering. |object[]                  |[]        |
#' |messageOverrides |message-overrides |Use this property to override individual strings used by the component.                                                                                                                                                                     |FilterMessages            |undefined |
#' |placeholder      |placeholder       |Specifies placeholder text for the input element.                                                                                                                                                                                           |string                    |undefined |
#' |scale            |scale             |Specifies the size of the component.                                                                                                                                                                                                        |"l" &#124; "m" &#124; "s" |"m"       |
#' |value            |value             |The component’s value.                                                                                                                                                                                                                      |string                    |""        |
#' 
#' ## Events
#' |Event               |Description                         |Type              |
#' |:-------------------|:-----------------------------------|:-----------------|
#' |calciteFilterChange |Fires when the filter text changes. |CustomEvent<void> |
#' 
#'
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
#' @section Component Details:
#'
#' The below tables illustrate the properties, attributes, and optionally the
#' slots, events, and methods associated with this component.
#'
#' Each attribute can be set by passing it in via `...` as a named value e.g. `"icon-start" = "snow"`.
#'
#' Each event is subscribed to by shiny. The component properties are updated
#' on each of the events.
#'
#' ## Properties
#' |Property           |Attribute           |Description                                                                                                                                                                                                                                                                                                                                                         |Type                                           |Default    |
#' |:------------------|:-------------------|:-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|:----------------------------------------------|:----------|
#' |beforeBack         |–                   |When provided, the method will be called before it is removed from its parent calcite-flow.                                                                                                                                                                                                                                                                         |() => Promise<void>                            |undefined  |
#' |beforeClose        |–                   |Passes a function to run before the component closes.                                                                                                                                                                                                                                                                                                               |() => Promise<void>                            |undefined  |
#' |closable           |closable            |When true, displays a close button in the trailing side of the component’s header.                                                                                                                                                                                                                                                                                  |boolean                                        |false      |
#' |closed             |closed              |When true, the component will be hidden.                                                                                                                                                                                                                                                                                                                            |boolean                                        |false      |
#' |collapsed          |collapsed           |When true, hides the component’s content area.                                                                                                                                                                                                                                                                                                                      |boolean                                        |false      |
#' |collapsible        |collapsible         |When true, the component is collapsible.                                                                                                                                                                                                                                                                                                                            |boolean                                        |false      |
#' |description        |description         |A description for the component.                                                                                                                                                                                                                                                                                                                                    |string                                         |undefined  |
#' |disabled           |disabled            |When true, interaction is prevented and the component is displayed with lower opacity.                                                                                                                                                                                                                                                                              |boolean                                        |false      |
#' |heading            |heading             |The component header text.                                                                                                                                                                                                                                                                                                                                          |string                                         |undefined  |
#' |headingLevel       |heading-level       |Specifies the heading level of the component’s heading for proper document structure, without affecting visual styling.                                                                                                                                                                                                                                             |1 &#124; 2 &#124; 3 &#124; 4 &#124; 5 &#124; 6 |undefined  |
#' |loading            |loading             |When true, a busy indicator is displayed.                                                                                                                                                                                                                                                                                                                           |boolean                                        |false      |
#' |menuOpen           |menu-open           |When true, the action menu items in the header-menu-actions slot are open.                                                                                                                                                                                                                                                                                          |boolean                                        |false      |
#' |messageOverrides   |message-overrides   |Use this property to override individual strings used by the component.                                                                                                                                                                                                                                                                                             |FlowItemMessages                               |undefined  |
#' |overlayPositioning |overlay-positioning |Determines the type of positioning to use for the overlaid content. Using "absolute" will work for most cases. The component will be positioned inside of overflowing parent containers and will affect the container’s layout. "fixed" should be used to escape an overflowing parent container, or when the reference element’s position CSS property is "fixed". |"absolute" &#124; "fixed"                      |"absolute" |
#' |scale              |scale               |Specifies the size of the component.                                                                                                                                                                                                                                                                                                                                |"l" &#124; "m" &#124; "s"                      |"m"        |
#' 
#' ## Events
#' |Event                 |Description                                |Type              |
#' |:---------------------|:------------------------------------------|:-----------------|
#' |calciteFlowItemBack   |Fires when the back button is clicked.     |CustomEvent<void> |
#' |calciteFlowItemClose  |Fires when the close button is clicked.    |CustomEvent<void> |
#' |calciteFlowItemScroll |Fires when the content is scrolled.        |CustomEvent<void> |
#' |calciteFlowItemToggle |Fires when the collapse button is clicked. |CustomEvent<void> |
#' 
#' ## Slots
#' |Slot                   |Description                                                                                                                   |
#' |:----------------------|:-----------------------------------------------------------------------------------------------------------------------------|
#' |                       |A slot for adding custom content.                                                                                             |
#' |"action-bar"           |A slot for adding a calcite-action-bar to the component.                                                                      |
#' |"alerts"               |A slot for adding calcite-alerts to the component.                                                                            |
#' |"content-bottom"       |A slot for adding content below the unnamed (default) slot and above the footer slot (if populated)                           |
#' |"content-top"          |A slot for adding content above the unnamed (default) slot and below the action-bar slot (if populated).                      |
#' |"fab"                  |A slot for adding a calcite-fab (floating action button) to perform an action.                                                |
#' |"footer"               |A slot for adding custom content to the component’s footer. Should not be used with the "footer-start" or "footer-end" slots. |
#' |"footer-actions"       |[Deprecated] Use the "footer" slot instead. A slot for adding calcite-buttons to the component’s footer.                      |
#' |"footer-end"           |A slot for adding a trailing footer custom content. Should not be used with the "footer" slot.                                |
#' |"footer-start"         |A slot for adding a leading footer custom content. Should not be used with the "footer" slot.                                 |
#' |"header-actions-end"   |A slot for adding calcite-actions or content to the end side of the component’s header.                                       |
#' |"header-actions-start" |A slot for adding calcite-actions or content to the start side of the component’s header.                                     |
#' |"header-content"       |A slot for adding custom content to the component’s header.                                                                   |
#' |"header-menu-actions"  |A slot for adding an overflow menu with calcite-actions inside a calcite-dropdown.                                            |
#' 
#'
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
#' @section Component Details:
#'
#' The below tables illustrate the properties, attributes, and optionally the
#' slots, events, and methods associated with this component.
#'
#' Each attribute can be set by passing it in via `...` as a named value e.g. `"icon-start" = "snow"`.
#'
#' Each event is subscribed to by shiny. The component properties are updated
#' on each of the events.
#'
#' ## Slots
#' |Slot |Description                                                    |
#' |:----|:--------------------------------------------------------------|
#' |NA   |A slot for adding calcite-flow-item elements to the component. |
#' 
#'
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
#'
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
#' @section Component Details:
#'
#' The below tables illustrate the properties, attributes, and optionally the
#' slots, events, and methods associated with this component.
#'
#' Each attribute can be set by passing it in via `...` as a named value e.g. `"icon-start" = "snow"`.
#'
#' Each event is subscribed to by shiny. The component properties are updated
#' on each of the events.
#'
#' ## Properties
#' |Property       |Attribute     |Description                                                                                                                   |Type        |Default   |
#' |:--------------|:-------------|:-----------------------------------------------------------------------------------------------------------------------------|:-----------|:---------|
#' |colorStops     |–             |Array of values describing a single color stop ([offset, color, opacity]) These color stops should be sorted by offset value. |ColorStop[] |undefined |
#' |data           |–             |Array of tuples describing a single data point ([x, y]) These data points should be sorted by x-axis value.                   |Point[]     |[]        |
#' |highlightMax   |highlight-max |End of highlight color if highlighting range.                                                                                 |number      |undefined |
#' |highlightMin   |highlight-min |Start of highlight color if highlighting range.                                                                               |number      |undefined |
#' |max (required) |max           |Highest point of the range.                                                                                                   |number      |undefined |
#' |min (required) |min           |Lowest point of the range.                                                                                                    |number      |undefined |
#' 
#'
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
#' @section Component Details:
#'
#' The below tables illustrate the properties, attributes, and optionally the
#' slots, events, and methods associated with this component.
#'
#' Each attribute can be set by passing it in via `...` as a named value e.g. `"icon-start" = "snow"`.
#'
#' Each event is subscribed to by shiny. The component properties are updated
#' on each of the events.
#'
#' ## Properties
#' |Property         |Attribute         |Description                                                                            |Type           |Default   |
#' |:----------------|:-----------------|:--------------------------------------------------------------------------------------|:--------------|:---------|
#' |disabled         |disabled          |When true, interaction is prevented and the component is displayed with lower opacity. |boolean        |false     |
#' |dragHandle       |drag-handle       |Value for the button title attribute.                                                  |string         |undefined |
#' |messageOverrides |message-overrides |Use this property to override individual strings used by the component.                |HandleMessages |undefined |
#' |selected         |selected          |When true, the component is selected.                                                  |boolean        |false     |
#' 
#' ## Events
#' |Event               |Description                                                                |Type                     |
#' |:-------------------|:--------------------------------------------------------------------------|:------------------------|
#' |calciteHandleChange |Fires whenever the component is selected or unselected.                    |CustomEvent<void>        |
#' |calciteHandleNudge  |Fires when the handle is selected and the up or down arrow key is pressed. |CustomEvent<HandleNudge> |
#' 
#'
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
#' @section Component Details:
#'
#' The below tables illustrate the properties, attributes, and optionally the
#' slots, events, and methods associated with this component.
#'
#' Each attribute can be set by passing it in via `...` as a named value e.g. `"icon-start" = "snow"`.
#'
#' Each event is subscribed to by shiny. The component properties are updated
#' on each of the events.
#'
#' ## Properties
#' |Property  |Attribute  |Description                                                                                      |Type                      |Default   |
#' |:---------|:----------|:------------------------------------------------------------------------------------------------|:-------------------------|:---------|
#' |flipRtl   |flip-rtl   |When true, the icon will be flipped when the element direction is right-to-left ("rtl").         |boolean                   |false     |
#' |icon      |icon       |Displays a specific icon.                                                                        |string                    |null      |
#' |scale     |scale      |Specifies the size of the component.                                                             |"l" &#124; "m" &#124; "s" |"m"       |
#' |textLabel |text-label |Accessible name for the component. It is recommended to set this value if your icon is semantic. |string                    |undefined |
#' 
#'
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
#' @section Component Details:
#'
#' The below tables illustrate the properties, attributes, and optionally the
#' slots, events, and methods associated with this component.
#'
#' Each attribute can be set by passing it in via `...` as a named value e.g. `"icon-start" = "snow"`.
#'
#' Each event is subscribed to by shiny. The component properties are updated
#' on each of the events.
#'
#' ## Properties
#' |Property         |Attribute         |Description                                                                                                                                                  |Type                      |Default   |
#' |:----------------|:-----------------|:------------------------------------------------------------------------------------------------------------------------------------------------------------|:-------------------------|:---------|
#' |afterConfirm     |–                 |Specifies a callback to be executed prior to disabling editing via the controls. When provided, the component’s loading state will be handled automatically. |() => Promise<void>       |undefined |
#' |controls         |controls          |When true and editingEnabled is true, displays save and cancel controls on the component.                                                                    |boolean                   |false     |
#' |disabled         |disabled          |When true, interaction is prevented and the component is displayed with lower opacity.                                                                       |boolean                   |false     |
#' |editingEnabled   |editing-enabled   |When true, inline editing is enabled on the component.                                                                                                       |boolean                   |false     |
#' |loading          |loading           |When true, a busy indicator is displayed.                                                                                                                    |boolean                   |false     |
#' |messageOverrides |message-overrides |Use this property to override individual strings used by the component.                                                                                      |InlineEditableMessages    |undefined |
#' |scale            |scale             |Specifies the size of the component. Defaults to the scale of the wrapped calcite-input or the scale of the closest wrapping component with a set scale.     |"l" &#124; "m" &#124; "s" |undefined |
#' 
#' ## Events
#' |Event                            |Description                                                    |Type              |
#' |:--------------------------------|:--------------------------------------------------------------|:-----------------|
#' |calciteInlineEditableEditCancel  |Emits when the component’s “cancel editing” button is pressed. |CustomEvent<void> |
#' |calciteInlineEditableEditConfirm |Emits when the component’s “confirm edits” button is pressed.  |CustomEvent<void> |
#' 
#' ## Slots
#' |Slot |Description                        |
#' |:----|:----------------------------------|
#' |NA   |A slot for adding a calcite-input. |
#' 
#'
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
#' @section Component Details:
#'
#' The below tables illustrate the properties, attributes, and optionally the
#' slots, events, and methods associated with this component.
#'
#' Each attribute can be set by passing it in via `...` as a named value e.g. `"icon-start" = "snow"`.
#'
#' Each event is subscribed to by shiny. The component properties are updated
#' on each of the events.
#'
#' ## Properties
#' |Property                   |Attribute                    |Description                                                                                                                                                                                                                                                                                                                                                         |Type                                                                                                                                                                                                                                              |Default                                                                                                                                                                                                                                                                   |
#' |:--------------------------|:----------------------------|:-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|:-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|:-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
#' |disabled                   |disabled                     |When true, interaction is prevented and the component is displayed with lower opacity.                                                                                                                                                                                                                                                                              |boolean                                                                                                                                                                                                                                           |false                                                                                                                                                                                                                                                                     |
#' |flipPlacements             |–                            |Specifies the component’s fallback calcite-date-picker placement when it’s initial or specified placement has insufficient space available.                                                                                                                                                                                                                         |FlipPlacement[]                                                                                                                                                                                                                                   |undefined                                                                                                                                                                                                                                                                 |
#' |focusTrapDisabled          |focus-trap-disabled          |When true, prevents focus trapping.                                                                                                                                                                                                                                                                                                                                 |boolean                                                                                                                                                                                                                                           |false                                                                                                                                                                                                                                                                     |
#' |form                       |form                         |The id of the form that will be associated with the component. When not set, the component will be associated with its ancestor form element, if any.                                                                                                                                                                                                               |string                                                                                                                                                                                                                                            |undefined                                                                                                                                                                                                                                                                 |
#' |headingLevel               |heading-level                |Specifies the heading level of the component’s heading for proper document structure, without affecting visual styling.                                                                                                                                                                                                                                             |1 &#124; 2 &#124; 3 &#124; 4 &#124; 5 &#124; 6                                                                                                                                                                                                    |undefined                                                                                                                                                                                                                                                                 |
#' |layout                     |layout                       |Defines the layout of the component.                                                                                                                                                                                                                                                                                                                                |"horizontal" &#124; "vertical"                                                                                                                                                                                                                    |"horizontal"                                                                                                                                                                                                                                                              |
#' |max                        |max                          |Specifies the latest allowed date (“yyyy-mm-dd”).                                                                                                                                                                                                                                                                                                                   |string                                                                                                                                                                                                                                            |undefined                                                                                                                                                                                                                                                                 |
#' |maxAsDate                  |–                            |Specifies the latest allowed date as a full date object.                                                                                                                                                                                                                                                                                                            |Date                                                                                                                                                                                                                                              |undefined                                                                                                                                                                                                                                                                 |
#' |messageOverrides           |message-overrides            |Use this property to override individual strings used by the component.                                                                                                                                                                                                                                                                                             |any                                                                                                                                                                                                                                               |undefined                                                                                                                                                                                                                                                                 |
#' |min                        |min                          |Specifies the earliest allowed date (“yyyy-mm-dd”).                                                                                                                                                                                                                                                                                                                 |string                                                                                                                                                                                                                                            |undefined                                                                                                                                                                                                                                                                 |
#' |minAsDate                  |–                            |Specifies the earliest allowed date as a full date object.                                                                                                                                                                                                                                                                                                          |Date                                                                                                                                                                                                                                              |undefined                                                                                                                                                                                                                                                                 |
#' |monthStyle                 |month-style                  |Specifies the monthStyle used by the component.                                                                                                                                                                                                                                                                                                                     |"abbreviated" &#124; "wide"                                                                                                                                                                                                                       |"wide"                                                                                                                                                                                                                                                                    |
#' |name                       |name                         |Specifies the name of the component. Required to pass the component’s value on form submission.                                                                                                                                                                                                                                                                     |string                                                                                                                                                                                                                                            |undefined                                                                                                                                                                                                                                                                 |
#' |numberingSystem            |numbering-system             |Specifies the Unicode numeral system used by the component for localization. This property cannot be dynamically changed.                                                                                                                                                                                                                                           |"arab" &#124; "arabext" &#124; "latn"                                                                                                                                                                                                             |undefined                                                                                                                                                                                                                                                                 |
#' |open                       |open                         |When true, displays the calcite-date-picker component.                                                                                                                                                                                                                                                                                                              |boolean                                                                                                                                                                                                                                           |false                                                                                                                                                                                                                                                                     |
#' |overlayPositioning         |overlay-positioning          |Determines the type of positioning to use for the overlaid content. Using "absolute" will work for most cases. The component will be positioned inside of overflowing parent containers and will affect the container’s layout. "fixed" should be used to escape an overflowing parent container, or when the reference element’s position CSS property is "fixed". |"absolute" &#124; "fixed"                                                                                                                                                                                                                         |"absolute"                                                                                                                                                                                                                                                                |
#' |placement                  |placement                    |Specifies the placement of the calcite-date-picker relative to the component.                                                                                                                                                                                                                                                                                       |"bottom" &#124; "bottom-end" &#124; "bottom-start" &#124; "top" &#124; "top-end" &#124; "top-start"                                                                                                                                               |defaultMenuPlacement                                                                                                                                                                                                                                                      |
#' |proximitySelectionDisabled |proximity-selection-disabled |When true, disables the default behavior on the third click of narrowing or extending the range. Instead starts a new range.                                                                                                                                                                                                                                        |boolean                                                                                                                                                                                                                                           |false                                                                                                                                                                                                                                                                     |
#' |range                      |range                        |When true, activates a range for the component.                                                                                                                                                                                                                                                                                                                     |boolean                                                                                                                                                                                                                                           |false                                                                                                                                                                                                                                                                     |
#' |readOnly                   |read-only                    |When true, the component’s value can be read, but controls are not accessible and the value cannot be modified.                                                                                                                                                                                                                                                     |boolean                                                                                                                                                                                                                                           |false                                                                                                                                                                                                                                                                     |
#' |required                   |required                     |When true, the component must have a value in order for the form to submit.                                                                                                                                                                                                                                                                                         |boolean                                                                                                                                                                                                                                           |false                                                                                                                                                                                                                                                                     |
#' |scale                      |scale                        |Specifies the size of the component.                                                                                                                                                                                                                                                                                                                                |"l" &#124; "m" &#124; "s"                                                                                                                                                                                                                         |"m"                                                                                                                                                                                                                                                                       |
#' |status                     |status                       |Specifies the status of the input field, which determines message and icons.                                                                                                                                                                                                                                                                                        |"idle" &#124; "invalid" &#124; "valid"                                                                                                                                                                                                            |"idle"                                                                                                                                                                                                                                                                    |
#' |validationIcon             |validation-icon              |Specifies the validation icon to display under the component.                                                                                                                                                                                                                                                                                                       |boolean &#124; string                                                                                                                                                                                                                             |undefined                                                                                                                                                                                                                                                                 |
#' |validationMessage          |validation-message           |Specifies the validation message to display under the component.                                                                                                                                                                                                                                                                                                    |string                                                                                                                                                                                                                                            |undefined                                                                                                                                                                                                                                                                 |
#' |validity                   |–                            |The current validation state of the component.                                                                                                                                                                                                                                                                                                                      |{ valid: boolean; badInput: boolean; customError: boolean; patternMismatch: boolean; rangeOverflow: boolean; rangeUnderflow: boolean; stepMismatch: boolean; tooLong: boolean; tooShort: boolean; typeMismatch: boolean; valueMissing: boolean; } |{     valid: false,     badInput: false,     customError: false,     patternMismatch: false,     rangeOverflow: false,     rangeUnderflow: false,     stepMismatch: false,     tooLong: false,     tooShort: false,     typeMismatch: false,     valueMissing: false,   } |
#' |value                      |value                        |Selected date as a string in ISO format ("yyyy-mm-dd").                                                                                                                                                                                                                                                                                                             |string &#124; string[]                                                                                                                                                                                                                            |""                                                                                                                                                                                                                                                                        |
#' |valueAsDate                |–                            |The component’s value as a full date object.                                                                                                                                                                                                                                                                                                                        |Date &#124; Date[]                                                                                                                                                                                                                                |undefined                                                                                                                                                                                                                                                                 |
#' 
#' ## Events
#' |Event                             |Description                                                                                              |Type              |
#' |:---------------------------------|:--------------------------------------------------------------------------------------------------------|:-----------------|
#' |calciteInputDatePickerBeforeClose |Fires when the component is requested to be closed and before the closing transition begins.             |CustomEvent<void> |
#' |calciteInputDatePickerBeforeOpen  |Fires when the component is added to the DOM but not rendered, and before the opening transition begins. |CustomEvent<void> |
#' |calciteInputDatePickerChange      |Fires when the component’s value changes.                                                                |CustomEvent<void> |
#' |calciteInputDatePickerClose       |Fires when the component is closed and animation is complete.                                            |CustomEvent<void> |
#' |calciteInputDatePickerOpen        |Fires when the component is open and animation is complete.                                              |CustomEvent<void> |
#' 
#'
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
#' @section Component Details:
#'
#' The below tables illustrate the properties, attributes, and optionally the
#' slots, events, and methods associated with this component.
#'
#' Each attribute can be set by passing it in via `...` as a named value e.g. `"icon-start" = "snow"`.
#'
#' Each event is subscribed to by shiny. The component properties are updated
#' on each of the events.
#'
#' ## Properties
#' |Property    |Attribute     |Description                                                                              |Type                                   |Default   |
#' |:-----------|:-------------|:----------------------------------------------------------------------------------------|:--------------------------------------|:---------|
#' |icon        |icon          |Specifies an icon to display.                                                            |boolean &#124; string                  |undefined |
#' |iconFlipRtl |icon-flip-rtl |When true, the icon will be flipped when the element direction is right-to-left ("rtl"). |boolean                                |false     |
#' |scale       |scale         |Specifies the size of the component.                                                     |"l" &#124; "m" &#124; "s"              |"m"       |
#' |status      |status        |Specifies the status of the input field, which determines message and icons.             |"idle" &#124; "invalid" &#124; "valid" |"idle"    |
#' 
#' ## Slots
#' |Slot |Description             |
#' |:----|:-----------------------|
#' |NA   |A slot for adding text. |
#' 
#'
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
#' @section Component Details:
#'
#' The below tables illustrate the properties, attributes, and optionally the
#' slots, events, and methods associated with this component.
#'
#' Each attribute can be set by passing it in via `...` as a named value e.g. `"icon-start" = "snow"`.
#'
#' Each event is subscribed to by shiny. The component properties are updated
#' on each of the events.
#'
#' ## Properties
#' |Property          |Attribute          |Description                                                                                                                                           |Type                                                                                                                                                                                                                                              |Default                                                                                                                                                                                                                                                                   |
#' |:-----------------|:------------------|:-----------------------------------------------------------------------------------------------------------------------------------------------------|:-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|:-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
#' |alignment         |alignment          |Specifies the text alignment of the component’s value.                                                                                                |"end" &#124; "start"                                                                                                                                                                                                                              |"start"                                                                                                                                                                                                                                                                   |
#' |autocomplete      |autocomplete       |Specifies the type of content to autocomplete, for use in forms. Read the native attribute’s documentation on MDN for more info.                      |string                                                                                                                                                                                                                                            |undefined                                                                                                                                                                                                                                                                 |
#' |autofocus         |autofocus          |Adds global prop, missing from Stencil’s HTMLElement type, see https://github.com/ionic-team/stencil/issues/5726                                      |boolean                                                                                                                                                                                                                                           |undefined                                                                                                                                                                                                                                                                 |
#' |clearable         |clearable          |When true, a clear button is displayed when the component has a value.                                                                                |boolean                                                                                                                                                                                                                                           |false                                                                                                                                                                                                                                                                     |
#' |disabled          |disabled           |When true, interaction is prevented and the component is displayed with lower opacity.                                                                |boolean                                                                                                                                                                                                                                           |false                                                                                                                                                                                                                                                                     |
#' |form              |form               |The id of the form that will be associated with the component. When not set, the component will be associated with its ancestor form element, if any. |string                                                                                                                                                                                                                                            |undefined                                                                                                                                                                                                                                                                 |
#' |groupSeparator    |group-separator    |When true, number values are displayed with a group separator corresponding to the language and country format.                                       |boolean                                                                                                                                                                                                                                           |false                                                                                                                                                                                                                                                                     |
#' |icon              |icon               |Specifies an icon to display.                                                                                                                         |boolean &#124; string                                                                                                                                                                                                                             |undefined                                                                                                                                                                                                                                                                 |
#' |iconFlipRtl       |icon-flip-rtl      |When true, the icon will be flipped when the element direction is right-to-left ("rtl").                                                              |boolean                                                                                                                                                                                                                                           |false                                                                                                                                                                                                                                                                     |
#' |integer           |integer            |When true, restricts the component to integer numbers only and disables exponential notation.                                                         |boolean                                                                                                                                                                                                                                           |false                                                                                                                                                                                                                                                                     |
#' |label             |label              |Accessible name for the component’s button or hyperlink.                                                                                              |string                                                                                                                                                                                                                                            |undefined                                                                                                                                                                                                                                                                 |
#' |loading           |loading            |When true, the component is in the loading state and calcite-progress is displayed.                                                                   |boolean                                                                                                                                                                                                                                           |false                                                                                                                                                                                                                                                                     |
#' |max               |max                |Specifies the maximum value.                                                                                                                          |number                                                                                                                                                                                                                                            |undefined                                                                                                                                                                                                                                                                 |
#' |maxLength         |max-length         |[DEPRECATED] This property has no effect on the component.Specifies the maximum length of text for the component’s value.                             |number                                                                                                                                                                                                                                            |undefined                                                                                                                                                                                                                                                                 |
#' |messageOverrides  |message-overrides  |Use this property to override individual strings used by the component.                                                                               |InputNumberMessages                                                                                                                                                                                                                               |undefined                                                                                                                                                                                                                                                                 |
#' |min               |min                |Specifies the minimum value.                                                                                                                          |number                                                                                                                                                                                                                                            |undefined                                                                                                                                                                                                                                                                 |
#' |minLength         |min-length         |[DEPRECATED] This property has no effect on the component.Specifies the minimum length of text for the component’s value.                             |number                                                                                                                                                                                                                                            |undefined                                                                                                                                                                                                                                                                 |
#' |name              |name               |Specifies the name of the component. Required to pass the component’s value on form submission.                                                       |string                                                                                                                                                                                                                                            |undefined                                                                                                                                                                                                                                                                 |
#' |numberButtonType  |number-button-type |Specifies the placement of the buttons.                                                                                                               |"horizontal" &#124; "none" &#124; "vertical"                                                                                                                                                                                                      |"vertical"                                                                                                                                                                                                                                                                |
#' |numberingSystem   |numbering-system   |Specifies the Unicode numeral system used by the component for localization.                                                                          |"arab" &#124; "arabext" &#124; "latn"                                                                                                                                                                                                             |undefined                                                                                                                                                                                                                                                                 |
#' |placeholder       |placeholder        |Specifies placeholder text for the component.                                                                                                         |string                                                                                                                                                                                                                                            |undefined                                                                                                                                                                                                                                                                 |
#' |prefixText        |prefix-text        |Adds text to the start of the component.                                                                                                              |string                                                                                                                                                                                                                                            |undefined                                                                                                                                                                                                                                                                 |
#' |readOnly          |read-only          |When true, the component’s value can be read, but cannot be modified.                                                                                 |boolean                                                                                                                                                                                                                                           |false                                                                                                                                                                                                                                                                     |
#' |required          |required           |When true, the component must have a value in order for the form to submit.                                                                           |boolean                                                                                                                                                                                                                                           |false                                                                                                                                                                                                                                                                     |
#' |scale             |scale              |Specifies the size of the component.                                                                                                                  |"l" &#124; "m" &#124; "s"                                                                                                                                                                                                                         |"m"                                                                                                                                                                                                                                                                       |
#' |status            |status             |Specifies the status of the input field, which determines message and icons.                                                                          |"idle" &#124; "invalid" &#124; "valid"                                                                                                                                                                                                            |"idle"                                                                                                                                                                                                                                                                    |
#' |step              |step               |Specifies the granularity that the component’s value must adhere to.                                                                                  |"any" &#124; number                                                                                                                                                                                                                               |undefined                                                                                                                                                                                                                                                                 |
#' |suffixText        |suffix-text        |Adds text to the end of the component.                                                                                                                |string                                                                                                                                                                                                                                            |undefined                                                                                                                                                                                                                                                                 |
#' |validationIcon    |validation-icon    |Specifies the validation icon to display under the component.                                                                                         |boolean &#124; string                                                                                                                                                                                                                             |undefined                                                                                                                                                                                                                                                                 |
#' |validationMessage |validation-message |Specifies the validation message to display under the component.                                                                                      |string                                                                                                                                                                                                                                            |undefined                                                                                                                                                                                                                                                                 |
#' |validity          |–                  |The current validation state of the component.                                                                                                        |{ valid: boolean; badInput: boolean; customError: boolean; patternMismatch: boolean; rangeOverflow: boolean; rangeUnderflow: boolean; stepMismatch: boolean; tooLong: boolean; tooShort: boolean; typeMismatch: boolean; valueMissing: boolean; } |{     valid: false,     badInput: false,     customError: false,     patternMismatch: false,     rangeOverflow: false,     rangeUnderflow: false,     stepMismatch: false,     tooLong: false,     tooShort: false,     typeMismatch: false,     valueMissing: false,   } |
#' |value             |value              |The component’s value.                                                                                                                                |string                                                                                                                                                                                                                                            |""                                                                                                                                                                                                                                                                        |
#' 
#' ## Events
#' |Event                    |Description                                         |Type              |
#' |:------------------------|:---------------------------------------------------|:-----------------|
#' |calciteInputNumberChange |Fires each time a new value is typed and committed. |CustomEvent<void> |
#' |calciteInputNumberInput  |Fires each time a new value is typed.               |CustomEvent<void> |
#' 
#' ## Slots
#' |Slot     |Description                                            |
#' |:--------|:------------------------------------------------------|
#' |"action" |A slot for positioning a button next to the component. |
#' 
#'
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
#' @section Component Details:
#'
#' The below tables illustrate the properties, attributes, and optionally the
#' slots, events, and methods associated with this component.
#'
#' Each attribute can be set by passing it in via `...` as a named value e.g. `"icon-start" = "snow"`.
#'
#' Each event is subscribed to by shiny. The component properties are updated
#' on each of the events.
#'
#' ## Properties
#' |Property          |Attribute          |Description                                                                                                                                           |Type                                                                                                                                                                                                                                              |Default                                                                                                                                                                                                                                                                   |
#' |:-----------------|:------------------|:-----------------------------------------------------------------------------------------------------------------------------------------------------|:-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|:-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
#' |alignment         |alignment          |Specifies the text alignment of the component’s value.                                                                                                |"end" &#124; "start"                                                                                                                                                                                                                              |"start"                                                                                                                                                                                                                                                                   |
#' |autocomplete      |autocomplete       |Specifies the type of content to autocomplete, for use in forms. Read the native attribute’s documentation on MDN for more info.                      |string                                                                                                                                                                                                                                            |undefined                                                                                                                                                                                                                                                                 |
#' |autofocus         |autofocus          |Adds global prop, missing from Stencil’s HTMLElement type, see https://github.com/ionic-team/stencil/issues/5726                                      |boolean                                                                                                                                                                                                                                           |undefined                                                                                                                                                                                                                                                                 |
#' |clearable         |clearable          |When true, a clear button is displayed when the component has a value.                                                                                |boolean                                                                                                                                                                                                                                           |false                                                                                                                                                                                                                                                                     |
#' |disabled          |disabled           |When true, interaction is prevented and the component is displayed with lower opacity.                                                                |boolean                                                                                                                                                                                                                                           |false                                                                                                                                                                                                                                                                     |
#' |form              |form               |The id of the form that will be associated with the component. When not set, the component will be associated with its ancestor form element, if any. |string                                                                                                                                                                                                                                            |undefined                                                                                                                                                                                                                                                                 |
#' |icon              |icon               |Specifies an icon to display.                                                                                                                         |boolean &#124; string                                                                                                                                                                                                                             |undefined                                                                                                                                                                                                                                                                 |
#' |iconFlipRtl       |icon-flip-rtl      |When true, the icon will be flipped when the element direction is right-to-left ("rtl").                                                              |boolean                                                                                                                                                                                                                                           |false                                                                                                                                                                                                                                                                     |
#' |label             |label              |Accessible name for the component’s button or hyperlink.                                                                                              |string                                                                                                                                                                                                                                            |undefined                                                                                                                                                                                                                                                                 |
#' |loading           |loading            |When true, the component is in the loading state and calcite-progress is displayed.                                                                   |boolean                                                                                                                                                                                                                                           |false                                                                                                                                                                                                                                                                     |
#' |maxLength         |max-length         |Specifies the maximum length of text for the component’s value.                                                                                       |number                                                                                                                                                                                                                                            |undefined                                                                                                                                                                                                                                                                 |
#' |messageOverrides  |message-overrides  |Use this property to override individual strings used by the component.                                                                               |InputTextMessages                                                                                                                                                                                                                                 |undefined                                                                                                                                                                                                                                                                 |
#' |minLength         |min-length         |Specifies the minimum length of text for the component’s value.                                                                                       |number                                                                                                                                                                                                                                            |undefined                                                                                                                                                                                                                                                                 |
#' |name              |name               |Specifies the name of the component. Required to pass the component’s value on form submission.                                                       |string                                                                                                                                                                                                                                            |undefined                                                                                                                                                                                                                                                                 |
#' |pattern           |pattern            |Specifies a regex pattern the component’s value must match for validation. Read the native attribute’s documentation on MDN for more info.            |string                                                                                                                                                                                                                                            |undefined                                                                                                                                                                                                                                                                 |
#' |placeholder       |placeholder        |Specifies placeholder text for the component.                                                                                                         |string                                                                                                                                                                                                                                            |undefined                                                                                                                                                                                                                                                                 |
#' |prefixText        |prefix-text        |Adds text to the start of the component.                                                                                                              |string                                                                                                                                                                                                                                            |undefined                                                                                                                                                                                                                                                                 |
#' |readOnly          |read-only          |When true, the component’s value can be read, but cannot be modified.                                                                                 |boolean                                                                                                                                                                                                                                           |false                                                                                                                                                                                                                                                                     |
#' |required          |required           |When true, the component must have a value in order for the form to submit.                                                                           |boolean                                                                                                                                                                                                                                           |false                                                                                                                                                                                                                                                                     |
#' |scale             |scale              |Specifies the size of the component.                                                                                                                  |"l" &#124; "m" &#124; "s"                                                                                                                                                                                                                         |"m"                                                                                                                                                                                                                                                                       |
#' |status            |status             |Specifies the status of the input field, which determines message and icons.                                                                          |"idle" &#124; "invalid" &#124; "valid"                                                                                                                                                                                                            |"idle"                                                                                                                                                                                                                                                                    |
#' |suffixText        |suffix-text        |Adds text to the end of the component.                                                                                                                |string                                                                                                                                                                                                                                            |undefined                                                                                                                                                                                                                                                                 |
#' |validationIcon    |validation-icon    |Specifies the validation icon to display under the component.                                                                                         |boolean &#124; string                                                                                                                                                                                                                             |undefined                                                                                                                                                                                                                                                                 |
#' |validationMessage |validation-message |Specifies the validation message to display under the component.                                                                                      |string                                                                                                                                                                                                                                            |undefined                                                                                                                                                                                                                                                                 |
#' |validity          |–                  |The current validation state of the component.                                                                                                        |{ valid: boolean; badInput: boolean; customError: boolean; patternMismatch: boolean; rangeOverflow: boolean; rangeUnderflow: boolean; stepMismatch: boolean; tooLong: boolean; tooShort: boolean; typeMismatch: boolean; valueMissing: boolean; } |{     valid: false,     badInput: false,     customError: false,     patternMismatch: false,     rangeOverflow: false,     rangeUnderflow: false,     stepMismatch: false,     tooLong: false,     tooShort: false,     typeMismatch: false,     valueMissing: false,   } |
#' |value             |value              |The component’s value.                                                                                                                                |string                                                                                                                                                                                                                                            |""                                                                                                                                                                                                                                                                        |
#' 
#' ## Events
#' |Event                  |Description                                         |Type              |
#' |:----------------------|:---------------------------------------------------|:-----------------|
#' |calciteInputTextChange |Fires each time a new value is typed and committed. |CustomEvent<void> |
#' |calciteInputTextInput  |Fires each time a new value is typed.               |CustomEvent<void> |
#' 
#' ## Slots
#' |Slot     |Description                                            |
#' |:--------|:------------------------------------------------------|
#' |"action" |A slot for positioning a button next to the component. |
#' 
#'
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
#' @section Component Details:
#'
#' The below tables illustrate the properties, attributes, and optionally the
#' slots, events, and methods associated with this component.
#'
#' Each attribute can be set by passing it in via `...` as a named value e.g. `"icon-start" = "snow"`.
#'
#' Each event is subscribed to by shiny. The component properties are updated
#' on each of the events.
#'
#' ## Properties
#' |Property           |Attribute           |Description                                                                                                                                                                                                                                                                                                                                                         |Type                                                                                                                                                                                                                                                                                                                                                                                            |Default                                                                                                                                                                                                                                                                   |
#' |:------------------|:-------------------|:-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|:-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|:-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
#' |disabled           |disabled            |When true, interaction is prevented and the component is displayed with lower opacity.                                                                                                                                                                                                                                                                              |boolean                                                                                                                                                                                                                                                                                                                                                                                         |false                                                                                                                                                                                                                                                                     |
#' |focusTrapDisabled  |focus-trap-disabled |When true, prevents focus trapping.                                                                                                                                                                                                                                                                                                                                 |boolean                                                                                                                                                                                                                                                                                                                                                                                         |false                                                                                                                                                                                                                                                                     |
#' |form               |form                |The id of the form that will be associated with the component. When not set, the component will be associated with its ancestor form element, if any.                                                                                                                                                                                                               |string                                                                                                                                                                                                                                                                                                                                                                                          |undefined                                                                                                                                                                                                                                                                 |
#' |max                |max                 |Specifies the maximum value.                                                                                                                                                                                                                                                                                                                                        |string                                                                                                                                                                                                                                                                                                                                                                                          |undefined                                                                                                                                                                                                                                                                 |
#' |messageOverrides   |message-overrides   |Use this property to override individual strings used by the component.                                                                                                                                                                                                                                                                                             |any                                                                                                                                                                                                                                                                                                                                                                                             |undefined                                                                                                                                                                                                                                                                 |
#' |min                |min                 |Specifies the minimum value.                                                                                                                                                                                                                                                                                                                                        |string                                                                                                                                                                                                                                                                                                                                                                                          |undefined                                                                                                                                                                                                                                                                 |
#' |name               |name                |Specifies the name of the component on form submission.                                                                                                                                                                                                                                                                                                             |string                                                                                                                                                                                                                                                                                                                                                                                          |undefined                                                                                                                                                                                                                                                                 |
#' |numberingSystem    |numbering-system    |Specifies the Unicode numeral system used by the component for localization.                                                                                                                                                                                                                                                                                        |"arab" &#124; "arabext" &#124; "latn"                                                                                                                                                                                                                                                                                                                                                           |undefined                                                                                                                                                                                                                                                                 |
#' |open               |open                |When true, displays the calcite-time-picker component.                                                                                                                                                                                                                                                                                                              |boolean                                                                                                                                                                                                                                                                                                                                                                                         |false                                                                                                                                                                                                                                                                     |
#' |overlayPositioning |overlay-positioning |Determines the type of positioning to use for the overlaid content. Using "absolute" will work for most cases. The component will be positioned inside of overflowing parent containers and will affect the container’s layout. "fixed" should be used to escape an overflowing parent container, or when the reference element’s position CSS property is "fixed". |"absolute" &#124; "fixed"                                                                                                                                                                                                                                                                                                                                                                       |"absolute"                                                                                                                                                                                                                                                                |
#' |placement          |placement           |Determines where the popover will be positioned relative to the input.                                                                                                                                                                                                                                                                                              |"auto" &#124; "top" &#124; "bottom" &#124; "right" &#124; "left" &#124; "top-start" &#124; "top-end" &#124; "bottom-start" &#124; "bottom-end" &#124; "right-start" &#124; "right-end" &#124; "left-start" &#124; "left-end" &#124; "leading" &#124; "trailing" &#124; "auto-start" &#124; "auto-end" &#124; "leading-start" &#124; "leading-end" &#124; "trailing-end" &#124; "trailing-start" |"auto"                                                                                                                                                                                                                                                                    |
#' |readOnly           |read-only           |When true, the component’s value can be read, but controls are not accessible and the value cannot be modified.                                                                                                                                                                                                                                                     |boolean                                                                                                                                                                                                                                                                                                                                                                                         |false                                                                                                                                                                                                                                                                     |
#' |required           |required            |When true, the component must have a value in order for the form to submit.                                                                                                                                                                                                                                                                                         |boolean                                                                                                                                                                                                                                                                                                                                                                                         |false                                                                                                                                                                                                                                                                     |
#' |scale              |scale               |Specifies the size of the component.                                                                                                                                                                                                                                                                                                                                |"l" &#124; "m" &#124; "s"                                                                                                                                                                                                                                                                                                                                                                       |"m"                                                                                                                                                                                                                                                                       |
#' |status             |status              |Specifies the status of the input field, which determines message and icons.                                                                                                                                                                                                                                                                                        |"idle" &#124; "invalid" &#124; "valid"                                                                                                                                                                                                                                                                                                                                                          |"idle"                                                                                                                                                                                                                                                                    |
#' |step               |step                |Specifies the granularity the component’s value must adhere to (in seconds).                                                                                                                                                                                                                                                                                        |number                                                                                                                                                                                                                                                                                                                                                                                          |60                                                                                                                                                                                                                                                                        |
#' |validationIcon     |validation-icon     |Specifies the validation icon to display under the component.                                                                                                                                                                                                                                                                                                       |boolean &#124; string                                                                                                                                                                                                                                                                                                                                                                           |undefined                                                                                                                                                                                                                                                                 |
#' |validationMessage  |validation-message  |Specifies the validation message to display under the component.                                                                                                                                                                                                                                                                                                    |string                                                                                                                                                                                                                                                                                                                                                                                          |undefined                                                                                                                                                                                                                                                                 |
#' |validity           |–                   |The current validation state of the component.                                                                                                                                                                                                                                                                                                                      |{ valid: boolean; badInput: boolean; customError: boolean; patternMismatch: boolean; rangeOverflow: boolean; rangeUnderflow: boolean; stepMismatch: boolean; tooLong: boolean; tooShort: boolean; typeMismatch: boolean; valueMissing: boolean; }                                                                                                                                               |{     valid: false,     badInput: false,     customError: false,     patternMismatch: false,     rangeOverflow: false,     rangeUnderflow: false,     stepMismatch: false,     tooLong: false,     tooShort: false,     typeMismatch: false,     valueMissing: false,   } |
#' |value              |value               |The time value in ISO (24-hour) format.                                                                                                                                                                                                                                                                                                                             |string                                                                                                                                                                                                                                                                                                                                                                                          |null                                                                                                                                                                                                                                                                      |
#' 
#' ## Events
#' |Event                             |Description                                                                                              |Type              |
#' |:---------------------------------|:--------------------------------------------------------------------------------------------------------|:-----------------|
#' |calciteInputTimePickerBeforeClose |Fires when the component is requested to be closed and before the closing transition begins.             |CustomEvent<void> |
#' |calciteInputTimePickerBeforeOpen  |Fires when the component is added to the DOM but not rendered, and before the opening transition begins. |CustomEvent<void> |
#' |calciteInputTimePickerChange      |Fires when the component’s value is changes.                                                             |CustomEvent<void> |
#' |calciteInputTimePickerClose       |Fires when the component is closed and animation is complete.                                            |CustomEvent<void> |
#' |calciteInputTimePickerOpen        |Fires when the component is open and animation is complete.                                              |CustomEvent<void> |
#' 
#'
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
#' @section Component Details:
#'
#' The below tables illustrate the properties, attributes, and optionally the
#' slots, events, and methods associated with this component.
#'
#' Each attribute can be set by passing it in via `...` as a named value e.g. `"icon-start" = "snow"`.
#'
#' Each event is subscribed to by shiny. The component properties are updated
#' on each of the events.
#'
#' ## Properties
#' |Property           |Attribute           |Description                                                                                                                                                                                                                                                                                                                                                         |Type                                                                                                                                                                                                                                              |Default                                                                                                                                                                                                                                                                   |
#' |:------------------|:-------------------|:-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|:-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|:-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
#' |clearable          |clearable           |When true, an empty value (null) will be allowed as a value. When false, an offset or name value is enforced, and clearing the input or blurring will restore the last valid value.                                                                                                                                                                                 |boolean                                                                                                                                                                                                                                           |false                                                                                                                                                                                                                                                                     |
#' |disabled           |disabled            |When true, interaction is prevented and the component is displayed with lower opacity.                                                                                                                                                                                                                                                                              |boolean                                                                                                                                                                                                                                           |false                                                                                                                                                                                                                                                                     |
#' |form               |form                |The id of the form that will be associated with the component. When not set, the component will be associated with its ancestor form element, if any.                                                                                                                                                                                                               |string                                                                                                                                                                                                                                            |undefined                                                                                                                                                                                                                                                                 |
#' |maxItems           |max-items           |Specifies the component’s maximum number of options to display before displaying a scrollbar.                                                                                                                                                                                                                                                                       |number                                                                                                                                                                                                                                            |0                                                                                                                                                                                                                                                                         |
#' |messageOverrides   |message-overrides   |Use this property to override individual strings used by the component.                                                                                                                                                                                                                                                                                             |InputTimeZoneMessages                                                                                                                                                                                                                             |undefined                                                                                                                                                                                                                                                                 |
#' |mode               |mode                |This specifies the type of value and the associated options presented to the user: Using "offset" will provide options that show timezone offsets. Using "name" will provide options that show the IANA time zone names.                                                                                                                                            |"name" &#124; "offset" &#124; "region"                                                                                                                                                                                                            |"offset"                                                                                                                                                                                                                                                                  |
#' |name               |name                |Specifies the name of the component. Required to pass the component’s value on form submission.                                                                                                                                                                                                                                                                     |string                                                                                                                                                                                                                                            |undefined                                                                                                                                                                                                                                                                 |
#' |offsetStyle        |offset-style        |Specifies how the offset will be displayed, where "user" uses UTC or GMT depending on the user’s locale, "gmt" always uses GMT, and "utc" always uses UTC. This only applies to the offset mode.                                                                                                                                                                    |"gmt" &#124; "user" &#124; "utc"                                                                                                                                                                                                                  |"user"                                                                                                                                                                                                                                                                    |
#' |open               |open                |When true, displays and positions the component.                                                                                                                                                                                                                                                                                                                    |boolean                                                                                                                                                                                                                                           |false                                                                                                                                                                                                                                                                     |
#' |overlayPositioning |overlay-positioning |Determines the type of positioning to use for the overlaid content. Using "absolute" will work for most cases. The component will be positioned inside of overflowing parent containers and will affect the container’s layout. "fixed" should be used to escape an overflowing parent container, or when the reference element’s position CSS property is "fixed". |"absolute" &#124; "fixed"                                                                                                                                                                                                                         |"absolute"                                                                                                                                                                                                                                                                |
#' |readOnly           |read-only           |When true, the component’s value can be read, but controls are not accessible and the value cannot be modified.                                                                                                                                                                                                                                                     |boolean                                                                                                                                                                                                                                           |false                                                                                                                                                                                                                                                                     |
#' |referenceDate      |reference-date      |This date will be used as a reference to Daylight Savings Time when creating time zone item groups. It can be either a Date instance or a string in ISO format ("YYYY-MM-DD", "YYYY-MM-DDTHH:MM:SS.SSSZ").                                                                                                                                                          |Date &#124; string                                                                                                                                                                                                                                |undefined                                                                                                                                                                                                                                                                 |
#' |scale              |scale               |Specifies the size of the component.                                                                                                                                                                                                                                                                                                                                |"l" &#124; "m" &#124; "s"                                                                                                                                                                                                                         |"m"                                                                                                                                                                                                                                                                       |
#' |status             |status              |Specifies the status of the input field, which determines message and icons.                                                                                                                                                                                                                                                                                        |"idle" &#124; "invalid" &#124; "valid"                                                                                                                                                                                                            |"idle"                                                                                                                                                                                                                                                                    |
#' |validationIcon     |validation-icon     |Specifies the validation icon to display under the component.                                                                                                                                                                                                                                                                                                       |boolean &#124; string                                                                                                                                                                                                                             |undefined                                                                                                                                                                                                                                                                 |
#' |validationMessage  |validation-message  |Specifies the validation message to display under the component.                                                                                                                                                                                                                                                                                                    |string                                                                                                                                                                                                                                            |undefined                                                                                                                                                                                                                                                                 |
#' |validity           |–                   |The current validation state of the component.                                                                                                                                                                                                                                                                                                                      |{ valid: boolean; badInput: boolean; customError: boolean; patternMismatch: boolean; rangeOverflow: boolean; rangeUnderflow: boolean; stepMismatch: boolean; tooLong: boolean; tooShort: boolean; typeMismatch: boolean; valueMissing: boolean; } |{     valid: false,     badInput: false,     customError: false,     patternMismatch: false,     rangeOverflow: false,     rangeUnderflow: false,     stepMismatch: false,     tooLong: false,     tooShort: false,     typeMismatch: false,     valueMissing: false,   } |
#' |value              |value               |The component’s value, where the value is the time zone offset or the difference, in minutes, between the selected time zone and UTC. If no value is provided, the user’s time zone offset will be selected by default.                                                                                                                                             |string                                                                                                                                                                                                                                            |undefined                                                                                                                                                                                                                                                                 |
#' 
#' ## Events
#' |Event                           |Description                                                                                              |Type              |
#' |:-------------------------------|:--------------------------------------------------------------------------------------------------------|:-----------------|
#' |calciteInputTimeZoneBeforeClose |Fires when the component is requested to be closed and before the closing transition begins.             |CustomEvent<void> |
#' |calciteInputTimeZoneBeforeOpen  |Fires when the component is added to the DOM but not rendered, and before the opening transition begins. |CustomEvent<void> |
#' |calciteInputTimeZoneChange      |Fires when the component’s value changes.                                                                |CustomEvent<void> |
#' |calciteInputTimeZoneClose       |Fires after the component is closed and animation is complete.                                           |CustomEvent<void> |
#' |calciteInputTimeZoneOpen        |Fires after the component is opened and animation is complete.                                           |CustomEvent<void> |
#' 
#'
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
#' @section Component Details:
#'
#' The below tables illustrate the properties, attributes, and optionally the
#' slots, events, and methods associated with this component.
#'
#' Each attribute can be set by passing it in via `...` as a named value e.g. `"icon-start" = "snow"`.
#'
#' Each event is subscribed to by shiny. The component properties are updated
#' on each of the events.
#'
#' ## Properties
#' |Property          |Attribute          |Description                                                                                                                                                                                                             |Type                                                                                                                                                                                                                                              |Default                                                                                                                                                                                                                                                                   |
#' |:-----------------|:------------------|:-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|:-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|:-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
#' |accept            |accept             |Specifies a comma separated list of unique file type specifiers for limiting accepted file types. This property only has an effect when type is “file”. Read the native attribute’s documentation on MDN for more info. |string                                                                                                                                                                                                                                            |undefined                                                                                                                                                                                                                                                                 |
#' |alignment         |alignment          |Specifies the text alignment of the component’s value.                                                                                                                                                                  |"end" &#124; "start"                                                                                                                                                                                                                              |"start"                                                                                                                                                                                                                                                                   |
#' |autocomplete      |autocomplete       |Specifies the type of content to autocomplete, for use in forms. Read the native attribute’s documentation on MDN for more info.                                                                                        |string                                                                                                                                                                                                                                            |undefined                                                                                                                                                                                                                                                                 |
#' |autofocus         |autofocus          |Adds global prop, missing from Stencil’s HTMLElement type, see https://github.com/ionic-team/stencil/issues/5726                                                                                                        |boolean                                                                                                                                                                                                                                           |undefined                                                                                                                                                                                                                                                                 |
#' |clearable         |clearable          |When true, a clear button is displayed when the component has a value. The clear button shows by default for "search", "time", and "date" types, and will not display for the "textarea" type.                          |boolean                                                                                                                                                                                                                                           |false                                                                                                                                                                                                                                                                     |
#' |disabled          |disabled           |When true, interaction is prevented and the component is displayed with lower opacity.                                                                                                                                  |boolean                                                                                                                                                                                                                                           |false                                                                                                                                                                                                                                                                     |
#' |files             |–                  |When type is "file", specifies the component’s selected files.                                                                                                                                                          |FileList                                                                                                                                                                                                                                          |undefined                                                                                                                                                                                                                                                                 |
#' |form              |form               |The id of the form that will be associated with the component. When not set, the component will be associated with its ancestor form element, if any.                                                                   |string                                                                                                                                                                                                                                            |undefined                                                                                                                                                                                                                                                                 |
#' |groupSeparator    |group-separator    |When true, number values are displayed with a group separator corresponding to the language and country format.                                                                                                         |boolean                                                                                                                                                                                                                                           |false                                                                                                                                                                                                                                                                     |
#' |icon              |icon               |When true, shows a default recommended icon. Alternatively, pass a Calcite UI Icon name to display a specific icon.                                                                                                     |boolean &#124; string                                                                                                                                                                                                                             |undefined                                                                                                                                                                                                                                                                 |
#' |iconFlipRtl       |icon-flip-rtl      |When true, the icon will be flipped when the element direction is right-to-left ("rtl").                                                                                                                                |boolean                                                                                                                                                                                                                                           |false                                                                                                                                                                                                                                                                     |
#' |label             |label              |Accessible name for the component.                                                                                                                                                                                      |string                                                                                                                                                                                                                                            |undefined                                                                                                                                                                                                                                                                 |
#' |loading           |loading            |When true, a busy indicator is displayed.                                                                                                                                                                               |boolean                                                                                                                                                                                                                                           |false                                                                                                                                                                                                                                                                     |
#' |max               |max                |Specifies the maximum value for type “number”.                                                                                                                                                                          |number                                                                                                                                                                                                                                            |undefined                                                                                                                                                                                                                                                                 |
#' |maxLength         |max-length         |Specifies the maximum length of text for the component’s value.                                                                                                                                                         |number                                                                                                                                                                                                                                            |undefined                                                                                                                                                                                                                                                                 |
#' |messageOverrides  |message-overrides  |Use this property to override individual strings used by the component.                                                                                                                                                 |InputMessages                                                                                                                                                                                                                                     |undefined                                                                                                                                                                                                                                                                 |
#' |min               |min                |Specifies the minimum value for type="number".                                                                                                                                                                          |number                                                                                                                                                                                                                                            |undefined                                                                                                                                                                                                                                                                 |
#' |minLength         |min-length         |Specifies the minimum length of text for the component’s value.                                                                                                                                                         |number                                                                                                                                                                                                                                            |undefined                                                                                                                                                                                                                                                                 |
#' |multiple          |multiple           |When true, the component can accept more than one value. This property only has an effect when type is “email” or “file”. Read the native attribute’s documentation on MDN for more info.                               |boolean                                                                                                                                                                                                                                           |false                                                                                                                                                                                                                                                                     |
#' |name              |name               |Specifies the name of the component. Required to pass the component’s value on form submission.                                                                                                                         |string                                                                                                                                                                                                                                            |undefined                                                                                                                                                                                                                                                                 |
#' |numberButtonType  |number-button-type |Specifies the placement of the buttons for type="number".                                                                                                                                                               |"horizontal" &#124; "none" &#124; "vertical"                                                                                                                                                                                                      |"vertical"                                                                                                                                                                                                                                                                |
#' |numberingSystem   |numbering-system   |Specifies the Unicode numeral system used by the component for localization.                                                                                                                                            |"arab" &#124; "arabext" &#124; "latn"                                                                                                                                                                                                             |undefined                                                                                                                                                                                                                                                                 |
#' |pattern           |pattern            |Specifies a regex pattern the component’s value must match for validation. Read the native attribute’s documentation on MDN for more info.                                                                              |string                                                                                                                                                                                                                                            |undefined                                                                                                                                                                                                                                                                 |
#' |placeholder       |placeholder        |Specifies placeholder text for the component.                                                                                                                                                                           |string                                                                                                                                                                                                                                            |undefined                                                                                                                                                                                                                                                                 |
#' |prefixText        |prefix-text        |Adds text to the start of the component.                                                                                                                                                                                |string                                                                                                                                                                                                                                            |undefined                                                                                                                                                                                                                                                                 |
#' |readOnly          |read-only          |When true, the component’s value can be read, but cannot be modified.                                                                                                                                                   |boolean                                                                                                                                                                                                                                           |false                                                                                                                                                                                                                                                                     |
#' |required          |required           |When true, the component must have a value in order for the form to submit.                                                                                                                                             |boolean                                                                                                                                                                                                                                           |false                                                                                                                                                                                                                                                                     |
#' |scale             |scale              |Specifies the size of the component.                                                                                                                                                                                    |"l" &#124; "m" &#124; "s"                                                                                                                                                                                                                         |"m"                                                                                                                                                                                                                                                                       |
#' |status            |status             |Specifies the status of the input field, which determines message and icons.                                                                                                                                            |"idle" &#124; "invalid" &#124; "valid"                                                                                                                                                                                                            |"idle"                                                                                                                                                                                                                                                                    |
#' |step              |step               |Specifies the granularity the component’s value must adhere to.                                                                                                                                                         |"any" &#124; number                                                                                                                                                                                                                               |undefined                                                                                                                                                                                                                                                                 |
#' |suffixText        |suffix-text        |Adds text to the end of the component.                                                                                                                                                                                  |string                                                                                                                                                                                                                                            |undefined                                                                                                                                                                                                                                                                 |
#' |type              |type               |Specifies the component type. Note that the following types add type-specific icons by default: "date", "email", "password", "search", "tel", "time".                                                                   |"color" &#124; "date" &#124; "datetime-local" &#124; "email" &#124; "file" &#124; "image" &#124; "month" &#124; "number" &#124; "password" &#124; "search" &#124; "tel" &#124; "text" &#124; "textarea" &#124; "time" &#124; "url" &#124; "week"  |"text"                                                                                                                                                                                                                                                                    |
#' |validationIcon    |validation-icon    |Specifies the validation icon to display under the component.                                                                                                                                                           |boolean &#124; string                                                                                                                                                                                                                             |undefined                                                                                                                                                                                                                                                                 |
#' |validationMessage |validation-message |Specifies the validation message to display under the component.                                                                                                                                                        |string                                                                                                                                                                                                                                            |undefined                                                                                                                                                                                                                                                                 |
#' |validity          |–                  |The current validation state of the component.                                                                                                                                                                          |{ valid: boolean; badInput: boolean; customError: boolean; patternMismatch: boolean; rangeOverflow: boolean; rangeUnderflow: boolean; stepMismatch: boolean; tooLong: boolean; tooShort: boolean; typeMismatch: boolean; valueMissing: boolean; } |{     valid: false,     badInput: false,     customError: false,     patternMismatch: false,     rangeOverflow: false,     rangeUnderflow: false,     stepMismatch: false,     tooLong: false,     tooShort: false,     typeMismatch: false,     valueMissing: false,   } |
#' |value             |value              |The component’s value.                                                                                                                                                                                                  |string                                                                                                                                                                                                                                            |""                                                                                                                                                                                                                                                                        |
#' 
#' ## Events
#' |Event              |Description                                         |Type              |
#' |:------------------|:---------------------------------------------------|:-----------------|
#' |calciteInputChange |Fires each time a new value is typed and committed. |CustomEvent<void> |
#' |calciteInputInput  |Fires each time a new value is typed.               |CustomEvent<void> |
#' 
#' ## Slots
#' |Slot     |Description                                                    |
#' |:--------|:--------------------------------------------------------------|
#' |"action" |A slot for positioning a calcite-button next to the component. |
#' 
#'
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
#' @section Component Details:
#'
#' The below tables illustrate the properties, attributes, and optionally the
#' slots, events, and methods associated with this component.
#'
#' Each attribute can be set by passing it in via `...` as a named value e.g. `"icon-start" = "snow"`.
#'
#' Each event is subscribed to by shiny. The component properties are updated
#' on each of the events.
#'
#' ## Properties
#' |Property  |Attribute |Description                                                                                                                                 |Type                                                    |Default   |
#' |:---------|:---------|:-------------------------------------------------------------------------------------------------------------------------------------------|:-------------------------------------------------------|:---------|
#' |alignment |alignment |Specifies the text alignment of the component.                                                                                              |"center" &#124; "end" &#124; "start"                    |"start"   |
#' |for       |for       |Specifies the id of the component the label is bound to. Use when the component the label is bound to does not reside within the component. |string                                                  |undefined |
#' |layout    |layout    |Defines the layout of the label in relation to the component. Use "inline" positions to wrap the label and component on the same line.      |"default" &#124; "inline" &#124; "inline-space-between" |"default" |
#' |scale     |scale     |Specifies the size of the component.                                                                                                        |"l" &#124; "m" &#124; "s"                               |"m"       |
#' 
#' ## Slots
#' |Slot |Description                                                 |
#' |:----|:-----------------------------------------------------------|
#' |NA   |A slot for adding text and a component that can be labeled. |
#' 
#'
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
#' @section Component Details:
#'
#' The below tables illustrate the properties, attributes, and optionally the
#' slots, events, and methods associated with this component.
#'
#' Each attribute can be set by passing it in via `...` as a named value e.g. `"icon-start" = "snow"`.
#'
#' Each event is subscribed to by shiny. The component properties are updated
#' on each of the events.
#'
#' ## Properties
#' |Property    |Attribute     |Description                                                                                                                                                                                                                                             |Type                               |Default   |
#' |:-----------|:-------------|:-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|:----------------------------------|:---------|
#' |disabled    |disabled      |When true, interaction is prevented and the component is displayed with lower opacity.                                                                                                                                                                  |boolean                            |false     |
#' |download    |download      |Prompts the user to save the linked URL instead of navigating to it. Can be used with or without a value: Without a value, the browser will suggest a filename/extension See https://developer.mozilla.org/en-US/docs/Web/HTML/Element/a#attr-download. |boolean &#124; string              |false     |
#' |href        |href          |Specifies the URL of the linked resource, which can be set as an absolute or relative path.                                                                                                                                                             |string                             |undefined |
#' |iconEnd     |icon-end      |Specifies an icon to display at the end of the component.                                                                                                                                                                                               |string                             |undefined |
#' |iconFlipRtl |icon-flip-rtl |Displays the iconStart and/or iconEnd as flipped when the element direction is right-to-left ("rtl").                                                                                                                                                   |"both" &#124; "end" &#124; "start" |undefined |
#' |iconStart   |icon-start    |Specifies an icon to display at the start of the component.                                                                                                                                                                                             |string                             |undefined |
#' |rel         |rel           |Specifies the relationship to the linked document defined in href.                                                                                                                                                                                      |string                             |undefined |
#' |target      |target        |Specifies the frame or window to open the linked document.                                                                                                                                                                                              |string                             |undefined |
#' 
#' ## Slots
#' |Slot |Description             |
#' |:----|:-----------------------|
#' |NA   |A slot for adding text. |
#' 
#'
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
#' @section Component Details:
#'
#' The below tables illustrate the properties, attributes, and optionally the
#' slots, events, and methods associated with this component.
#'
#' Each attribute can be set by passing it in via `...` as a named value e.g. `"icon-start" = "snow"`.
#'
#' Each event is subscribed to by shiny. The component properties are updated
#' on each of the events.
#'
#' ## Properties
#' |Property |Attribute |Description                                                                            |Type    |Default   |
#' |:--------|:---------|:--------------------------------------------------------------------------------------|:-------|:---------|
#' |disabled |disabled  |When true, interaction is prevented and the component is displayed with lower opacity. |boolean |false     |
#' |heading  |heading   |The header text for all nested calcite-list-item rows.                                 |string  |undefined |
#' 
#' ## Events
#' |Event                                         |Description                                                                          |Type              |
#' |:---------------------------------------------|:------------------------------------------------------------------------------------|:-----------------|
#' |calciteInternalListItemGroupDefaultSlotChange |Fires when changes occur in the default slot, notifying parent lists of the changes. |CustomEvent<void> |
#' 
#' ## Slots
#' |Slot |Description                                                               |
#' |:----|:-------------------------------------------------------------------------|
#' |NA   |A slot for adding calcite-list-item and calcite-list-item-group elements. |
#' 
#'
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
#' @section Component Details:
#'
#' The below tables illustrate the properties, attributes, and optionally the
#' slots, events, and methods associated with this component.
#'
#' Each attribute can be set by passing it in via `...` as a named value e.g. `"icon-start" = "snow"`.
#'
#' Each event is subscribed to by shiny. The component properties are updated
#' on each of the events.
#'
#' ## Properties
#' |Property         |Attribute         |Description                                                                                                                     |Type                      |Default   |
#' |:----------------|:-----------------|:-------------------------------------------------------------------------------------------------------------------------------|:-------------------------|:---------|
#' |closable         |closable          |When true, a close button is added to the component.                                                                            |boolean                   |false     |
#' |closed           |closed            |When true, hides the component.                                                                                                 |boolean                   |false     |
#' |description      |description       |A description for the component. Displays below the label text.                                                                 |string                    |undefined |
#' |disabled         |disabled          |When true, interaction is prevented and the component is displayed with lower opacity.                                          |boolean                   |false     |
#' |dragDisabled     |drag-disabled     |When true, the item is not draggable.                                                                                           |boolean                   |false     |
#' |dragSelected     |drag-selected     |When true, the component’s drag handle is selected.                                                                             |boolean                   |false     |
#' |label            |label             |The label text of the component. Displays above the description text.                                                           |string                    |undefined |
#' |messageOverrides |message-overrides |Use this property to override individual strings used by the component.                                                         |ListItemMessages          |undefined |
#' |metadata         |–                 |Provides additional metadata to the component. Primary use is for a filter on the parent calcite-list.                          |{ [x: string]: unknown; } |undefined |
#' |open             |open              |When true, the item is open to show child components.                                                                           |boolean                   |false     |
#' |selected         |selected          |When true and the parent calcite-list’s selectionMode is "single", "single-persist"', or“multiple”`, the component is selected. |boolean                   |false     |
#' |unavailable      |unavailable       |When true, the component’s content appears inactive.                                                                            |boolean                   |false     |
#' |value            |value             |The component’s value.                                                                                                          |any                       |undefined |
#' 
#' ## Events
#' |Event                           |Description                             |Type              |
#' |:-------------------------------|:---------------------------------------|:-----------------|
#' |calciteListItemClose            |Fires when the close button is clicked. |CustomEvent<void> |
#' |calciteListItemDragHandleChange |Fires when the drag handle is selected. |CustomEvent<void> |
#' |calciteListItemSelect           |Fires when the component is selected.   |CustomEvent<void> |
#' |calciteListItemToggle           |Fires when the open button is clicked.  |CustomEvent<void> |
#' 
#' ## Slots
#' |Slot             |Description                                                                                                |
#' |:----------------|:----------------------------------------------------------------------------------------------------------|
#' |                 |A slot for adding calcite-list, calcite-list-item and calcite-list-item-group elements.                    |
#' |"actions-end"    |A slot for adding actionable calcite-action elements after the content of the component.                   |
#' |"actions-start"  |A slot for adding actionable calcite-action elements before the content of the component.                  |
#' |"content"        |A slot for adding non-actionable, centered content in place of the label and description of the component. |
#' |"content-bottom" |A slot for adding content below the component’s label and description.                                     |
#' |"content-end"    |A slot for adding non-actionable elements after the label and description of the component.                |
#' |"content-start"  |A slot for adding non-actionable elements before the label and description of the component.               |
#' 
#'
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
#' @section Component Details:
#'
#' The below tables illustrate the properties, attributes, and optionally the
#' slots, events, and methods associated with this component.
#'
#' Each attribute can be set by passing it in via `...` as a named value e.g. `"icon-start" = "snow"`.
#'
#' Each event is subscribed to by shiny. The component properties are updated
#' on each of the events.
#'
#' ## Properties
#' |Property            |Attribute            |Description                                                                                                                                                                                                                                                          |Type                                                                                        |Default       |
#' |:-------------------|:--------------------|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|:-------------------------------------------------------------------------------------------|:-------------|
#' |canPull             |–                    |When provided, the method will be called to determine whether the element can move from the list.                                                                                                                                                                    |(detail: ListDragDetail) => boolean                                                         |undefined     |
#' |canPut              |–                    |When provided, the method will be called to determine whether the element can be added from another list.                                                                                                                                                            |(detail: ListDragDetail) => boolean                                                         |undefined     |
#' |disabled            |disabled             |When true, interaction is prevented and the component is displayed with lower opacity.                                                                                                                                                                               |boolean                                                                                     |false         |
#' |dragEnabled         |drag-enabled         |When true, calcite-list-items are sortable via a draggable button.                                                                                                                                                                                                   |boolean                                                                                     |false         |
#' |filterEnabled       |filter-enabled       |When true, an input appears at the top of the component that can be used by end users to filter calcite-list-items.                                                                                                                                                  |boolean                                                                                     |false         |
#' |filterPlaceholder   |filter-placeholder   |Placeholder text for the component’s filter input field.                                                                                                                                                                                                             |string                                                                                      |undefined     |
#' |filterProps         |–                    |Specifies the properties to match against when filtering. If not set, all properties will be matched (label, description, metadata, value).                                                                                                                          |string[]                                                                                    |undefined     |
#' |filterText          |filter-text          |Text for the component’s filter input field.                                                                                                                                                                                                                         |string                                                                                      |undefined     |
#' |filteredData        |–                    |The currently filtered calcite-list-item data.                                                                                                                                                                                                                       |{ label: string; description: string; metadata: Record<string, unknown>; value: string; }[] |[]            |
#' |filteredItems       |–                    |The currently filtered calcite-list-items.                                                                                                                                                                                                                           |HTMLCalciteListItemElement[]                                                                |[]            |
#' |group               |group                |The list’s group identifier. To drag elements from one list into another, both lists must have the same group value.                                                                                                                                                 |string                                                                                      |undefined     |
#' |interactionMode     |interaction-mode     |Specifies the interaction mode of the component. "interactive" allows interaction styling and pointer changes on hover "static" does not allow interaction styling and pointer changes on hover The "static" value should only be used when selectionMode is "none". |"interactive" &#124; "static"                                                               |"interactive" |
#' |label               |label                |Specifies an accessible name for the component.                                                                                                                                                                                                                      |string                                                                                      |undefined     |
#' |loading             |loading              |When true, a busy indicator is displayed.                                                                                                                                                                                                                            |boolean                                                                                     |false         |
#' |messageOverrides    |message-overrides    |Use this property to override individual strings used by the component.                                                                                                                                                                                              |ListMessages                                                                                |undefined     |
#' |numberingSystem     |numbering-system     |Specifies the Unicode numeral system used by the component for localization.                                                                                                                                                                                         |"arab" &#124; "arabext" &#124; "latn"                                                       |undefined     |
#' |selectedItems       |–                    |The currently selected items.                                                                                                                                                                                                                                        |HTMLCalciteListItemElement[]                                                                |[]            |
#' |selectionAppearance |selection-appearance |Specifies the selection appearance - "icon" (displays a checkmark or dot) or "border" (displays a border).                                                                                                                                                           |"border" &#124; "icon"                                                                      |"icon"        |
#' |selectionMode       |selection-mode       |Specifies the selection mode of the component, where: "multiple" allows any number of selections, "single" allows only one selection, "single-persist" allows one selection and prevents de-selection, and "none" does not allow any selections.                     |"multiple" &#124; "none" &#124; "single" &#124; "single-persist"                            |"none"        |
#' 
#' ## Events
#' |Event                                |Description                                                              |Type                        |
#' |:------------------------------------|:------------------------------------------------------------------------|:---------------------------|
#' |calciteInternalListDefaultSlotChange |Fires when the default slot has changes in order to notify parent lists. |CustomEvent<void>           |
#' |calciteListChange                    |Fires when the component’s selected items have changed.                  |CustomEvent<void>           |
#' |calciteListDragEnd                   |Fires when the component’s dragging has ended.                           |CustomEvent<ListDragDetail> |
#' |calciteListDragStart                 |Fires when the component’s dragging has started.                         |CustomEvent<ListDragDetail> |
#' |calciteListFilter                    |Fires when the component’s filter has changed.                           |CustomEvent<void>           |
#' |calciteListOrderChange               |Fires when the component’s item order changes.                           |CustomEvent<ListDragDetail> |
#' 
#' ## Slots
#' |Slot                   |Description                                                                                 |
#' |:----------------------|:-------------------------------------------------------------------------------------------|
#' |                       |A slot for adding calcite-list-item elements.                                               |
#' |"filter-actions-end"   |A slot for adding actionable calcite-action elements after the filter component.            |
#' |"filter-actions-start" |A slot for adding actionable calcite-action elements before the filter component.           |
#' |"filter-no-results"    |When filterEnabled is true, a slot for adding content to display when no results are found. |
#' 
#'
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
#' @section Component Details:
#'
#' The below tables illustrate the properties, attributes, and optionally the
#' slots, events, and methods associated with this component.
#'
#' Each attribute can be set by passing it in via `...` as a named value e.g. `"icon-start" = "snow"`.
#'
#' Each event is subscribed to by shiny. The component properties are updated
#' on each of the events.
#'
#' ## Properties
#' |Property         |Attribute |Description                                                                                                                                                                                                                                         |Type                                                            |Default         |
#' |:----------------|:---------|:---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|:---------------------------------------------------------------|:---------------|
#' |inline           |inline    |When true, displays smaller and appears to the left of the text.                                                                                                                                                                                    |boolean                                                         |false           |
#' |label (required) |label     |Accessible name for the component.                                                                                                                                                                                                                  |string                                                          |undefined       |
#' |scale            |scale     |Specifies the size of the component.                                                                                                                                                                                                                |"l" &#124; "m" &#124; "s"                                       |"m"             |
#' |text             |text      |Text that displays under the component’s indicator.                                                                                                                                                                                                 |string                                                          |""              |
#' |type             |type      |Specifies the component type. Use "indeterminate" if finding actual progress value is impossible. Otherwise, use "determinate" to have the value indicate the progress or "determinate-value" to have the value label displayed along the progress. |"determinate" &#124; "determinate-value" &#124; "indeterminate" |"indeterminate" |
#' |value            |value     |The component’s value. Valid only for "determinate" indicators. Percent complete of 100.                                                                                                                                                            |number                                                          |0               |
#' 
#'
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
#' @section Component Details:
#'
#' The below tables illustrate the properties, attributes, and optionally the
#' slots, events, and methods associated with this component.
#'
#' Each attribute can be set by passing it in via `...` as a named value e.g. `"icon-start" = "snow"`.
#'
#' Each event is subscribed to by shiny. The component properties are updated
#' on each of the events.
#'
#' ## Properties
#' |Property         |Attribute         |Description                                                                                           |Type                               |Default   |
#' |:----------------|:-----------------|:-----------------------------------------------------------------------------------------------------|:----------------------------------|:---------|
#' |active           |active            |When true, the component is highlighted.                                                              |boolean                            |undefined |
#' |breadcrumb       |breadcrumb        |When true, the component displays a breadcrumb trail for use as a navigational aid.                   |boolean                            |undefined |
#' |href             |href              |Specifies the URL destination of the component, which can be set as an absolute or relative path.     |string                             |undefined |
#' |iconEnd          |icon-end          |Specifies an icon to display at the end of the component.                                             |string                             |undefined |
#' |iconFlipRtl      |icon-flip-rtl     |Displays the iconStart and/or iconEnd as flipped when the element direction is right-to-left ("rtl"). |"both" &#124; "end" &#124; "start" |undefined |
#' |iconStart        |icon-start        |Specifies an icon to display at the start of the component.                                           |string                             |undefined |
#' |label (required) |label             |Accessible name for the component.                                                                    |string                             |undefined |
#' |messageOverrides |message-overrides |Use this property to override individual strings used by the component.                               |MenuItemMessages                   |undefined |
#' |open             |open              |When true, the component will display any slotted calcite-menu-item in an open overflow menu.         |boolean                            |false     |
#' |rel              |rel               |Defines the relationship between the href value and the current document.                             |string                             |undefined |
#' |target           |target            |Specifies where to open the linked document defined in the href property.                             |string                             |undefined |
#' |text             |text              |Specifies the text to display.                                                                        |string                             |undefined |
#' 
#' ## Events
#' |Event                 |Description                           |Type              |
#' |:---------------------|:-------------------------------------|:-----------------|
#' |calciteMenuItemSelect |Emits when the component is selected. |CustomEvent<void> |
#' 
#' ## Slots
#' |Slot           |Description                                        |
#' |:--------------|:--------------------------------------------------|
#' |"submenu-item" |A slot for adding calcite-menu-items in a submenu. |
#' 
#'
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
#' @section Component Details:
#'
#' The below tables illustrate the properties, attributes, and optionally the
#' slots, events, and methods associated with this component.
#'
#' Each attribute can be set by passing it in via `...` as a named value e.g. `"icon-start" = "snow"`.
#'
#' Each event is subscribed to by shiny. The component properties are updated
#' on each of the events.
#'
#' ## Properties
#' |Property         |Attribute         |Description                                                             |Type                           |Default      |
#' |:----------------|:-----------------|:-----------------------------------------------------------------------|:------------------------------|:------------|
#' |label (required) |label             |Accessible name for the component.                                      |string                         |undefined    |
#' |layout           |layout            |Specifies the layout of the component.                                  |"horizontal" &#124; "vertical" |"horizontal" |
#' |messageOverrides |message-overrides |Use this property to override individual strings used by the component. |MenuMessages                   |undefined    |
#' 
#'
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
#' @section Component Details:
#'
#' The below tables illustrate the properties, attributes, and optionally the
#' slots, events, and methods associated with this component.
#'
#' Each attribute can be set by passing it in via `...` as a named value e.g. `"icon-start" = "snow"`.
#'
#' Each event is subscribed to by shiny. The component properties are updated
#' on each of the events.
#'
#' ## Properties
#' |Property         |Attribute        |Description                                                                                                                                                      |Type                                           |Default        |
#' |:----------------|:----------------|:----------------------------------------------------------------------------------------------------------------------------------------------------------------|:----------------------------------------------|:--------------|
#' |appearance       |appearance       |Specifies the appearance style of the component.                                                                                                                 |"outline" &#124; "outline-fill" &#124; "solid" |"outline-fill" |
#' |disabled         |disabled         |When true, interaction is prevented and the component is displayed with lower opacity.                                                                           |boolean                                        |false          |
#' |fillType         |fill-type        |Specifies the component’s display, where "single" displays a single color and "range" displays a range of colors based on provided low, high, min or max values. |"range" &#124; "single"                        |"range"        |
#' |form             |form             |The id of the form that will be associated with the component. When not set, the component will be associated with its ancestor form element, if any.            |string                                         |undefined      |
#' |groupSeparator   |group-separator  |When true, number values are displayed with a group separator corresponding to the language and country format.                                                  |boolean                                        |false          |
#' |high             |high             |Specifies a high value. When fillType is "range", displays a different color when above the specified threshold.                                                 |number                                         |undefined      |
#' |label (required) |label            |Accessible name for the component.                                                                                                                               |string                                         |undefined      |
#' |low              |low              |Specifies a low value. When fillType is "range", displays a different color when above the specified threshold.                                                  |number                                         |undefined      |
#' |max              |max              |Specifies the highest allowed value of the component.                                                                                                            |number                                         |100            |
#' |min              |min              |Specifies the lowest allowed value of the component.                                                                                                             |number                                         |0              |
#' |name             |name             |Specifies the name of the component. Required to pass the component’s value on form submission.                                                                  |string                                         |undefined      |
#' |numberingSystem  |numbering-system |Specifies the Unicode numeral system used by the component for localization.                                                                                     |"arab" &#124; "arabext" &#124; "latn"          |undefined      |
#' |rangeLabelType   |range-label-type |When rangeLabels is true, specifies the format of displayed labels.                                                                                              |"percent" &#124; "units"                       |"percent"      |
#' |rangeLabels      |range-labels     |When true, displays the values of high, low, min, and max.                                                                                                       |boolean                                        |false          |
#' |scale            |scale            |Specifies the size of the component.                                                                                                                             |"l" &#124; "m" &#124; "s"                      |"m"            |
#' |unitLabel        |unit-label       |When rangeLabelType is "units" and either valueLabel or rangeLabels are true, displays beside the value and/or min values.                                       |string                                         |""             |
#' |value            |value            |Specifies the current value of the component.                                                                                                                    |number                                         |undefined      |
#' |valueLabel       |value-label      |When true, displays the current value.                                                                                                                           |boolean                                        |false          |
#' |valueLabelType   |value-label-type |When valueLabel is true, specifies the format of displayed label.                                                                                                |"percent" &#124; "units"                       |"percent"      |
#' 
#'
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
#' @section Component Details:
#'
#' The below tables illustrate the properties, attributes, and optionally the
#' slots, events, and methods associated with this component.
#'
#' Each attribute can be set by passing it in via `...` as a named value e.g. `"icon-start" = "snow"`.
#'
#' Each event is subscribed to by shiny. The component properties are updated
#' on each of the events.
#'
#' ## Properties
#' |Property             |Attribute              |Description                                                                                                          |Type                                                                    |Default   |
#' |:--------------------|:----------------------|:--------------------------------------------------------------------------------------------------------------------|:-----------------------------------------------------------------------|:---------|
#' |beforeClose          |–                      |Passes a function to run before the component closes.                                                                |(el: HTMLCalciteModalElement) => Promise<void>                          |undefined |
#' |closeButtonDisabled  |close-button-disabled  |When true, disables the component’s close button.                                                                    |boolean                                                                 |false     |
#' |docked               |docked                 |When true, prevents the component from expanding to the entire screen on mobile devices.                             |boolean                                                                 |undefined |
#' |escapeDisabled       |escape-disabled        |When true, disables the default close on escape behavior.                                                            |boolean                                                                 |false     |
#' |focusTrapDisabled    |focus-trap-disabled    |When true, prevents focus trapping.                                                                                  |boolean                                                                 |false     |
#' |fullscreen           |fullscreen             |Sets the component to always be fullscreen. Overrides widthScale and --calcite-modal-width / --calcite-modal-height. |boolean                                                                 |undefined |
#' |kind                 |kind                   |Specifies the kind of the component, which will apply to top border.                                                 |"brand" &#124; "danger" &#124; "info" &#124; "success" &#124; "warning" |undefined |
#' |messageOverrides     |message-overrides      |Use this property to override individual strings used by the component.                                              |ModalMessages                                                           |undefined |
#' |open                 |open                   |When true, displays and positions the component.                                                                     |boolean                                                                 |false     |
#' |outsideCloseDisabled |outside-close-disabled |When true, disables the closing of the component when clicked outside.                                               |boolean                                                                 |false     |
#' |scale                |scale                  |Specifies the size of the component.                                                                                 |"l" &#124; "m" &#124; "s"                                               |"m"       |
#' |widthScale           |width-scale            |Specifies the width of the component.                                                                                |"l" &#124; "m" &#124; "s"                                               |"m"       |
#' 
#' ## Events
#' |Event                   |Description                                                                                              |Type              |
#' |:-----------------------|:--------------------------------------------------------------------------------------------------------|:-----------------|
#' |calciteModalBeforeClose |Fires when the component is requested to be closed and before the closing transition begins.             |CustomEvent<void> |
#' |calciteModalBeforeOpen  |Fires when the component is added to the DOM but not rendered, and before the opening transition begins. |CustomEvent<void> |
#' |calciteModalClose       |Fires when the component is closed and animation is complete.                                            |CustomEvent<void> |
#' |calciteModalOpen        |Fires when the component is open and animation is complete.                                              |CustomEvent<void> |
#' 
#' ## Slots
#' |Slot             |Description                                                                                                                                  |
#' |:----------------|:--------------------------------------------------------------------------------------------------------------------------------------------|
#' |"back"           |A slot for adding a back button.                                                                                                             |
#' |"content"        |A slot for adding the component’s content.                                                                                                   |
#' |"content-bottom" |A slot for adding content to the component’s sticky footer, where content remains at the bottom of the component when scrolling up and down. |
#' |"content-top"    |A slot for adding content to the component’s sticky header, where content remains at the top of the component when scrolling up and down.    |
#' |"header"         |A slot for adding header text.                                                                                                               |
#' |"primary"        |A slot for adding a primary button.                                                                                                          |
#' |"secondary"      |A slot for adding a secondary button.                                                                                                        |
#' 
#'
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
#' @section Component Details:
#'
#' The below tables illustrate the properties, attributes, and optionally the
#' slots, events, and methods associated with this component.
#'
#' Each attribute can be set by passing it in via `...` as a named value e.g. `"icon-start" = "snow"`.
#'
#' Each event is subscribed to by shiny. The component properties are updated
#' on each of the events.
#'
#' ## Properties
#' |Property     |Attribute     |Description                                                                                                                             |Type                                           |Default   |
#' |:------------|:-------------|:---------------------------------------------------------------------------------------------------------------------------------------|:----------------------------------------------|:---------|
#' |active       |active        |When true, the component is highlighted.                                                                                                |boolean                                        |undefined |
#' |description  |description   |A description for the component, which displays below the heading.                                                                      |string                                         |undefined |
#' |heading      |heading       |Specifies heading text for the component, such as a product or organization name.                                                       |string                                         |undefined |
#' |headingLevel |heading-level |Specifies the heading level of the component’s heading for proper document structure, without affecting visual styling.                 |1 &#124; 2 &#124; 3 &#124; 4 &#124; 5 &#124; 6 |undefined |
#' |href         |href          |Specifies the URL destination of the component, which can be set as an absolute or relative path.                                       |string                                         |undefined |
#' |icon         |icon          |Specifies an icon to display.                                                                                                           |string                                         |undefined |
#' |iconFlipRtl  |icon-flip-rtl |When true, the icon will be flipped when the element direction is right-to-left ("rtl").                                                |boolean                                        |false     |
#' |label        |label         |Describes the appearance or function of the thumbnail. If no label is provided, context will not be provided to assistive technologies. |string                                         |undefined |
#' |rel          |rel           |Defines the relationship between the href value and the current document.                                                               |string                                         |undefined |
#' |target       |target        |Specifies where to open the linked document defined in the href property.                                                               |string                                         |undefined |
#' |thumbnail    |thumbnail     |Specifies the src to an image.                                                                                                          |string                                         |undefined |
#' 
#'
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
#' @section Component Details:
#'
#' The below tables illustrate the properties, attributes, and optionally the
#' slots, events, and methods associated with this component.
#'
#' Each attribute can be set by passing it in via `...` as a named value e.g. `"icon-start" = "snow"`.
#'
#' Each event is subscribed to by shiny. The component properties are updated
#' on each of the events.
#'
#' ## Properties
#' |Property     |Attribute     |Description                                                                                                              |Type    |Default   |
#' |:------------|:-------------|:------------------------------------------------------------------------------------------------------------------------|:-------|:---------|
#' |active       |active        |When true, the component is highlighted.                                                                                 |boolean |undefined |
#' |fullName     |full-name     |Specifies the full name of the user.                                                                                     |string  |undefined |
#' |label        |label         |Describes the appearance of the avatar. If no label is provided, context will not be provided to assistive technologies. |string  |undefined |
#' |textDisabled |text-disabled |When true, hides the fullName and username contents.                                                                     |boolean |false     |
#' |thumbnail    |thumbnail     |Specifies the src to an image (remember to add a token if the user is private).                                          |string  |undefined |
#' |userId       |user-id       |Specifies the unique id of the user.                                                                                     |string  |undefined |
#' |username     |username      |Specifies the username of the user.                                                                                      |string  |undefined |
#' 
#'
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
#' @section Component Details:
#'
#' The below tables illustrate the properties, attributes, and optionally the
#' slots, events, and methods associated with this component.
#'
#' Each attribute can be set by passing it in via `...` as a named value e.g. `"icon-start" = "snow"`.
#'
#' Each event is subscribed to by shiny. The component properties are updated
#' on each of the events.
#'
#' ## Properties
#' |Property         |Attribute         |Description                                                                                        |Type    |Default   |
#' |:----------------|:-----------------|:--------------------------------------------------------------------------------------------------|:-------|:---------|
#' |label            |label             |When navigationAction is true, specifies the label of the calcite-action.                          |string  |undefined |
#' |navigationAction |navigation-action |When true, displays a calcite-action and emits a calciteNavActionSelect event on selection change. |boolean |false     |
#' 
#' ## Events
#' |Event                         |Description                                                                       |Type              |
#' |:-----------------------------|:---------------------------------------------------------------------------------|:-----------------|
#' |calciteNavigationActionSelect |When navigationAction is true, emits when the displayed action selection changes. |CustomEvent<void> |
#' 
#' ## Slots
#' |Slot                   |Description                                                                                                                                                                                  |
#' |:----------------------|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
#' |"content-center"       |A slot for adding a calcite-menu, calcite-action, or other interactive elements in the center position of the primary navigation level.                                                      |
#' |"content-end"          |A slot for adding a calcite-menu, calcite-action, or other interactive elements in the end position of any navigation level.                                                                 |
#' |"content-start"        |A slot for adding a calcite-menu, calcite-action, or other interactive elements in the start position of any navigation level.                                                               |
#' |"logo"                 |A slot for adding a calcite-logo component to the primary navigation level.                                                                                                                  |
#' |"navigation-action"    |A slot for adding a calcite-action component to the primary navigation level.                                                                                                                |
#' |"navigation-secondary" |A slot for adding a calcite-navigation component in the secondary navigation level. Components rendered here will not display calcite-navigation-logo or calcite-navigation-user components. |
#' |"navigation-tertiary"  |A slot for adding a calcite-navigation component in the tertiary navigation level. Components rendered here will not display calcite-navigation-logo or calcite-navigation-user components.  |
#' |"progress"             |A slot for adding a calcite-progress component to the primary navigation level.                                                                                                              |
#' |"user"                 |A slot for adding a calcite-user component to the primary navigation level.                                                                                                                  |
#' 
#'
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
#' @section Component Details:
#'
#' The below tables illustrate the properties, attributes, and optionally the
#' slots, events, and methods associated with this component.
#'
#' Each attribute can be set by passing it in via `...` as a named value e.g. `"icon-start" = "snow"`.
#'
#' Each event is subscribed to by shiny. The component properties are updated
#' on each of the events.
#'
#' ## Properties
#' |Property         |Attribute         |Description                                                                                                         |Type                                                                    |Default   |
#' |:----------------|:-----------------|:-------------------------------------------------------------------------------------------------------------------|:-----------------------------------------------------------------------|:---------|
#' |closable         |closable          |When true, a close button is added to the component.                                                                |boolean                                                                 |false     |
#' |icon             |icon              |When true, shows a default recommended icon. Alternatively, pass a Calcite UI Icon name to display a specific icon. |boolean &#124; string                                                   |undefined |
#' |iconFlipRtl      |icon-flip-rtl     |When true, the icon will be flipped when the element direction is right-to-left ("rtl").                            |boolean                                                                 |false     |
#' |kind             |kind              |Specifies the kind of the component, which will apply to top border and icon.                                       |"brand" &#124; "danger" &#124; "info" &#124; "success" &#124; "warning" |"brand"   |
#' |messageOverrides |message-overrides |Use this property to override individual strings used by the component.                                             |NoticeMessages                                                          |undefined |
#' |open             |open              |When true, the component is visible.                                                                                |boolean                                                                 |false     |
#' |scale            |scale             |Specifies the size of the component.                                                                                |"l" &#124; "m" &#124; "s"                                               |"m"       |
#' |width            |width             |Specifies the width of the component.                                                                               |"auto" &#124; "full" &#124; "half"                                      |"auto"    |
#' 
#' ## Events
#' |Event                    |Description                                                                                              |Type              |
#' |:------------------------|:--------------------------------------------------------------------------------------------------------|:-----------------|
#' |calciteNoticeBeforeClose |Fires when the component is requested to be closed and before the closing transition begins.             |CustomEvent<void> |
#' |calciteNoticeBeforeOpen  |Fires when the component is added to the DOM but not rendered, and before the opening transition begins. |CustomEvent<void> |
#' |calciteNoticeClose       |Fires when the component is closed and animation is complete.                                            |CustomEvent<void> |
#' |calciteNoticeOpen        |Fires when the component is open and animation is complete.                                              |CustomEvent<void> |
#' 
#' ## Slots
#' |Slot          |Description                                                                                                  |
#' |:-------------|:------------------------------------------------------------------------------------------------------------|
#' |"actions-end" |A slot for adding calcite-actions to the end of the component. It is recommended to use two or less actions. |
#' |"link"        |A slot for adding a calcite-action to take, such as: “undo”, “try again”, “link to page”, etc.               |
#' |"message"     |A slot for adding the message.                                                                               |
#' |"title"       |A slot for adding the title.                                                                                 |
#' 
#'
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
#' @section Component Details:
#'
#' The below tables illustrate the properties, attributes, and optionally the
#' slots, events, and methods associated with this component.
#'
#' Each attribute can be set by passing it in via `...` as a named value e.g. `"icon-start" = "snow"`.
#'
#' Each event is subscribed to by shiny. The component properties are updated
#' on each of the events.
#'
#' ## Properties
#' |Property         |Attribute |Description                                                                            |Type    |Default   |
#' |:----------------|:---------|:--------------------------------------------------------------------------------------|:-------|:---------|
#' |disabled         |disabled  |When true, interaction is prevented and the component is displayed with lower opacity. |boolean |false     |
#' |label (required) |label     |Accessible name for the component.                                                     |string  |undefined |
#' 
#' ## Slots
#' |Slot |Description                        |
#' |:----|:----------------------------------|
#' |NA   |A slot for adding calcite-options. |
#' 
#'
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
#' @section Component Details:
#'
#' The below tables illustrate the properties, attributes, and optionally the
#' slots, events, and methods associated with this component.
#'
#' Each attribute can be set by passing it in via `...` as a named value e.g. `"icon-start" = "snow"`.
#'
#' Each event is subscribed to by shiny. The component properties are updated
#' on each of the events.
#'
#' ## Properties
#' |Property |Attribute |Description                                                                            |Type    |Default   |
#' |:--------|:---------|:--------------------------------------------------------------------------------------|:-------|:---------|
#' |disabled |disabled  |When true, interaction is prevented and the component is displayed with lower opacity. |boolean |false     |
#' |label    |label     |Accessible name for the component.                                                     |string  |undefined |
#' |selected |selected  |When true, the component is selected.                                                  |boolean |undefined |
#' |value    |value     |The component’s value.                                                                 |any     |undefined |
#' 
#'
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
#' @section Component Details:
#'
#' The below tables illustrate the properties, attributes, and optionally the
#' slots, events, and methods associated with this component.
#'
#' Each attribute can be set by passing it in via `...` as a named value e.g. `"icon-start" = "snow"`.
#'
#' Each event is subscribed to by shiny. The component properties are updated
#' on each of the events.
#'
#' ## Properties
#' |Property         |Attribute         |Description                                                                                                     |Type                                  |Default   |
#' |:----------------|:-----------------|:---------------------------------------------------------------------------------------------------------------|:-------------------------------------|:---------|
#' |groupSeparator   |group-separator   |When true, number values are displayed with a group separator corresponding to the language and country format. |boolean                               |false     |
#' |messageOverrides |message-overrides |Use this property to override individual strings used by the component.                                         |PaginationMessages                    |undefined |
#' |numberingSystem  |numbering-system  |Specifies the Unicode numeral system used by the component for localization.                                    |"arab" &#124; "arabext" &#124; "latn" |undefined |
#' |pageSize         |page-size         |Specifies the number of items per page.                                                                         |number                                |20        |
#' |scale            |scale             |Specifies the size of the component.                                                                            |"l" &#124; "m" &#124; "s"             |"m"       |
#' |startItem        |start-item        |Specifies the starting item number.                                                                             |number                                |1         |
#' |totalItems       |total-items       |Specifies the total number of items.                                                                            |number                                |0         |
#' 
#' ## Events
#' |Event                   |Description                           |Type              |
#' |:-----------------------|:-------------------------------------|:-----------------|
#' |calcitePaginationChange |Emits when the selected page changes. |CustomEvent<void> |
#' 
#'
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
#' @section Component Details:
#'
#' The below tables illustrate the properties, attributes, and optionally the
#' slots, events, and methods associated with this component.
#'
#' Each attribute can be set by passing it in via `...` as a named value e.g. `"icon-start" = "snow"`.
#'
#' Each event is subscribed to by shiny. The component properties are updated
#' on each of the events.
#'
#' ## Properties
#' |Property           |Attribute           |Description                                                                                                                                                                                                                                                                                                                                                         |Type                                                                                                                                                                                                                                                                                                                                                                                            |Default                 |
#' |:------------------|:-------------------|:-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|:-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|:-----------------------|
#' |beforeClose        |–                   |Passes a function to run before the component closes.                                                                                                                                                                                                                                                                                                               |() => Promise<void>                                                                                                                                                                                                                                                                                                                                                                             |undefined               |
#' |closable           |closable            |When true, displays a close button in the trailing side of the header.                                                                                                                                                                                                                                                                                              |boolean                                                                                                                                                                                                                                                                                                                                                                                         |false                   |
#' |closed             |closed              |When true, the component will be hidden.                                                                                                                                                                                                                                                                                                                            |boolean                                                                                                                                                                                                                                                                                                                                                                                         |false                   |
#' |collapsed          |collapsed           |When true, hides the component’s content area.                                                                                                                                                                                                                                                                                                                      |boolean                                                                                                                                                                                                                                                                                                                                                                                         |false                   |
#' |collapsible        |collapsible         |When true, the component is collapsible.                                                                                                                                                                                                                                                                                                                            |boolean                                                                                                                                                                                                                                                                                                                                                                                         |false                   |
#' |description        |description         |A description for the component.                                                                                                                                                                                                                                                                                                                                    |string                                                                                                                                                                                                                                                                                                                                                                                          |undefined               |
#' |disabled           |disabled            |When true, interaction is prevented and the component is displayed with lower opacity.                                                                                                                                                                                                                                                                              |boolean                                                                                                                                                                                                                                                                                                                                                                                         |false                   |
#' |heading            |heading             |The component header text.                                                                                                                                                                                                                                                                                                                                          |string                                                                                                                                                                                                                                                                                                                                                                                          |undefined               |
#' |headingLevel       |heading-level       |Specifies the heading level of the component’s heading for proper document structure, without affecting visual styling.                                                                                                                                                                                                                                             |1 &#124; 2 &#124; 3 &#124; 4 &#124; 5 &#124; 6                                                                                                                                                                                                                                                                                                                                                  |undefined               |
#' |loading            |loading             |When true, a busy indicator is displayed.                                                                                                                                                                                                                                                                                                                           |boolean                                                                                                                                                                                                                                                                                                                                                                                         |false                   |
#' |menuFlipPlacements |–                   |Specifies the component’s fallback menu placement when it’s initial or specified placement has insufficient space available.                                                                                                                                                                                                                                        |FlipPlacement[]                                                                                                                                                                                                                                                                                                                                                                                 |undefined               |
#' |menuOpen           |menu-open           |When true, the action menu items in the header-menu-actions slot are open.                                                                                                                                                                                                                                                                                          |boolean                                                                                                                                                                                                                                                                                                                                                                                         |false                   |
#' |menuPlacement      |menu-placement      |Determines where the action menu will be positioned.                                                                                                                                                                                                                                                                                                                |"auto" &#124; "top" &#124; "bottom" &#124; "right" &#124; "left" &#124; "top-start" &#124; "top-end" &#124; "bottom-start" &#124; "bottom-end" &#124; "right-start" &#124; "right-end" &#124; "left-start" &#124; "left-end" &#124; "leading" &#124; "trailing" &#124; "auto-start" &#124; "auto-end" &#124; "leading-start" &#124; "leading-end" &#124; "trailing-end" &#124; "trailing-start" |defaultEndMenuPlacement |
#' |messageOverrides   |message-overrides   |Use this property to override individual strings used by the component.                                                                                                                                                                                                                                                                                             |PanelMessages                                                                                                                                                                                                                                                                                                                                                                                   |undefined               |
#' |overlayPositioning |overlay-positioning |Determines the type of positioning to use for the overlaid content. Using "absolute" will work for most cases. The component will be positioned inside of overflowing parent containers and will affect the container’s layout. "fixed" should be used to escape an overflowing parent container, or when the reference element’s position CSS property is "fixed". |"absolute" &#124; "fixed"                                                                                                                                                                                                                                                                                                                                                                       |"absolute"              |
#' |scale              |scale               |Specifies the size of the component.                                                                                                                                                                                                                                                                                                                                |"l" &#124; "m" &#124; "s"                                                                                                                                                                                                                                                                                                                                                                       |"m"                     |
#' 
#' ## Events
#' |Event              |Description                                |Type              |
#' |:------------------|:------------------------------------------|:-----------------|
#' |calcitePanelClose  |Fires when the close button is clicked.    |CustomEvent<void> |
#' |calcitePanelScroll |Fires when the content is scrolled.        |CustomEvent<void> |
#' |calcitePanelToggle |Fires when the collapse button is clicked. |CustomEvent<void> |
#' 
#' ## Slots
#' |Slot                   |Description                                                                                                                   |
#' |:----------------------|:-----------------------------------------------------------------------------------------------------------------------------|
#' |                       |A slot for adding custom content.                                                                                             |
#' |"action-bar"           |A slot for adding a calcite-action-bar to the component.                                                                      |
#' |"alerts"               |A slot for adding calcite-alerts to the component.                                                                            |
#' |"content-bottom"       |A slot for adding content below the unnamed (default) slot and above the footer slot (if populated)                           |
#' |"content-top"          |A slot for adding content above the unnamed (default) slot and below the action-bar slot (if populated).                      |
#' |"fab"                  |A slot for adding a calcite-fab (floating action button) to perform an action.                                                |
#' |"footer"               |A slot for adding custom content to the component’s footer. Should not be used with the "footer-start" or "footer-end" slots. |
#' |"footer-actions"       |[Deprecated] Use the footer-start and footer-end slots instead. A slot for adding calcite-buttons to the component’s footer.  |
#' |"footer-end"           |A slot for adding a trailing footer custom content. Should not be used with the "footer" slot.                                |
#' |"footer-start"         |A slot for adding a leading footer custom content. Should not be used with the "footer" slot.                                 |
#' |"header-actions-end"   |A slot for adding actions or content to the end side of the header.                                                           |
#' |"header-actions-start" |A slot for adding actions or content to the start side of the header.                                                         |
#' |"header-content"       |A slot for adding custom content to the header.                                                                               |
#' |"header-menu-actions"  |A slot for adding an overflow menu with actions inside a calcite-dropdown.                                                    |
#' 
#'
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
#' @section Component Details:
#'
#' The below tables illustrate the properties, attributes, and optionally the
#' slots, events, and methods associated with this component.
#'
#' Each attribute can be set by passing it in via `...` as a named value e.g. `"icon-start" = "snow"`.
#'
#' Each event is subscribed to by shiny. The component properties are updated
#' on each of the events.
#'
#' ## Properties
#' |Property                    |Attribute           |Description                                                                                                                                                                                                                                                                                                                                                               |Type                                                                                                                                                                                                                                                                                                                                                                                            |Default                 |
#' |:---------------------------|:-------------------|:-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|:-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|:-----------------------|
#' |autoClose                   |auto-close          |When true, clicking outside of the component automatically closes open calcite-popovers.                                                                                                                                                                                                                                                                                  |boolean                                                                                                                                                                                                                                                                                                                                                                                         |false                   |
#' |closable                    |closable            |When true, displays a close button within the component.                                                                                                                                                                                                                                                                                                                  |boolean                                                                                                                                                                                                                                                                                                                                                                                         |false                   |
#' |flipDisabled                |flip-disabled       |When true, prevents flipping the component’s placement when overlapping its referenceElement.                                                                                                                                                                                                                                                                             |boolean                                                                                                                                                                                                                                                                                                                                                                                         |false                   |
#' |flipPlacements              |–                   |Specifies the component’s fallback placement when it’s initial or specified placement has insufficient space available.                                                                                                                                                                                                                                                   |FlipPlacement[]                                                                                                                                                                                                                                                                                                                                                                                 |undefined               |
#' |focusTrapDisabled           |focus-trap-disabled |When true, prevents focus trapping.                                                                                                                                                                                                                                                                                                                                       |boolean                                                                                                                                                                                                                                                                                                                                                                                         |false                   |
#' |heading                     |heading             |The component header text.                                                                                                                                                                                                                                                                                                                                                |string                                                                                                                                                                                                                                                                                                                                                                                          |undefined               |
#' |headingLevel                |heading-level       |Specifies the heading level of the component’s heading for proper document structure, without affecting visual styling.                                                                                                                                                                                                                                                   |1 &#124; 2 &#124; 3 &#124; 4 &#124; 5 &#124; 6                                                                                                                                                                                                                                                                                                                                                  |undefined               |
#' |label (required)            |label               |Accessible name for the component.                                                                                                                                                                                                                                                                                                                                        |string                                                                                                                                                                                                                                                                                                                                                                                          |undefined               |
#' |messageOverrides            |message-overrides   |Use this property to override individual strings used by the component.                                                                                                                                                                                                                                                                                                   |PopoverMessages                                                                                                                                                                                                                                                                                                                                                                                 |undefined               |
#' |offsetDistance              |offset-distance     |Offsets the position of the popover away from the referenceElement.                                                                                                                                                                                                                                                                                                       |number                                                                                                                                                                                                                                                                                                                                                                                          |defaultOffsetDistance   |
#' |offsetSkidding              |offset-skidding     |Offsets the position of the component along the referenceElement.                                                                                                                                                                                                                                                                                                         |number                                                                                                                                                                                                                                                                                                                                                                                          |0                       |
#' |open                        |open                |When true, displays and positions the component.                                                                                                                                                                                                                                                                                                                          |boolean                                                                                                                                                                                                                                                                                                                                                                                         |false                   |
#' |overlayPositioning          |overlay-positioning |Determines the type of positioning to use for the overlaid content. Using "absolute" will work for most cases. The component will be positioned inside of overflowing parent containers and will affect the container’s layout. "fixed" value should be used to escape an overflowing parent container, or when the reference element’s position CSS property is "fixed". |"absolute" &#124; "fixed"                                                                                                                                                                                                                                                                                                                                                                       |"absolute"              |
#' |placement                   |placement           |Determines where the component will be positioned relative to the referenceElement.                                                                                                                                                                                                                                                                                       |"auto" &#124; "top" &#124; "bottom" &#124; "right" &#124; "left" &#124; "top-start" &#124; "top-end" &#124; "bottom-start" &#124; "bottom-end" &#124; "right-start" &#124; "right-end" &#124; "left-start" &#124; "left-end" &#124; "leading" &#124; "trailing" &#124; "auto-start" &#124; "auto-end" &#124; "leading-start" &#124; "leading-end" &#124; "trailing-end" &#124; "trailing-start" |defaultPopoverPlacement |
#' |pointerDisabled             |pointer-disabled    |When true, removes the caret pointer.                                                                                                                                                                                                                                                                                                                                     |boolean                                                                                                                                                                                                                                                                                                                                                                                         |false                   |
#' |referenceElement (required) |reference-element   |The referenceElement used to position the component according to its placement value. Setting to an HTMLElement is preferred so the component does not need to query the DOM. However, a string id of the reference element can also be used.                                                                                                                             |Element &#124; VirtualElement &#124; string                                                                                                                                                                                                                                                                                                                                                     |undefined               |
#' |scale                       |scale               |Specifies the size of the component.                                                                                                                                                                                                                                                                                                                                      |"l" &#124; "m" &#124; "s"                                                                                                                                                                                                                                                                                                                                                                       |"m"                     |
#' |triggerDisabled             |trigger-disabled    |When true, disables automatically toggling the component when its referenceElement has been triggered. This property can be set to true to manage when the component is open.                                                                                                                                                                                             |boolean                                                                                                                                                                                                                                                                                                                                                                                         |false                   |
#' 
#' ## Events
#' |Event                     |Description                                                                                              |Type              |
#' |:-------------------------|:--------------------------------------------------------------------------------------------------------|:-----------------|
#' |calcitePopoverBeforeClose |Fires when the component is requested to be closed and before the closing transition begins.             |CustomEvent<void> |
#' |calcitePopoverBeforeOpen  |Fires when the component is added to the DOM but not rendered, and before the opening transition begins. |CustomEvent<void> |
#' |calcitePopoverClose       |Fires when the component is closed and animation is complete.                                            |CustomEvent<void> |
#' |calcitePopoverOpen        |Fires when the component is open and animation is complete.                                              |CustomEvent<void> |
#' 
#' ## Slots
#' |Slot |Description                       |
#' |:----|:---------------------------------|
#' |NA   |A slot for adding custom content. |
#' 
#'
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
#' @section Component Details:
#'
#' The below tables illustrate the properties, attributes, and optionally the
#' slots, events, and methods associated with this component.
#'
#' Each attribute can be set by passing it in via `...` as a named value e.g. `"icon-start" = "snow"`.
#'
#' Each event is subscribed to by shiny. The component properties are updated
#' on each of the events.
#'
#' ## Properties
#' |Property |Attribute |Description                                                                                       |Type                                 |Default       |
#' |:--------|:---------|:-------------------------------------------------------------------------------------------------|:------------------------------------|:-------------|
#' |label    |label     |Accessible name for the component.                                                                |string                               |undefined     |
#' |reversed |reversed  |When true and for "indeterminate" progress bars, reverses the animation direction.                |boolean                              |false         |
#' |text     |text      |Text that displays under the component’s indicator.                                               |string                               |undefined     |
#' |type     |type      |Specifies the component type. Use "indeterminate" if finding actual progress value is impossible. |"determinate" &#124; "indeterminate" |"determinate" |
#' |value    |value     |When type is "determinate", the component’s progress value with a range of 0.0 - 1.0.             |number                               |0             |
#' 
#'
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
#' @section Component Details:
#'
#' The below tables illustrate the properties, attributes, and optionally the
#' slots, events, and methods associated with this component.
#'
#' Each attribute can be set by passing it in via `...` as a named value e.g. `"icon-start" = "snow"`.
#'
#' Each event is subscribed to by shiny. The component properties are updated
#' on each of the events.
#'
#' ## Properties
#' |Property          |Attribute          |Description                                                                                          |Type                                         |Default      |
#' |:-----------------|:------------------|:----------------------------------------------------------------------------------------------------|:--------------------------------------------|:------------|
#' |disabled          |disabled           |When true, interaction is prevented and the component is displayed with lower opacity.               |boolean                                      |false        |
#' |layout            |layout             |Defines the layout of the component.                                                                 |"grid" &#124; "horizontal" &#124; "vertical" |"horizontal" |
#' |name (required)   |name               |Specifies the name of the component on form submission. Must be unique to other component instances. |string                                       |undefined    |
#' |required          |required           |When true, the component must have a value in order for the form to submit.                          |boolean                                      |false        |
#' |scale             |scale              |Specifies the size of the component.                                                                 |"l" &#124; "m" &#124; "s"                    |"m"          |
#' |selectedItem      |–                  |Specifies the component’s selected item.                                                             |HTMLCalciteRadioButtonElement                |null         |
#' |status            |status             |Specifies the status of the validation message.                                                      |"idle" &#124; "invalid" &#124; "valid"       |"idle"       |
#' |validationIcon    |validation-icon    |Specifies the validation icon to display under the component.                                        |boolean &#124; string                        |undefined    |
#' |validationMessage |validation-message |Specifies the validation message to display under the component.                                     |string                                       |undefined    |
#' 
#' ## Events
#' |Event                         |Description                           |Type              |
#' |:-----------------------------|:-------------------------------------|:-----------------|
#' |calciteRadioButtonGroupChange |Fires when the component has changed. |CustomEvent<void> |
#' 
#' ## Slots
#' |Slot |Description                              |
#' |:----|:----------------------------------------|
#' |NA   |A slot for adding calcite-radio-buttons. |
#' 
#'
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
#' @section Component Details:
#'
#' The below tables illustrate the properties, attributes, and optionally the
#' slots, events, and methods associated with this component.
#'
#' Each attribute can be set by passing it in via `...` as a named value e.g. `"icon-start" = "snow"`.
#'
#' Each event is subscribed to by shiny. The component properties are updated
#' on each of the events.
#'
#' ## Properties
#' |Property         |Attribute |Description                                                                                                                                           |Type                      |Default   |
#' |:----------------|:---------|:-----------------------------------------------------------------------------------------------------------------------------------------------------|:-------------------------|:---------|
#' |checked          |checked   |When true, the component is checked.                                                                                                                  |boolean                   |false     |
#' |disabled         |disabled  |When true, interaction is prevented and the component is displayed with lower opacity.                                                                |boolean                   |false     |
#' |form             |form      |The id of the form that will be associated with the component. When not set, the component will be associated with its ancestor form element, if any. |string                    |undefined |
#' |guid             |guid      |[DEPRECATED] No longer necessary.The id of the component. When omitted, a globally unique identifier is used.                                         |string                    |undefined |
#' |name             |name      |Specifies the name of the component. Can be inherited from calcite-radio-button-group. Required to pass the component’s value on form submission.     |string                    |undefined |
#' |required         |required  |When true, the component must have a value selected from the calcite-radio-button-group in order for the form to submit.                              |boolean                   |false     |
#' |scale            |scale     |Specifies the size of the component inherited from the calcite-radio-button-group.                                                                    |"l" &#124; "m" &#124; "s" |"m"       |
#' |value (required) |value     |The component’s value.                                                                                                                                |any                       |undefined |
#' 
#' ## Events
#' |Event                    |Description                                                                                                                                                                                                                                                                                                                                                                                                                                             |Type              |
#' |:------------------------|:-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|:-----------------|
#' |calciteRadioButtonChange |Fires only when the radio button is checked. This behavior is identical to the native HTML input element. Since this event does not fire when the radio button is unchecked, it’s not recommended to attach a listener for this event directly on the element, but instead either attach it to a node that contains all of the radio buttons in the group or use the calciteRadioButtonGroupChange event if using this with calcite-radio-button-group. |CustomEvent<void> |
#' 
#'
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
#' @section Component Details:
#'
#' The below tables illustrate the properties, attributes, and optionally the
#' slots, events, and methods associated with this component.
#'
#' Each attribute can be set by passing it in via `...` as a named value e.g. `"icon-start" = "snow"`.
#'
#' Each event is subscribed to by shiny. The component properties are updated
#' on each of the events.
#'
#' ## Properties
#' |Property         |Attribute         |Description                                                                                                                                           |Type                      |Default   |
#' |:----------------|:-----------------|:-----------------------------------------------------------------------------------------------------------------------------------------------------|:-------------------------|:---------|
#' |average          |average           |Specifies a cumulative average from previous ratings to display.                                                                                      |number                    |undefined |
#' |count            |count             |Specifies the number of previous ratings to display.                                                                                                  |number                    |undefined |
#' |disabled         |disabled          |When true, interaction is prevented and the component is displayed with lower opacity.                                                                |boolean                   |false     |
#' |form             |form              |The id of the form that will be associated with the component. When not set, the component will be associated with its ancestor form element, if any. |string                    |undefined |
#' |messageOverrides |message-overrides |Use this property to override individual strings used by the component.                                                                               |RatingMessages            |undefined |
#' |name             |name              |Specifies the name of the component. Required to pass the component’s value on form submission.                                                       |string                    |undefined |
#' |readOnly         |read-only         |When true, the component’s value can be read, but cannot be modified.                                                                                 |boolean                   |false     |
#' |scale            |scale             |Specifies the size of the component.                                                                                                                  |"l" &#124; "m" &#124; "s" |"m"       |
#' |showChip         |show-chip         |When true, and if available, displays the average and/or count data summary in a calcite-chip.                                                        |boolean                   |false     |
#' |value            |value             |The component’s value.                                                                                                                                |number                    |0         |
#' 
#' ## Events
#' |Event               |Description                               |Type              |
#' |:-------------------|:-----------------------------------------|:-----------------|
#' |calciteRatingChange |Fires when the component’s value changes. |CustomEvent<void> |
#' 
#'
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
#' @section Component Details:
#'
#' The below tables illustrate the properties, attributes, and optionally the
#' slots, events, and methods associated with this component.
#'
#' Each attribute can be set by passing it in via `...` as a named value e.g. `"icon-start" = "snow"`.
#'
#' Each event is subscribed to by shiny. The component properties are updated
#' on each of the events.
#'
#' ## Properties
#' |Property         |Attribute         |Description                                                             |Type          |Default   |
#' |:----------------|:-----------------|:-----------------------------------------------------------------------|:-------------|:---------|
#' |loading          |loading           |When true, a busy indicator is displayed.                               |boolean       |false     |
#' |messageOverrides |message-overrides |Use this property to override individual strings used by the component. |ScrimMessages |undefined |
#' 
#' ## Slots
#' |Slot |Description                                                      |
#' |:----|:----------------------------------------------------------------|
#' |NA   |A slot for adding custom content, primarily loading information. |
#' 
#'
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
#' @section Component Details:
#'
#' The below tables illustrate the properties, attributes, and optionally the
#' slots, events, and methods associated with this component.
#'
#' Each attribute can be set by passing it in via `...` as a named value e.g. `"icon-start" = "snow"`.
#'
#' Each event is subscribed to by shiny. The component properties are updated
#' on each of the events.
#'
#' ## Properties
#' |Property    |Attribute     |Description                                                                              |Type    |Default   |
#' |:-----------|:-------------|:----------------------------------------------------------------------------------------|:-------|:---------|
#' |checked     |checked       |When true, the component is checked.                                                     |boolean |false     |
#' |iconEnd     |icon-end      |Specifies an icon to display at the end of the component.                                |string  |undefined |
#' |iconFlipRtl |icon-flip-rtl |When true, the icon will be flipped when the element direction is right-to-left ("rtl"). |boolean |false     |
#' |iconStart   |icon-start    |Specifies an icon to display at the start of the component.                              |string  |undefined |
#' |value       |value         |The component’s value.                                                                   |any     |undefined |
#' 
#'
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
#' @section Component Details:
#'
#' The below tables illustrate the properties, attributes, and optionally the
#' slots, events, and methods associated with this component.
#'
#' Each attribute can be set by passing it in via `...` as a named value e.g. `"icon-start" = "snow"`.
#'
#' Each event is subscribed to by shiny. The component properties are updated
#' on each of the events.
#'
#' ## Properties
#' |Property          |Attribute          |Description                                                                                                                                           |Type                                                                                                                                                                                                                                              |Default                                                                                                                                                                                                                                                                   |
#' |:-----------------|:------------------|:-----------------------------------------------------------------------------------------------------------------------------------------------------|:-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|:-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
#' |appearance        |appearance         |Specifies the appearance style of the component.                                                                                                      |"outline" &#124; "outline-fill" &#124; "solid"                                                                                                                                                                                                    |"solid"                                                                                                                                                                                                                                                                   |
#' |disabled          |disabled           |When true, interaction is prevented and the component is displayed with lower opacity.                                                                |boolean                                                                                                                                                                                                                                           |false                                                                                                                                                                                                                                                                     |
#' |form              |form               |The id of the form that will be associated with the component. When not set, the component will be associated with its ancestor form element, if any. |string                                                                                                                                                                                                                                            |undefined                                                                                                                                                                                                                                                                 |
#' |layout            |layout             |Defines the layout of the component.                                                                                                                  |"horizontal" &#124; "vertical"                                                                                                                                                                                                                    |"horizontal"                                                                                                                                                                                                                                                              |
#' |name              |name               |Specifies the name of the component. Required to pass the component’s value on form submission.                                                       |string                                                                                                                                                                                                                                            |undefined                                                                                                                                                                                                                                                                 |
#' |required          |required           |When true, the component must have a value in order for the form to submit.                                                                           |boolean                                                                                                                                                                                                                                           |false                                                                                                                                                                                                                                                                     |
#' |scale             |scale              |Specifies the size of the component.                                                                                                                  |"l" &#124; "m" &#124; "s"                                                                                                                                                                                                                         |"m"                                                                                                                                                                                                                                                                       |
#' |selectedItem      |–                  |The component’s selected item HTMLElement.                                                                                                            |HTMLCalciteSegmentedControlItemElement                                                                                                                                                                                                            |undefined                                                                                                                                                                                                                                                                 |
#' |status            |status             |Specifies the status of the validation message.                                                                                                       |"idle" &#124; "invalid" &#124; "valid"                                                                                                                                                                                                            |"idle"                                                                                                                                                                                                                                                                    |
#' |validationIcon    |validation-icon    |Specifies the validation icon to display under the component.                                                                                         |boolean &#124; string                                                                                                                                                                                                                             |undefined                                                                                                                                                                                                                                                                 |
#' |validationMessage |validation-message |Specifies the validation message to display under the component.                                                                                      |string                                                                                                                                                                                                                                            |undefined                                                                                                                                                                                                                                                                 |
#' |validity          |–                  |The current validation state of the component.                                                                                                        |{ valid: boolean; badInput: boolean; customError: boolean; patternMismatch: boolean; rangeOverflow: boolean; rangeUnderflow: boolean; stepMismatch: boolean; tooLong: boolean; tooShort: boolean; typeMismatch: boolean; valueMissing: boolean; } |{     valid: false,     badInput: false,     customError: false,     patternMismatch: false,     rangeOverflow: false,     rangeUnderflow: false,     stepMismatch: false,     tooLong: false,     tooShort: false,     typeMismatch: false,     valueMissing: false,   } |
#' |value             |value              |The component’s selectedItem value.                                                                                                                   |string                                                                                                                                                                                                                                            |null                                                                                                                                                                                                                                                                      |
#' |width             |width              |Specifies the width of the component.                                                                                                                 |"auto" &#124; "full"                                                                                                                                                                                                                              |"auto"                                                                                                                                                                                                                                                                    |
#' 
#' ## Events
#' |Event                         |Description                                                      |Type              |
#' |:-----------------------------|:----------------------------------------------------------------|:-----------------|
#' |calciteSegmentedControlChange |Fires when the calcite-segmented-control-item selection changes. |CustomEvent<void> |
#' 
#' ## Slots
#' |Slot |Description                                        |
#' |:----|:--------------------------------------------------|
#' |NA   |A slot for adding calcite-segmented-control-items. |
#' 
#'
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
#' @section Component Details:
#'
#' The below tables illustrate the properties, attributes, and optionally the
#' slots, events, and methods associated with this component.
#'
#' Each attribute can be set by passing it in via `...` as a named value e.g. `"icon-start" = "snow"`.
#'
#' Each event is subscribed to by shiny. The component properties are updated
#' on each of the events.
#'
#' ## Properties
#' |Property          |Attribute          |Description                                                                                                                                           |Type                                                                                                                                                                                                                                              |Default                                                                                                                                                                                                                                                                   |
#' |:-----------------|:------------------|:-----------------------------------------------------------------------------------------------------------------------------------------------------|:-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|:-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
#' |disabled          |disabled           |When true, interaction is prevented and the component is displayed with lower opacity.                                                                |boolean                                                                                                                                                                                                                                           |false                                                                                                                                                                                                                                                                     |
#' |form              |form               |The id of the form that will be associated with the component. When not set, the component will be associated with its ancestor form element, if any. |string                                                                                                                                                                                                                                            |undefined                                                                                                                                                                                                                                                                 |
#' |label (required)  |label              |Accessible name for the component.                                                                                                                    |string                                                                                                                                                                                                                                            |undefined                                                                                                                                                                                                                                                                 |
#' |name              |name               |Specifies the name of the component. Required to pass the component’s value on form submission.                                                       |string                                                                                                                                                                                                                                            |undefined                                                                                                                                                                                                                                                                 |
#' |required          |required           |When true, the component must have a value in order for the form to submit.                                                                           |boolean                                                                                                                                                                                                                                           |false                                                                                                                                                                                                                                                                     |
#' |scale             |scale              |Specifies the size of the component.                                                                                                                  |"l" &#124; "m" &#124; "s"                                                                                                                                                                                                                         |"m"                                                                                                                                                                                                                                                                       |
#' |selectedOption    |–                  |The component’s selected option HTMLElement.                                                                                                          |HTMLCalciteOptionElement                                                                                                                                                                                                                          |undefined                                                                                                                                                                                                                                                                 |
#' |status            |status             |Specifies the status of the input field, which determines message and icons.                                                                          |"idle" &#124; "invalid" &#124; "valid"                                                                                                                                                                                                            |"idle"                                                                                                                                                                                                                                                                    |
#' |validationIcon    |validation-icon    |Specifies the validation icon to display under the component.                                                                                         |boolean &#124; string                                                                                                                                                                                                                             |undefined                                                                                                                                                                                                                                                                 |
#' |validationMessage |validation-message |Specifies the validation message to display under the component.                                                                                      |string                                                                                                                                                                                                                                            |undefined                                                                                                                                                                                                                                                                 |
#' |validity          |–                  |The current validation state of the component.                                                                                                        |{ valid: boolean; badInput: boolean; customError: boolean; patternMismatch: boolean; rangeOverflow: boolean; rangeUnderflow: boolean; stepMismatch: boolean; tooLong: boolean; tooShort: boolean; typeMismatch: boolean; valueMissing: boolean; } |{     valid: false,     badInput: false,     customError: false,     patternMismatch: false,     rangeOverflow: false,     rangeUnderflow: false,     stepMismatch: false,     tooLong: false,     tooShort: false,     typeMismatch: false,     valueMissing: false,   } |
#' |value             |value              |The component’s selectedOption value.                                                                                                                 |string                                                                                                                                                                                                                                            |null                                                                                                                                                                                                                                                                      |
#' |width             |width              |Specifies the width of the component.                                                                                                                 |"auto" &#124; "full" &#124; "half"                                                                                                                                                                                                                |"auto"                                                                                                                                                                                                                                                                    |
#' 
#' ## Events
#' |Event               |Description                            |Type              |
#' |:-------------------|:--------------------------------------|:-----------------|
#' |calciteSelectChange |Fires when the selectedOption changes. |CustomEvent<void> |
#' 
#' ## Slots
#' |Slot |Description                        |
#' |:----|:----------------------------------|
#' |NA   |A slot for adding calcite-options. |
#' 
#'
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
#' @section Component Details:
#'
#' The below tables illustrate the properties, attributes, and optionally the
#' slots, events, and methods associated with this component.
#'
#' Each attribute can be set by passing it in via `...` as a named value e.g. `"icon-start" = "snow"`.
#'
#' Each event is subscribed to by shiny. The component properties are updated
#' on each of the events.
#'
#' ## Properties
#' |Property             |Attribute              |Description                                                                                                             |Type                                                                       |Default        |
#' |:--------------------|:----------------------|:-----------------------------------------------------------------------------------------------------------------------|:--------------------------------------------------------------------------|:--------------|
#' |beforeClose          |–                      |Passes a function to run before the component closes.                                                                   |(el: HTMLCalciteSheetElement) => Promise<void>                             |undefined      |
#' |displayMode          |display-mode           |Specifies the display mode - "float" (content is separated detached), or "overlay" (displays on top of center content). |"float" &#124; "overlay"                                                   |"overlay"      |
#' |escapeDisabled       |escape-disabled        |When true, disables the default close on escape behavior.                                                               |boolean                                                                    |false          |
#' |focusTrapDisabled    |focus-trap-disabled    |When true, prevents focus trapping.                                                                                     |boolean                                                                    |false          |
#' |heightScale          |height-scale           |When position is "block-start" or "block-end", specifies the height of the component.                                   |"l" &#124; "m" &#124; "s"                                                  |"m"            |
#' |label (required)     |label                  |Specifies the label of the component.                                                                                   |string                                                                     |undefined      |
#' |open                 |open                   |When true, displays and positions the component.                                                                        |boolean                                                                    |false          |
#' |outsideCloseDisabled |outside-close-disabled |When true, disables the closing of the component when clicked outside.                                                  |boolean                                                                    |false          |
#' |position             |position               |Determines where the component will be positioned.                                                                      |"block-end" &#124; "block-start" &#124; "inline-end" &#124; "inline-start" |"inline-start" |
#' |widthScale           |width-scale            |When position is "inline-start" or "inline-end", specifies the width of the component.                                  |"l" &#124; "m" &#124; "s"                                                  |"m"            |
#' 
#' ## Events
#' |Event                   |Description                                                                                              |Type              |
#' |:-----------------------|:--------------------------------------------------------------------------------------------------------|:-----------------|
#' |calciteSheetBeforeClose |Fires when the component is requested to be closed and before the closing transition begins.             |CustomEvent<void> |
#' |calciteSheetBeforeOpen  |Fires when the component is added to the DOM but not rendered, and before the opening transition begins. |CustomEvent<void> |
#' |calciteSheetClose       |Fires when the component is closed and animation is complete.                                            |CustomEvent<void> |
#' |calciteSheetOpen        |Fires when the component is open and animation is complete.                                              |CustomEvent<void> |
#' 
#'
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
#' @section Component Details:
#'
#' The below tables illustrate the properties, attributes, and optionally the
#' slots, events, and methods associated with this component.
#'
#' Each attribute can be set by passing it in via `...` as a named value e.g. `"icon-start" = "snow"`.
#'
#' Each event is subscribed to by shiny. The component properties are updated
#' on each of the events.
#'
#' ## Properties
#' |Property    |Attribute    |Description                                                                                              |Type                      |Default |
#' |:-----------|:------------|:--------------------------------------------------------------------------------------------------------|:-------------------------|:-------|
#' |detached    |detached     |When true, the content area displays like a floating panel.                                              |boolean                   |false   |
#' |heightScale |height-scale |Specifies the maximum height of the component.                                                           |"l" &#124; "m" &#124; "s" |"s"     |
#' |position    |position     |Specifies the component’s position. Will be flipped when the element direction is right-to-left ("rtl"). |"end" &#124; "start"      |"end"   |
#' 
#' ## Slots
#' |Slot         |Description                                                        |
#' |:------------|:------------------------------------------------------------------|
#' |             |A slot for adding content to the calcite-shell-panel.              |
#' |"action-bar" |A slot for adding a calcite-action-bar to the calcite-shell-panel. |
#' 
#'
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
#' @section Component Details:
#'
#' The below tables illustrate the properties, attributes, and optionally the
#' slots, events, and methods associated with this component.
#'
#' Each attribute can be set by passing it in via `...` as a named value e.g. `"icon-start" = "snow"`.
#'
#' Each event is subscribed to by shiny. The component properties are updated
#' on each of the events.
#'
#' ## Properties
#' |Property            |Attribute             |Description                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |Type                                                                             |Default    |
#' |:-------------------|:---------------------|:-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|:--------------------------------------------------------------------------------|:----------|
#' |collapsed           |collapsed             |When true, hides the component’s content area.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |boolean                                                                          |false      |
#' |detached            |detached              |[DEPRECATED] Use displayMode instead.When true, the content area displays like a floating panel.                                                                                                                                                                                                                                                                                                                                                                                                                                                  |boolean                                                                          |false      |
#' |detachedHeightScale |detached-height-scale |[DEPRECATED] Use heightScale instead.When displayMode is float-content or float, specifies the maximum height of the component.                                                                                                                                                                                                                                                                                                                                                                                                                   |"l" &#124; "m" &#124; "s"                                                        |undefined  |
#' |displayMode         |display-mode          |Specifies the display mode of the component, where: "dock" displays at full height adjacent to center content, "overlay" displays at full height on top of center content, and "float" [Deprecated] does not display at full height with content separately detached from calcite-action-bar on top of center content. "float-content" does not display at full height with content separately detached from calcite-action-bar on top of center content. "float-all" detaches the calcite-panel and calcite-action-bar on top of center content. |"dock" &#124; "float" &#124; "float-all" &#124; "float-content" &#124; "overlay" |"dock"     |
#' |heightScale         |height-scale          |When layout is horizontal, specifies the maximum height of the component.                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |"l" &#124; "m" &#124; "s"                                                        |undefined  |
#' |layout              |layout                |The direction of the component.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |"horizontal" &#124; "vertical"                                                   |"vertical" |
#' |messageOverrides    |message-overrides     |Use this property to override individual strings used by the component.                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |ShellPanelMessages                                                               |undefined  |
#' |position            |position              |Specifies the component’s position. Will be flipped when the element direction is right-to-left ("rtl").                                                                                                                                                                                                                                                                                                                                                                                                                                          |"end" &#124; "start"                                                             |"start"    |
#' |resizable           |resizable             |When true and displayMode is not float-content or float, the component’s content area is resizable.                                                                                                                                                                                                                                                                                                                                                                                                                                               |boolean                                                                          |false      |
#' |widthScale          |width-scale           |When layout is vertical, specifies the width of the component.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |"l" &#124; "m" &#124; "s"                                                        |"m"        |
#' 
#' ## Slots
#' |Slot         |Description                                              |
#' |:------------|:--------------------------------------------------------|
#' |             |A slot for adding custom content.                        |
#' |"action-bar" |A slot for adding a calcite-action-bar to the component. |
#' 
#'
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
#' @section Component Details:
#'
#' The below tables illustrate the properties, attributes, and optionally the
#' slots, events, and methods associated with this component.
#'
#' Each attribute can be set by passing it in via `...` as a named value e.g. `"icon-start" = "snow"`.
#'
#' Each event is subscribed to by shiny. The component properties are updated
#' on each of the events.
#'
#' ## Properties
#' |Property      |Attribute      |Description                                                   |Type    |Default |
#' |:-------------|:--------------|:-------------------------------------------------------------|:-------|:-------|
#' |contentBehind |content-behind |Positions the center content behind any calcite-shell-panels. |boolean |false   |
#' 
#' ## Slots
#' |Slot           |Description                                                                                                                                        |
#' |:--------------|:--------------------------------------------------------------------------------------------------------------------------------------------------|
#' |               |A slot for adding custom content. This content will appear between any leading and trailing panels added to the component, such as a map.          |
#' |"alerts"       |A slot for adding calcite-alert components. When placed in this slot, the alert position will be constrained to the extent of the calcite-shell.   |
#' |"center-row"   |[Deprecated] Use the "panel-bottom" slot instead. A slot for adding the bottom calcite-shell-center-row.                                           |
#' |"dialogs"      |A slot for adding calcite-dialog components. When placed in this slot, the dialog position will be constrained to the extent of the calcite-shell. |
#' |"footer"       |A slot for adding footer content. This content will be positioned at the bottom of the component.                                                  |
#' |"header"       |A slot for adding header content. This content will be positioned at the top of the component.                                                     |
#' |"modals"       |A slot for adding calcite-modal components. When placed in this slot, the modal position will be constrained to the extent of the calcite-shell.   |
#' |"panel-bottom" |A slot for adding the bottom calcite-shell-panel.                                                                                                  |
#' |"panel-end"    |A slot for adding the ending calcite-shell-panel.                                                                                                  |
#' |"panel-start"  |A slot for adding the starting calcite-shell-panel.                                                                                                |
#' |"panel-top"    |A slot for adding the top calcite-shell-panel.                                                                                                     |
#' |"sheets"       |A slot for adding calcite-sheet components. When placed in this slot, the sheet position will be constrained to the extent of the calcite-shell.   |
#' 
#'
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
#' @section Component Details:
#'
#' The below tables illustrate the properties, attributes, and optionally the
#' slots, events, and methods associated with this component.
#'
#' Each attribute can be set by passing it in via `...` as a named value e.g. `"icon-start" = "snow"`.
#'
#' Each event is subscribed to by shiny. The component properties are updated
#' on each of the events.
#'
#' ## Properties
#' |Property        |Attribute        |Description                                                                                                                                                                 |Type                                                                                                                          |Default   |
#' |:---------------|:----------------|:---------------------------------------------------------------------------------------------------------------------------------------------------------------------------|:-----------------------------------------------------------------------------------------------------------------------------|:---------|
#' |disabled        |disabled         |When true, interaction is prevented and the component is displayed with lower opacity.                                                                                      |boolean                                                                                                                       |false     |
#' |fillPlacement   |fill-placement   |Used to configure where the fill is placed along the slider track in relation to the value handle. Range mode will always display the fill between the min and max handles. |"end" &#124; "none" &#124; "start"                                                                                            |"start"   |
#' |form            |form             |The id of the form that will be associated with the component. When not set, the component will be associated with its ancestor form element, if any.                       |string                                                                                                                        |undefined |
#' |groupSeparator  |group-separator  |When true, number values are displayed with a group separator corresponding to the language and country format.                                                             |boolean                                                                                                                       |false     |
#' |hasHistogram    |has-histogram    |When true, indicates a histogram is present.                                                                                                                                |boolean                                                                                                                       |false     |
#' |histogram       |–                |A list of the histogram’s x,y coordinates within the component’s min and max. Displays above the component’s track.                                                         |Point[]                                                                                                                       |undefined |
#' |histogramStops  |–                |A set of single color stops for a histogram, sorted by offset ascending.                                                                                                    |ColorStop[]                                                                                                                   |undefined |
#' |labelFormatter  |–                |When specified, allows users to customize handle labels.                                                                                                                    |(value: number, type: "value" &#124; "max" &#124; "min" &#124; "tick", defaultFormatter: (value: number) => string) => string |undefined |
#' |labelHandles    |label-handles    |When true, displays label handles with their numeric value.                                                                                                                 |boolean                                                                                                                       |false     |
#' |labelTicks      |label-ticks      |When true and ticks is specified, displays label tick marks with their numeric value.                                                                                       |boolean                                                                                                                       |false     |
#' |max             |max              |The component’s maximum selectable value.                                                                                                                                   |number                                                                                                                        |100       |
#' |maxLabel        |max-label        |For multiple selections, the accessible name for the second handle, such as "Temperature, upper bound".                                                                     |string                                                                                                                        |undefined |
#' |maxValue        |max-value        |For multiple selections, the component’s upper value.                                                                                                                       |number                                                                                                                        |undefined |
#' |min             |min              |The component’s minimum selectable value.                                                                                                                                   |number                                                                                                                        |0         |
#' |minLabel        |min-label        |Accessible name for first (or only) handle, such as "Temperature, lower bound".                                                                                             |string                                                                                                                        |undefined |
#' |minValue        |min-value        |For multiple selections, the component’s lower value.                                                                                                                       |number                                                                                                                        |undefined |
#' |mirrored        |mirrored         |When true, the slider will display values from high to low. Note that this value will be ignored if the slider has an associated histogram.                                 |boolean                                                                                                                       |false     |
#' |name            |name             |Specifies the name of the component. Required to pass the component’s value on form submission.                                                                             |string                                                                                                                        |undefined |
#' |numberingSystem |numbering-system |Specifies the Unicode numeral system used by the component for localization.                                                                                                |"arab" &#124; "arabext" &#124; "latn"                                                                                         |undefined |
#' |pageStep        |page-step        |Specifies the interval to move with the page up, or page down keys.                                                                                                         |number                                                                                                                        |undefined |
#' |precise         |precise          |When true, sets a finer point for handles.                                                                                                                                  |boolean                                                                                                                       |false     |
#' |required        |required         |When true, the component must have a value in order for the form to submit.                                                                                                 |boolean                                                                                                                       |false     |
#' |scale           |scale            |Specifies the size of the component.                                                                                                                                        |"l" &#124; "m" &#124; "s"                                                                                                     |"m"       |
#' |snap            |snap             |When true, enables snap selection in coordination with step via a mouse.                                                                                                    |boolean                                                                                                                       |false     |
#' |step            |step             |Specifies the interval to move with the up, or down keys.                                                                                                                   |number                                                                                                                        |1         |
#' |ticks           |ticks            |Displays tick marks on the number line at a specified interval.                                                                                                             |number                                                                                                                        |undefined |
#' |value           |value            |The component’s value.                                                                                                                                                      |number &#124; number[]                                                                                                        |0         |
#' 
#' ## Events
#' |Event               |Description                                                                                                                                                                           |Type              |
#' |:-------------------|:-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|:-----------------|
#' |calciteSliderChange |Fires when the thumb is released on the component. Note: To constantly listen to the drag event, use calciteSliderInput instead.                                                      |CustomEvent<void> |
#' |calciteSliderInput  |Fires on all updates to the component. Note: Fires frequently during drag. To perform expensive operations consider using a debounce or throttle to avoid locking up the main thread. |CustomEvent<void> |
#' 
#'
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
#'
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
#' @section Component Details:
#'
#' The below tables illustrate the properties, attributes, and optionally the
#' slots, events, and methods associated with this component.
#'
#' Each attribute can be set by passing it in via `...` as a named value e.g. `"icon-start" = "snow"`.
#'
#' Each event is subscribed to by shiny. The component properties are updated
#' on each of the events.
#'
#' ## Properties
#' |Property       |Attribute       |Description                                                                                                          |Type                                         |Default          |
#' |:--------------|:---------------|:--------------------------------------------------------------------------------------------------------------------|:--------------------------------------------|:----------------|
#' |canPull        |–               |When provided, the method will be called to determine whether the element can move from the list.                    |(detail: DragDetail) => boolean              |undefined        |
#' |canPut         |–               |When provided, the method will be called to determine whether the element can be added from another list.            |(detail: DragDetail) => boolean              |undefined        |
#' |disabled       |disabled        |When true, disabled prevents interaction. This state shows items with lower opacity/grayed.                          |boolean                                      |false            |
#' |dragSelector   |drag-selector   |Specifies which items inside the element should be draggable.                                                        |string                                       |undefined        |
#' |group          |group           |The list’s group identifier. To drag elements from one list into another, both lists must have the same group value. |string                                       |undefined        |
#' |handleSelector |handle-selector |The selector for the handle elements.                                                                                |string                                       |"calcite-handle" |
#' |layout         |layout          |Indicates the horizontal or vertical orientation of the component.                                                   |"grid" &#124; "horizontal" &#124; "vertical" |"vertical"       |
#' |loading        |loading         |When true, content is waiting to be loaded. This state shows a busy indicator.                                       |boolean                                      |false            |
#' 
#' ## Events
#' |Event                  |Description                                     |Type              |
#' |:----------------------|:-----------------------------------------------|:-----------------|
#' |calciteListOrderChange |Emitted when the order of the list has changed. |CustomEvent<void> |
#' 
#' ## Slots
#' |Slot |Description                       |
#' |:----|:---------------------------------|
#' |NA   |A slot for adding sortable items. |
#' 
#'
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
#' @section Component Details:
#'
#' The below tables illustrate the properties, attributes, and optionally the
#' slots, events, and methods associated with this component.
#'
#' Each attribute can be set by passing it in via `...` as a named value e.g. `"icon-start" = "snow"`.
#'
#' Each event is subscribed to by shiny. The component properties are updated
#' on each of the events.
#'
#' ## Properties
#' |Property           |Attribute             |Description                                                                                                                                                                                                                                                                                                                                                         |Type                                                                                                |Default      |
#' |:------------------|:---------------------|:-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|:---------------------------------------------------------------------------------------------------|:------------|
#' |appearance         |appearance            |Specifies the appearance style of the component.                                                                                                                                                                                                                                                                                                                    |"outline" &#124; "outline-fill" &#124; "solid" &#124; "transparent"                                 |"solid"      |
#' |disabled           |disabled              |When true, interaction is prevented and the component is displayed with lower opacity.                                                                                                                                                                                                                                                                              |boolean                                                                                             |false        |
#' |dropdownIconType   |dropdown-icon-type    |Specifies the icon used for the dropdown menu.                                                                                                                                                                                                                                                                                                                      |"caret" &#124; "chevron" &#124; "ellipsis" &#124; "overflow"                                        |"chevron"    |
#' |dropdownLabel      |dropdown-label        |Accessible name for the dropdown menu.                                                                                                                                                                                                                                                                                                                              |string                                                                                              |undefined    |
#' |flipPlacements     |–                     |Specifies the component’s fallback slotted content placement when it’s initial or specified placement has insufficient space available.                                                                                                                                                                                                                             |FlipPlacement[]                                                                                     |undefined    |
#' |kind               |kind                  |Specifies the kind of the component, which will apply to border and background, if applicable.                                                                                                                                                                                                                                                                      |"brand" &#124; "danger" &#124; "inverse" &#124; "neutral"                                           |"brand"      |
#' |loading            |loading               |When true, a busy indicator is displayed on the primary button.                                                                                                                                                                                                                                                                                                     |boolean                                                                                             |false        |
#' |overlayPositioning |overlay-positioning   |Determines the type of positioning to use for the overlaid content. Using "absolute" will work for most cases. The component will be positioned inside of overflowing parent containers and will affect the container’s layout. "fixed" should be used to escape an overflowing parent container, or when the reference element’s position CSS property is "fixed". |"absolute" &#124; "fixed"                                                                           |"absolute"   |
#' |placement          |placement             |Determines where the component will be positioned relative to the container element.                                                                                                                                                                                                                                                                                |"bottom" &#124; "bottom-end" &#124; "bottom-start" &#124; "top" &#124; "top-end" &#124; "top-start" |"bottom-end" |
#' |primaryIconEnd     |primary-icon-end      |Specifies an icon to display at the end of the primary button.                                                                                                                                                                                                                                                                                                      |string                                                                                              |undefined    |
#' |primaryIconFlipRtl |primary-icon-flip-rtl |Displays the primaryIconStart and/or primaryIconEnd as flipped when the element direction is right-to-left ("rtl").                                                                                                                                                                                                                                                 |"both" &#124; "end" &#124; "start"                                                                  |undefined    |
#' |primaryIconStart   |primary-icon-start    |Specifies an icon to display at the start of the primary button.                                                                                                                                                                                                                                                                                                    |string                                                                                              |undefined    |
#' |primaryLabel       |primary-label         |Accessible name for the primary button.                                                                                                                                                                                                                                                                                                                             |string                                                                                              |undefined    |
#' |primaryText        |primary-text          |Text displayed in the primary button.                                                                                                                                                                                                                                                                                                                               |string                                                                                              |undefined    |
#' |scale              |scale                 |Specifies the size of the component.                                                                                                                                                                                                                                                                                                                                |"l" &#124; "m" &#124; "s"                                                                           |"m"          |
#' |width              |width                 |Specifies the width of the component.                                                                                                                                                                                                                                                                                                                               |"auto" &#124; "full" &#124; "half"                                                                  |"auto"       |
#' 
#' ## Events
#' |Event                            |Description                               |Type              |
#' |:--------------------------------|:-----------------------------------------|:-----------------|
#' |calciteSplitButtonPrimaryClick   |Fires when the primary button is clicked. |CustomEvent<void> |
#' |calciteSplitButtonSecondaryClick |Fires when the dropdown menu is clicked.  |CustomEvent<void> |
#' 
#' ## Slots
#' |Slot |Description                                 |
#' |:----|:-------------------------------------------|
#' |NA   |A slot for adding calcite-dropdown content. |
#' 
#'
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
#' @section Component Details:
#'
#' The below tables illustrate the properties, attributes, and optionally the
#' slots, events, and methods associated with this component.
#'
#' Each attribute can be set by passing it in via `...` as a named value e.g. `"icon-start" = "snow"`.
#'
#' Each event is subscribed to by shiny. The component properties are updated
#' on each of the events.
#'
#' ## Properties
#' |Property |Attribute |Description                                                                   |Type    |Default |
#' |:--------|:---------|:-----------------------------------------------------------------------------|:-------|:-------|
#' |disabled |disabled  |When true, content interaction is prevented and displayed with lower opacity. |boolean |false   |
#' 
#' ## Slots
#' |Slot            |Description                                                                               |
#' |:---------------|:-----------------------------------------------------------------------------------------|
#' |                |A slot for adding content.                                                                |
#' |"actions-end"   |A slot for adding actionable calcite-action elements after the content of the component.  |
#' |"actions-start" |A slot for adding actionable calcite-action elements before the content of the component. |
#' |"content-end"   |A slot for adding non-actionable elements after content of the component.                 |
#' |"content-start" |A slot for adding non-actionable elements before content of the component.                |
#' 
#'
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
#' @section Component Details:
#'
#' The below tables illustrate the properties, attributes, and optionally the
#' slots, events, and methods associated with this component.
#'
#' Each attribute can be set by passing it in via `...` as a named value e.g. `"icon-start" = "snow"`.
#'
#' Each event is subscribed to by shiny. The component properties are updated
#' on each of the events.
#'
#' ## Properties
#' |Property         |Attribute         |Description                                                                              |Type                |Default   |
#' |:----------------|:-----------------|:----------------------------------------------------------------------------------------|:-------------------|:---------|
#' |complete         |complete          |When true, the step has been completed.                                                  |boolean             |false     |
#' |description      |description       |A description for the component. Displays below the header text.                         |string              |undefined |
#' |disabled         |disabled          |When true, interaction is prevented and the component is displayed with lower opacity.   |boolean             |false     |
#' |error            |error             |When true, the component contains an error that requires resolution from the user.       |boolean             |false     |
#' |heading          |heading           |The component header text.                                                               |string              |undefined |
#' |iconFlipRtl      |icon-flip-rtl     |When true, the icon will be flipped when the element direction is right-to-left ("rtl"). |boolean             |false     |
#' |messageOverrides |message-overrides |Use this property to override individual strings used by the component.                  |StepperItemMessages |undefined |
#' |selected         |selected          |When true, the component is selected.                                                    |boolean             |false     |
#' 
#' ## Events
#' |Event                    |Description                                         |Type              |
#' |:------------------------|:---------------------------------------------------|:-----------------|
#' |calciteStepperItemSelect |Fires when the active calcite-stepper-item changes. |CustomEvent<void> |
#' 
#' ## Slots
#' |Slot |Description                       |
#' |:----|:---------------------------------|
#' |NA   |A slot for adding custom content. |
#' 
#'
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
#' @section Component Details:
#'
#' The below tables illustrate the properties, attributes, and optionally the
#' slots, events, and methods associated with this component.
#'
#' Each attribute can be set by passing it in via `...` as a named value e.g. `"icon-start" = "snow"`.
#'
#' Each event is subscribed to by shiny. The component properties are updated
#' on each of the events.
#'
#' ## Properties
#' |Property         |Attribute         |Description                                                                  |Type                                                      |Default      |
#' |:----------------|:-----------------|:----------------------------------------------------------------------------|:---------------------------------------------------------|:------------|
#' |icon             |icon              |When true, displays a status icon in the calcite-stepper-item heading.       |boolean                                                   |false        |
#' |layout           |layout            |Defines the layout of the component.                                         |"horizontal" &#124; "horizontal-single" &#124; "vertical" |"horizontal" |
#' |messageOverrides |message-overrides |Use this property to override individual strings used by the component.      |StepperMessages                                           |undefined    |
#' |numbered         |numbered          |When true, displays the step number in the calcite-stepper-item heading.     |boolean                                                   |false        |
#' |numberingSystem  |numbering-system  |Specifies the Unicode numeral system used by the component for localization. |"arab" &#124; "arabext" &#124; "latn"                     |undefined    |
#' |scale            |scale             |Specifies the size of the component.                                         |"l" &#124; "m" &#124; "s"                                 |"m"          |
#' |selectedItem     |–                 |Specifies the component’s selected item.                                     |HTMLCalciteStepperItemElement                             |null         |
#' 
#' ## Events
#' |Event                    |Description                                                                                                                                    |Type              |
#' |:------------------------|:----------------------------------------------------------------------------------------------------------------------------------------------|:-----------------|
#' |calciteStepperChange     |Fires when the active calcite-stepper-item changes.                                                                                            |CustomEvent<void> |
#' |calciteStepperItemChange |[DEPRECATED] use calciteStepperChange instead or calciteStepperItemChange on items instead.Fires when the active calcite-stepper-item changes. |CustomEvent<void> |
#' 
#' ## Slots
#' |Slot |Description                                      |
#' |:----|:------------------------------------------------|
#' |NA   |A slot for adding calcite-stepper-item elements. |
#' 
#'
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
#' @section Component Details:
#'
#' The below tables illustrate the properties, attributes, and optionally the
#' slots, events, and methods associated with this component.
#'
#' Each attribute can be set by passing it in via `...` as a named value e.g. `"icon-start" = "snow"`.
#'
#' Each event is subscribed to by shiny. The component properties are updated
#' on each of the events.
#'
#' ## Properties
#' |Property |Attribute |Description                                                                                                                                           |Type                      |Default   |
#' |:--------|:---------|:-----------------------------------------------------------------------------------------------------------------------------------------------------|:-------------------------|:---------|
#' |checked  |checked   |When true, the component is checked.                                                                                                                  |boolean                   |false     |
#' |disabled |disabled  |When true, interaction is prevented and the component is displayed with lower opacity.                                                                |boolean                   |false     |
#' |form     |form      |The id of the form that will be associated with the component. When not set, the component will be associated with its ancestor form element, if any. |string                    |undefined |
#' |label    |label     |Accessible name for the component.                                                                                                                    |string                    |undefined |
#' |name     |name      |Specifies the name of the component. Required to pass the component’s value on form submission.                                                       |string                    |undefined |
#' |scale    |scale     |Specifies the size of the component.                                                                                                                  |"l" &#124; "m" &#124; "s" |"m"       |
#' |value    |value     |The component’s value.                                                                                                                                |any                       |undefined |
#' 
#' ## Events
#' |Event               |Description                               |Type              |
#' |:-------------------|:-----------------------------------------|:-----------------|
#' |calciteSwitchChange |Fires when the checked value has changed. |CustomEvent<void> |
#' 
#'
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
#' @section Component Details:
#'
#' The below tables illustrate the properties, attributes, and optionally the
#' slots, events, and methods associated with this component.
#'
#' Each attribute can be set by passing it in via `...` as a named value e.g. `"icon-start" = "snow"`.
#'
#' Each event is subscribed to by shiny. The component properties are updated
#' on each of the events.
#'
#' ## Properties
#' |Property         |Attribute         |Description                                                                  |Type                       |Default   |
#' |:----------------|:-----------------|:----------------------------------------------------------------------------|:--------------------------|:---------|
#' |messageOverrides |message-overrides |Use this property to override individual strings used by the component.      |TabNavMessages             |undefined |
#' |selectedTitle    |–                 |Specifies the component’s selected calcite-tab-title.                        |HTMLCalciteTabTitleElement |null      |
#' |storageId        |storage-id        |Specifies the name when saving selected calcite-tab data to localStorage.    |string                     |undefined |
#' |syncId           |sync-id           |Specifies text to update multiple components to keep in sync if one changes. |string                     |undefined |
#' 
#' ## Events
#' |Event            |Description                                  |Type              |
#' |:----------------|:--------------------------------------------|:-----------------|
#' |calciteTabChange |Emits when the selected calcite-tab changes. |CustomEvent<void> |
#' 
#' ## Slots
#' |Slot |Description                           |
#' |:----|:-------------------------------------|
#' |NA   |A slot for adding calcite-tab-titles. |
#' 
#'
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
#' @section Component Details:
#'
#' The below tables illustrate the properties, attributes, and optionally the
#' slots, events, and methods associated with this component.
#'
#' Each attribute can be set by passing it in via `...` as a named value e.g. `"icon-start" = "snow"`.
#'
#' Each event is subscribed to by shiny. The component properties are updated
#' on each of the events.
#'
#' ## Properties
#' |Property         |Attribute         |Description                                                                                                                                 |Type                               |Default   |
#' |:----------------|:-----------------|:-------------------------------------------------------------------------------------------------------------------------------------------|:----------------------------------|:---------|
#' |closable         |closable          |When true, a close button is added to the component.                                                                                        |boolean                            |false     |
#' |closed           |closed            |When true, does not display or position the component.                                                                                      |boolean                            |false     |
#' |disabled         |disabled          |When true, interaction is prevented and the component is displayed with lower opacity.                                                      |boolean                            |false     |
#' |iconEnd          |icon-end          |Specifies an icon to display at the end of the component.                                                                                   |string                             |undefined |
#' |iconFlipRtl      |icon-flip-rtl     |Displays the iconStart and/or iconEnd as flipped when the element direction is right-to-left ("rtl").                                       |"both" &#124; "end" &#124; "start" |undefined |
#' |iconStart        |icon-start        |Specifies an icon to display at the start of the component.                                                                                 |string                             |undefined |
#' |messageOverrides |message-overrides |Use this property to override individual strings used by the component.                                                                     |TabTitleMessages                   |undefined |
#' |selected         |selected          |When true, the component and its respective calcite-tab contents are selected. Only one tab can be selected within the calcite-tabs parent. |boolean                            |false     |
#' |tab              |tab               |Specifies a unique name for the component. When specified, use the same value on the calcite-tab.                                           |string                             |undefined |
#' 
#' ## Events
#' |Event               |Description                           |Type              |
#' |:-------------------|:-------------------------------------|:-----------------|
#' |calciteTabsActivate |Fires when a calcite-tab is selected. |CustomEvent<void> |
#' |calciteTabsClose    |Fires when a calcite-tab is closed.   |CustomEvent<void> |
#' 
#' ## Slots
#' |Slot |Description             |
#' |:----|:-----------------------|
#' |NA   |A slot for adding text. |
#' 
#'
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
#' @section Component Details:
#'
#' The below tables illustrate the properties, attributes, and optionally the
#' slots, events, and methods associated with this component.
#'
#' Each attribute can be set by passing it in via `...` as a named value e.g. `"icon-start" = "snow"`.
#'
#' Each event is subscribed to by shiny. The component properties are updated
#' on each of the events.
#'
#' ## Properties
#' |Property |Attribute |Description                                                                                                    |Type    |Default   |
#' |:--------|:---------|:--------------------------------------------------------------------------------------------------------------|:-------|:---------|
#' |selected |selected  |When true, the component’s contents are selected. Only one tab can be selected within the calcite-tabs parent. |boolean |false     |
#' |tab      |tab       |Specifies a unique name for the component. When specified, use the same value on the calcite-tab-title.        |string  |undefined |
#' 
#' ## Slots
#' |Slot |Description                       |
#' |:----|:---------------------------------|
#' |NA   |A slot for adding custom content. |
#' 
#'
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
#' @section Component Details:
#'
#' The below tables illustrate the properties, attributes, and optionally the
#' slots, events, and methods associated with this component.
#'
#' Each attribute can be set by passing it in via `...` as a named value e.g. `"icon-start" = "snow"`.
#'
#' Each event is subscribed to by shiny. The component properties are updated
#' on each of the events.
#'
#' ## Properties
#' |Property         |Attribute         |Description                                                             |Type                                 |Default   |
#' |:----------------|:-----------------|:-----------------------------------------------------------------------|:------------------------------------|:---------|
#' |alignment        |alignment         |Specifies the alignment of the component.                               |"center" &#124; "end" &#124; "start" |"start"   |
#' |colSpan          |col-span          |Specifies the number of columns the component should span.              |number                               |undefined |
#' |messageOverrides |message-overrides |Use this property to override individual strings used by the component. |TableCellMessages                    |undefined |
#' |rowSpan          |row-span          |Specifies the number of rows the component should span.                 |number                               |undefined |
#' 
#' ## Slots
#' |Slot |Description                                      |
#' |:----|:------------------------------------------------|
#' |NA   |A slot for adding content, usually text content. |
#' 
#'
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
#' @section Component Details:
#'
#' The below tables illustrate the properties, attributes, and optionally the
#' slots, events, and methods associated with this component.
#'
#' Each attribute can be set by passing it in via `...` as a named value e.g. `"icon-start" = "snow"`.
#'
#' Each event is subscribed to by shiny. The component properties are updated
#' on each of the events.
#'
#' ## Properties
#' |Property         |Attribute         |Description                                                             |Type                                 |Default   |
#' |:----------------|:-----------------|:-----------------------------------------------------------------------|:------------------------------------|:---------|
#' |alignment        |alignment         |Specifies the alignment of the component.                               |"center" &#124; "end" &#124; "start" |"start"   |
#' |colSpan          |col-span          |Specifies the number of columns the component should span.              |number                               |undefined |
#' |description      |description       |A description to display beneath heading content.                       |string                               |undefined |
#' |heading          |heading           |A heading to display above description content.                         |string                               |undefined |
#' |messageOverrides |message-overrides |Use this property to override individual strings used by the component. |TableHeaderMessages                  |undefined |
#' |rowSpan          |row-span          |Specifies the number of rows the component should span.                 |number                               |undefined |
#' 
#'
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
#' @section Component Details:
#'
#' The below tables illustrate the properties, attributes, and optionally the
#' slots, events, and methods associated with this component.
#'
#' Each attribute can be set by passing it in via `...` as a named value e.g. `"icon-start" = "snow"`.
#'
#' Each event is subscribed to by shiny. The component properties are updated
#' on each of the events.
#'
#' ## Properties
#' |Property  |Attribute |Description                                                                            |Type                                 |Default   |
#' |:---------|:---------|:--------------------------------------------------------------------------------------|:------------------------------------|:---------|
#' |alignment |alignment |Specifies the alignment of the component.                                              |"center" &#124; "end" &#124; "start" |undefined |
#' |disabled  |disabled  |When true, interaction is prevented and the component is displayed with lower opacity. |boolean                              |false     |
#' |selected  |selected  |When true, the component is selected.                                                  |boolean                              |false     |
#' 
#' ## Events
#' |Event                 |Description                                             |Type              |
#' |:---------------------|:-------------------------------------------------------|:-----------------|
#' |calciteTableRowSelect |Fires when the selected state of the component changes. |CustomEvent<void> |
#' 
#' ## Slots
#' |Slot |Description                                                            |
#' |:----|:----------------------------------------------------------------------|
#' |NA   |A slot for adding calcite-table-cell or calcite-table-header elements. |
#' 
#'
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
#' @section Component Details:
#'
#' The below tables illustrate the properties, attributes, and optionally the
#' slots, events, and methods associated with this component.
#'
#' Each attribute can be set by passing it in via `...` as a named value e.g. `"icon-start" = "snow"`.
#'
#' Each event is subscribed to by shiny. The component properties are updated
#' on each of the events.
#'
#' ## Properties
#' |Property           |Attribute         |Description                                                                                                                                                                                                                                                                                                  |Type                                     |Default       |
#' |:------------------|:-----------------|:------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|:----------------------------------------|:-------------|
#' |bordered           |bordered          |When true, displays borders in the component.                                                                                                                                                                                                                                                                |boolean                                  |false         |
#' |caption (required) |caption           |Specifies an accessible title for the component.                                                                                                                                                                                                                                                             |string                                   |undefined     |
#' |groupSeparator     |group-separator   |When true, number values are displayed with a group separator corresponding to the language and country format.                                                                                                                                                                                              |boolean                                  |false         |
#' |interactionMode    |interaction-mode  |When "interactive", allows focus and keyboard navigation of table-headers and table-cells. When "static", prevents focus and keyboard navigation of table-headers and table-cells when assistive technologies are not active. Selection affordances and slotted content within table-cells remain focusable. |"interactive" &#124; "static"            |"interactive" |
#' |layout             |layout            |Specifies the layout of the component.                                                                                                                                                                                                                                                                       |"auto" &#124; "fixed"                    |"auto"        |
#' |messageOverrides   |message-overrides |Use this property to override individual strings used by the component.                                                                                                                                                                                                                                      |TableMessages                            |undefined     |
#' |numbered           |numbered          |When true, displays the position of the row in numeric form.                                                                                                                                                                                                                                                 |boolean                                  |false         |
#' |numberingSystem    |numbering-system  |Specifies the Unicode numeral system used by the component for localization.                                                                                                                                                                                                                                 |"arab" &#124; "arabext" &#124; "latn"    |undefined     |
#' |pageSize           |page-size         |Specifies the page size of the component. When true, renders calcite-pagination.                                                                                                                                                                                                                             |number                                   |0             |
#' |scale              |scale             |Specifies the size of the component.                                                                                                                                                                                                                                                                         |"l" &#124; "m" &#124; "s"                |"m"           |
#' |selectedItems      |–                 |Specifies the component’s selected items.                                                                                                                                                                                                                                                                    |HTMLCalciteTableRowElement[]             |[]            |
#' |selectionDisplay   |selection-display |Specifies the display of the selection interface when selection-mode is not "none". When "none", content slotted the selection-actions slot will not be displayed.                                                                                                                                           |"none" &#124; "top"                      |"top"         |
#' |selectionMode      |selection-mode    |Specifies the selection mode of the component, where: "multiple" allows any number of selections, "single" allows only one selection, and "none" does not allow any selections.                                                                                                                              |"multiple" &#124; "none" &#124; "single" |"none"        |
#' |striped            |striped           |When true, displays striped styling in the component.                                                                                                                                                                                                                                                        |boolean                                  |false         |
#' |zebra              |zebra             |[DEPRECATED] Use the striped property instead.When true, displays striped styling in the component.                                                                                                                                                                                                          |boolean                                  |false         |
#' 
#' ## Events
#' |Event                  |Description                                        |Type              |
#' |:----------------------|:--------------------------------------------------|:-----------------|
#' |calciteTablePageChange |Emits when the component’s page selection changes. |CustomEvent<void> |
#' |calciteTableSelect     |Emits when the component’s selected rows change.   |CustomEvent<void> |
#' 
#' ## Slots
#' |Slot                |Description                                                                                                                         |
#' |:-------------------|:-----------------------------------------------------------------------------------------------------------------------------------|
#' |                    |A slot for adding calcite-table-row elements containing calcite-table-cell and/or calcite-table-header elements.                    |
#' |"selection-actions" |A slot for adding calcite-actions or other elements to display when selectionMode is not "none" and selectionDisplay is not "none". |
#' |"table-footer"      |A slot for adding calcite-table-row elements containing calcite-table-cell and/or calcite-table-header elements.                    |
#' |"table-header"      |A slot for adding calcite-table-row elements containing calcite-table-header elements.                                              |
#' 
#'
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
#' @section Component Details:
#'
#' The below tables illustrate the properties, attributes, and optionally the
#' slots, events, and methods associated with this component.
#'
#' Each attribute can be set by passing it in via `...` as a named value e.g. `"icon-start" = "snow"`.
#'
#' Each event is subscribed to by shiny. The component properties are updated
#' on each of the events.
#'
#' ## Properties
#' |Property |Attribute |Description                                                                                                                                |Type                      |Default  |
#' |:--------|:---------|:------------------------------------------------------------------------------------------------------------------------------------------|:-------------------------|:--------|
#' |bordered |bordered  |When true, the component will display with a folder style menu.                                                                            |boolean                   |false    |
#' |layout   |layout    |Specifies the layout of the calcite-tab-nav, justifying the calcite-tab-titles to the start ("inline"), or across and centered ("center"). |"center" &#124; "inline"  |"inline" |
#' |position |position  |Specifies the position of calcite-tab-nav and calcite-tab-title components in relation to the calcite-tabs.                                |"bottom" &#124; "top"     |"top"    |
#' |scale    |scale     |Specifies the size of the component.                                                                                                       |"l" &#124; "m" &#124; "s" |"m"      |
#' 
#' ## Slots
#' |Slot          |Description                          |
#' |:-------------|:------------------------------------|
#' |              |A slot for adding calcite-tabs.      |
#' |"title-group" |A slot for adding a calcite-tab-nav. |
#' 
#'
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
#' @section Component Details:
#'
#' The below tables illustrate the properties, attributes, and optionally the
#' slots, events, and methods associated with this component.
#'
#' Each attribute can be set by passing it in via `...` as a named value e.g. `"icon-start" = "snow"`.
#'
#' Each event is subscribed to by shiny. The component properties are updated
#' on each of the events.
#'
#' ## Properties
#' |Property          |Attribute          |Description                                                                                                                                           |Type                                                                                                                                                                                                                                              |Default                                                                                                                                                                                                                                                                   |
#' |:-----------------|:------------------|:-----------------------------------------------------------------------------------------------------------------------------------------------------|:-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|:-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
#' |columns           |columns            |Specifies the component’s number of columns.                                                                                                          |number                                                                                                                                                                                                                                            |undefined                                                                                                                                                                                                                                                                 |
#' |disabled          |disabled           |When true, interaction is prevented and the component is displayed with lower opacity.                                                                |boolean                                                                                                                                                                                                                                           |false                                                                                                                                                                                                                                                                     |
#' |form              |form               |The id of the form that will be associated with the component. When not set, the component will be associated with its ancestor form element, if any. |string                                                                                                                                                                                                                                            |undefined                                                                                                                                                                                                                                                                 |
#' |groupSeparator    |group-separator    |When true, number values are displayed with a group separator corresponding to the language and country format.                                       |boolean                                                                                                                                                                                                                                           |false                                                                                                                                                                                                                                                                     |
#' |label             |label              |Accessible name for the component.                                                                                                                    |string                                                                                                                                                                                                                                            |undefined                                                                                                                                                                                                                                                                 |
#' |maxLength         |max-length         |Specifies the maximum number of characters allowed.                                                                                                   |number                                                                                                                                                                                                                                            |undefined                                                                                                                                                                                                                                                                 |
#' |messageOverrides  |message-overrides  |Use this property to override individual strings used by the component.                                                                               |TextAreaMessages                                                                                                                                                                                                                                  |undefined                                                                                                                                                                                                                                                                 |
#' |minLength         |min-length         |Specifies the minimum number of characters allowed.                                                                                                   |number                                                                                                                                                                                                                                            |undefined                                                                                                                                                                                                                                                                 |
#' |name              |name               |Specifies the name of the component.                                                                                                                  |string                                                                                                                                                                                                                                            |undefined                                                                                                                                                                                                                                                                 |
#' |numberingSystem   |numbering-system   |Specifies the Unicode numeral system used by the component for localization.                                                                          |"arab" &#124; "arabext" &#124; "latn"                                                                                                                                                                                                             |undefined                                                                                                                                                                                                                                                                 |
#' |placeholder       |placeholder        |Specifies the placeholder text for the component.                                                                                                     |string                                                                                                                                                                                                                                            |undefined                                                                                                                                                                                                                                                                 |
#' |readOnly          |read-only          |When true, the component’s value can be read, but cannot be modified.                                                                                 |boolean                                                                                                                                                                                                                                           |false                                                                                                                                                                                                                                                                     |
#' |required          |required           |When true, the component must have a value in order for the form to submit.                                                                           |boolean                                                                                                                                                                                                                                           |false                                                                                                                                                                                                                                                                     |
#' |resize            |resize             |Specifies if the component is resizable.                                                                                                              |"both" &#124; "horizontal" &#124; "none" &#124; "vertical"                                                                                                                                                                                        |"both"                                                                                                                                                                                                                                                                    |
#' |rows              |rows               |Specifies the component’s number of rows.                                                                                                             |number                                                                                                                                                                                                                                            |undefined                                                                                                                                                                                                                                                                 |
#' |scale             |scale              |Specifies the size of the component.                                                                                                                  |"l" &#124; "m" &#124; "s"                                                                                                                                                                                                                         |"m"                                                                                                                                                                                                                                                                       |
#' |status            |status             |Specifies the status of the input field, which determines message and icons.                                                                          |"idle" &#124; "invalid" &#124; "valid"                                                                                                                                                                                                            |"idle"                                                                                                                                                                                                                                                                    |
#' |validationIcon    |validation-icon    |Specifies the validation icon to display under the component.                                                                                         |boolean &#124; string                                                                                                                                                                                                                             |undefined                                                                                                                                                                                                                                                                 |
#' |validationMessage |validation-message |Specifies the validation message to display under the component.                                                                                      |string                                                                                                                                                                                                                                            |undefined                                                                                                                                                                                                                                                                 |
#' |validity          |–                  |The current validation state of the component.                                                                                                        |{ valid: boolean; badInput: boolean; customError: boolean; patternMismatch: boolean; rangeOverflow: boolean; rangeUnderflow: boolean; stepMismatch: boolean; tooLong: boolean; tooShort: boolean; typeMismatch: boolean; valueMissing: boolean; } |{     valid: false,     badInput: false,     customError: false,     patternMismatch: false,     rangeOverflow: false,     rangeUnderflow: false,     stepMismatch: false,     tooLong: false,     tooShort: false,     typeMismatch: false,     valueMissing: false,   } |
#' |value             |value              |The component’s value.                                                                                                                                |string                                                                                                                                                                                                                                            |""                                                                                                                                                                                                                                                                        |
#' |wrap              |wrap               |Specifies the wrapping mechanism for the text.                                                                                                        |"hard" &#124; "soft"                                                                                                                                                                                                                              |"soft"                                                                                                                                                                                                                                                                    |
#' 
#' ## Events
#' |Event                 |Description                                         |Type              |
#' |:---------------------|:---------------------------------------------------|:-----------------|
#' |calciteTextAreaChange |Fires each time a new value is typed and committed. |CustomEvent<void> |
#' |calciteTextAreaInput  |Fires each time a new value is typed.               |CustomEvent<void> |
#' 
#' ## Slots
#' |Slot           |Description                                                       |
#' |:--------------|:-----------------------------------------------------------------|
#' |               |A slot for adding text.                                           |
#' |"footer-end"   |A slot for adding content to the end of the component’s footer.   |
#' |"footer-start" |A slot for adding content to the start of the component’s footer. |
#' 
#'
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
#' @section Component Details:
#'
#' The below tables illustrate the properties, attributes, and optionally the
#' slots, events, and methods associated with this component.
#'
#' Each attribute can be set by passing it in via `...` as a named value e.g. `"icon-start" = "snow"`.
#'
#' Each event is subscribed to by shiny. The component properties are updated
#' on each of the events.
#'
#' ## Properties
#' |Property            |Attribute            |Description                                                                                                                                                                                                                                             |Type                                                             |Default      |
#' |:-------------------|:--------------------|:-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|:----------------------------------------------------------------|:------------|
#' |alignment           |alignment            |Specifies the alignment of each calcite-tile’s content.                                                                                                                                                                                                 |"center" &#124; "start"                                          |"start"      |
#' |disabled            |disabled             |When true, interaction is prevented and the component is displayed with lower opacity.                                                                                                                                                                  |boolean                                                          |false        |
#' |label (required)    |label                |Accessible name for the component.                                                                                                                                                                                                                      |string                                                           |undefined    |
#' |layout              |layout               |Defines the layout of the component. Use "horizontal" for rows, and "vertical" for a single column.                                                                                                                                                     |"horizontal" &#124; "vertical"                                   |"horizontal" |
#' |scale               |scale                |Specifies the size of the component.                                                                                                                                                                                                                    |"l" &#124; "m" &#124; "s"                                        |"m"          |
#' |selectedItems       |–                    |Specifies the component’s selected items.                                                                                                                                                                                                               |HTMLCalciteTileElement[]                                         |[]           |
#' |selectionAppearance |selection-appearance |Specifies the selection appearance, where: - "icon" (displays a checkmark or dot), or - "border" (displays a border).                                                                                                                                   |"border" &#124; "icon"                                           |"icon"       |
#' |selectionMode       |selection-mode       |Specifies the selection mode, where: - "multiple" (allows any number of selected items), - "single" (allows only one selected item), - "single-persist" (allows only one selected item and prevents de-selection), - "none" (allows no selected items). |"multiple" &#124; "none" &#124; "single" &#124; "single-persist" |"none"       |
#' 
#' ## Events
#' |Event                  |Description                                   |Type              |
#' |:----------------------|:---------------------------------------------|:-----------------|
#' |calciteTileGroupSelect |Fires when the component’s selection changes. |CustomEvent<void> |
#' 
#' ## Slots
#' |Slot |Description                              |
#' |:----|:----------------------------------------|
#' |NA   |A slot for adding calcite-tile elements. |
#' 
#'
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
#' @section Component Details:
#'
#' The below tables illustrate the properties, attributes, and optionally the
#' slots, events, and methods associated with this component.
#'
#' Each attribute can be set by passing it in via `...` as a named value e.g. `"icon-start" = "snow"`.
#'
#' Each event is subscribed to by shiny. The component properties are updated
#' on each of the events.
#'
#' ## Properties
#' |Property |Attribute |Description                                                                                         |Type                           |Default      |
#' |:--------|:---------|:---------------------------------------------------------------------------------------------------|:------------------------------|:------------|
#' |disabled |disabled  |When true, interaction is prevented and the component is displayed with lower opacity.              |boolean                        |false        |
#' |layout   |layout    |Defines the layout of the component. Use "horizontal" for rows, and "vertical" for a single column. |"horizontal" &#124; "vertical" |"horizontal" |
#' 
#' ## Slots
#' |Slot |Description                                     |
#' |:----|:-----------------------------------------------|
#' |NA   |A slot for adding calcite-tile-select elements. |
#' 
#'
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
#' @section Component Details:
#'
#' The below tables illustrate the properties, attributes, and optionally the
#' slots, events, and methods associated with this component.
#'
#' Each attribute can be set by passing it in via `...` as a named value e.g. `"icon-start" = "snow"`.
#'
#' Each event is subscribed to by shiny. The component properties are updated
#' on each of the events.
#'
#' ## Properties
#' |Property       |Attribute       |Description                                                                                                                       |Type                      |Default   |
#' |:--------------|:---------------|:---------------------------------------------------------------------------------------------------------------------------------|:-------------------------|:---------|
#' |checked        |checked         |When true, the component is checked.                                                                                              |boolean                   |false     |
#' |description    |description     |A description for the component, which displays below the heading.                                                                |string                    |undefined |
#' |disabled       |disabled        |When true, interaction is prevented and the component is displayed with lower opacity.                                            |boolean                   |false     |
#' |heading        |heading         |The component header text, which displays between the icon and description.                                                       |string                    |undefined |
#' |icon           |icon            |Specifies an icon to display.                                                                                                     |string                    |undefined |
#' |iconFlipRtl    |icon-flip-rtl   |When true, the icon will be flipped when the element direction is right-to-left ("rtl").                                          |boolean                   |false     |
#' |inputAlignment |input-alignment |When inputEnabled is true, specifies the placement of the interactive input on the component.                                     |"end" &#124; "start"      |"start"   |
#' |inputEnabled   |input-enabled   |When true, displays an interactive input based on the type property.                                                              |boolean                   |false     |
#' |name           |name            |Specifies the name of the component on form submission.                                                                           |any                       |undefined |
#' |type           |type            |Specifies the selection mode of the component, where: "radio" is for single selection, and "checkbox" is for multiple selections. |"checkbox" &#124; "radio" |"radio"   |
#' |value          |value           |The component’s value.                                                                                                            |any                       |undefined |
#' |width          |width           |Specifies the width of the component.                                                                                             |"auto" &#124; "full"      |"auto"    |
#' 
#' ## Events
#' |Event                   |Description                                                                                                            |Type              |
#' |:-----------------------|:----------------------------------------------------------------------------------------------------------------------|:-----------------|
#' |calciteTileSelectChange |Emits a custom change event. For checkboxes it emits when checked or unchecked. For radios it only emits when checked. |CustomEvent<void> |
#' 
#' ## Slots
#' |Slot |Description                       |
#' |:----|:---------------------------------|
#' |NA   |A slot for adding custom content. |
#' 
#'
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
#' @section Component Details:
#'
#' The below tables illustrate the properties, attributes, and optionally the
#' slots, events, and methods associated with this component.
#'
#' Each attribute can be set by passing it in via `...` as a named value e.g. `"icon-start" = "snow"`.
#'
#' Each event is subscribed to by shiny. The component properties are updated
#' on each of the events.
#'
#' ## Properties
#' |Property    |Attribute     |Description                                                                                                                               |Type                      |Default   |
#' |:-----------|:-------------|:-----------------------------------------------------------------------------------------------------------------------------------------|:-------------------------|:---------|
#' |active      |active        |[DEPRECATED] When true, the component is active.                                                                                          |boolean                   |false     |
#' |alignment   |alignment     |Specifies the alignment of the Tile’s content.                                                                                            |"center" &#124; "start"   |"start"   |
#' |description |description   |A description for the component, which displays below the heading.                                                                        |string                    |undefined |
#' |disabled    |disabled      |When true, interaction is prevented and the component is displayed with lower opacity.                                                    |boolean                   |false     |
#' |embed       |embed         |[DEPRECATED] No longer necessary.The component’s embed mode. When true, renders without a border and padding for use by other components. |boolean                   |false     |
#' |heading     |heading       |The component header text, which displays between the icon and description.                                                               |string                    |undefined |
#' |href        |href          |When embed is "false", the URL for the component.                                                                                         |string                    |undefined |
#' |icon        |icon          |Specifies an icon to display.                                                                                                             |string                    |undefined |
#' |iconFlipRtl |icon-flip-rtl |When true, the icon will be flipped when the element direction is right-to-left ("rtl").                                                  |boolean                   |false     |
#' |label       |label         |Accessible name for the component.                                                                                                        |string                    |undefined |
#' |scale       |scale         |Specifies the size of the component.                                                                                                      |"l" &#124; "m" &#124; "s" |"m"       |
#' |selected    |selected      |When true and the parent’s selectionMode is "single", "single-persist"', or“multiple”`, the component is selected.                        |boolean                   |false     |
#' 
#' ## Events
#' |Event             |Description                                             |Type              |
#' |:-----------------|:-------------------------------------------------------|:-----------------|
#' |calciteTileSelect |Fires when the selected state of the component changes. |CustomEvent<void> |
#' 
#' ## Slots
#' |Slot             |Description                                                                                                                              |
#' |:----------------|:----------------------------------------------------------------------------------------------------------------------------------------|
#' |"content-bottom" |A slot for adding non-actionable elements below the component’s content.                                                                 |
#' |"content-end"    |[Deprecated] use content-bottom slot instead. A slot for adding non-actionable elements after the component’s content.                   |
#' |"content-start"  |[Deprecated] use content-top slot instead. A slot for adding non-actionable elements before the component’s content.                     |
#' |"content-top"    |A slot for adding non-actionable elements above the component’s content. Content slotted here will render in place of the icon property. |
#' 
#'
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
#' @section Component Details:
#'
#' The below tables illustrate the properties, attributes, and optionally the
#' slots, events, and methods associated with this component.
#'
#' Each attribute can be set by passing it in via `...` as a named value e.g. `"icon-start" = "snow"`.
#'
#' Each event is subscribed to by shiny. The component properties are updated
#' on each of the events.
#'
#' ## Properties
#' |Property         |Attribute         |Description                                                                  |Type                                  |Default   |
#' |:----------------|:-----------------|:----------------------------------------------------------------------------|:-------------------------------------|:---------|
#' |messageOverrides |message-overrides |Use this property to override individual strings used by the component.      |TimePickerMessages                    |undefined |
#' |numberingSystem  |numbering-system  |Specifies the Unicode numeral system used by the component for localization. |"arab" &#124; "arabext" &#124; "latn" |undefined |
#' |scale            |scale             |Specifies the size of the component.                                         |"l" &#124; "m" &#124; "s"             |"m"       |
#' |step             |step              |Specifies the granularity the value must adhere to (in seconds).             |number                                |60        |
#' |value            |value             |The component’s value in UTC (always 24-hour format).                        |string                                |null      |
#' 
#'
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
#' @section Component Details:
#'
#' The below tables illustrate the properties, attributes, and optionally the
#' slots, events, and methods associated with this component.
#'
#' Each attribute can be set by passing it in via `...` as a named value e.g. `"icon-start" = "snow"`.
#'
#' Each event is subscribed to by shiny. The component properties are updated
#' on each of the events.
#'
#' ## Properties
#' |Property   |Attribute   |Description                                            |Type   |Default   |
#' |:----------|:-----------|:------------------------------------------------------|:------|:---------|
#' |groupTitle |group-title |The component header text for all nested calcite-tips. |string |undefined |
#' 
#' ## Slots
#' |Slot |Description                     |
#' |:----|:-------------------------------|
#' |NA   |A slot for adding calcite-tips. |
#' 
#'
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
#' @section Component Details:
#'
#' The below tables illustrate the properties, attributes, and optionally the
#' slots, events, and methods associated with this component.
#'
#' Each attribute can be set by passing it in via `...` as a named value e.g. `"icon-start" = "snow"`.
#'
#' Each event is subscribed to by shiny. The component properties are updated
#' on each of the events.
#'
#' ## Properties
#' |Property         |Attribute         |Description                                                                                                             |Type                                           |Default   |
#' |:----------------|:-----------------|:-----------------------------------------------------------------------------------------------------------------------|:----------------------------------------------|:---------|
#' |closed           |closed            |When true, does not display or position the component.                                                                  |boolean                                        |false     |
#' |headingLevel     |heading-level     |Specifies the heading level of the component’s heading for proper document structure, without affecting visual styling. |1 &#124; 2 &#124; 3 &#124; 4 &#124; 5 &#124; 6 |undefined |
#' |messageOverrides |message-overrides |Use this property to override individual strings used by the component.                                                 |TipManagerMessages                             |undefined |
#' 
#' ## Events
#' |Event                  |Description                               |Type              |
#' |:----------------------|:-----------------------------------------|:-----------------|
#' |calciteTipManagerClose |Emits when the component has been closed. |CustomEvent<void> |
#' 
#' ## Slots
#' |Slot |Description                     |
#' |:----|:-------------------------------|
#' |NA   |A slot for adding calcite-tips. |
#' 
#'
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
#' @section Component Details:
#'
#' The below tables illustrate the properties, attributes, and optionally the
#' slots, events, and methods associated with this component.
#'
#' Each attribute can be set by passing it in via `...` as a named value e.g. `"icon-start" = "snow"`.
#'
#' Each event is subscribed to by shiny. The component properties are updated
#' on each of the events.
#'
#' ## Properties
#' |Property         |Attribute         |Description                                                                                                                                      |Type                                           |Default   |
#' |:----------------|:-----------------|:------------------------------------------------------------------------------------------------------------------------------------------------|:----------------------------------------------|:---------|
#' |closeDisabled    |close-disabled    |When true, the close button is not present on the component.                                                                                     |boolean                                        |false     |
#' |closed           |closed            |When true, the component does not display.                                                                                                       |boolean                                        |false     |
#' |heading          |heading           |The component header text.                                                                                                                       |string                                         |undefined |
#' |headingLevel     |heading-level     |Specifies the heading level of the component’s heading for proper document structure, without affecting visual styling.                          |1 &#124; 2 &#124; 3 &#124; 4 &#124; 5 &#124; 6 |undefined |
#' |messageOverrides |message-overrides |Use this property to override individual strings used by the component.                                                                          |TipMessages                                    |undefined |
#' |selected         |selected          |When true, the component is selected if it has a parent calcite-tip-manager. Only one tip can be selected within the calcite-tip-manager parent. |boolean                                        |false     |
#' 
#' ## Events
#' |Event             |Description                               |Type              |
#' |:-----------------|:-----------------------------------------|:-----------------|
#' |calciteTipDismiss |Emits when the component has been closed. |CustomEvent<void> |
#' 
#' ## Slots
#' |Slot        |Description                              |
#' |:-----------|:----------------------------------------|
#' |            |A slot for adding text and a hyperlink.  |
#' |"thumbnail" |A slot for adding an HTML image element. |
#' 
#'
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
#' @section Component Details:
#'
#' The below tables illustrate the properties, attributes, and optionally the
#' slots, events, and methods associated with this component.
#'
#' Each attribute can be set by passing it in via `...` as a named value e.g. `"icon-start" = "snow"`.
#'
#' Each event is subscribed to by shiny. The component properties are updated
#' on each of the events.
#'
#' ## Properties
#' |Property           |Attribute           |Description                                                                                                                                                                                                                                                                                                                                                                   |Type                                                                                                                                                                                                                                                                                                                                                                                            |Default               |
#' |:------------------|:-------------------|:-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|:-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|:---------------------|
#' |closeOnClick       |close-on-click      |Closes the component when the referenceElement is clicked.                                                                                                                                                                                                                                                                                                                    |boolean                                                                                                                                                                                                                                                                                                                                                                                         |false                 |
#' |label              |label               |[DEPRECATED] No longer necessary. Overrides the context of the component’s description, which could confuse assistive technology users.Accessible name for the component.                                                                                                                                                                                                     |string                                                                                                                                                                                                                                                                                                                                                                                          |undefined             |
#' |offsetDistance     |offset-distance     |Offset the position of the component away from the referenceElement.                                                                                                                                                                                                                                                                                                          |number                                                                                                                                                                                                                                                                                                                                                                                          |defaultOffsetDistance |
#' |offsetSkidding     |offset-skidding     |Offset the position of the component along the referenceElement.                                                                                                                                                                                                                                                                                                              |number                                                                                                                                                                                                                                                                                                                                                                                          |0                     |
#' |open               |open                |When true, the component is open.                                                                                                                                                                                                                                                                                                                                             |boolean                                                                                                                                                                                                                                                                                                                                                                                         |false                 |
#' |overlayPositioning |overlay-positioning |Determines the type of positioning to use for the overlaid content. Using "absolute" will work for most cases. The component will be positioned inside of overflowing parent containers and will affect the container’s layout. The "fixed" value should be used to escape an overflowing parent container, or when the reference element’s position CSS property is "fixed". |"absolute" &#124; "fixed"                                                                                                                                                                                                                                                                                                                                                                       |"absolute"            |
#' |placement          |placement           |Determines where the component will be positioned relative to the referenceElement.                                                                                                                                                                                                                                                                                           |"auto" &#124; "top" &#124; "bottom" &#124; "right" &#124; "left" &#124; "top-start" &#124; "top-end" &#124; "bottom-start" &#124; "bottom-end" &#124; "right-start" &#124; "right-end" &#124; "left-start" &#124; "left-end" &#124; "leading" &#124; "trailing" &#124; "auto-start" &#124; "auto-end" &#124; "leading-start" &#124; "leading-end" &#124; "trailing-end" &#124; "trailing-start" |"auto"                |
#' |referenceElement   |reference-element   |The referenceElement to position the component according to its "placement" value. Setting to the HTMLElement is preferred so the component does not need to query the DOM for the referenceElement. However, a string ID of the reference element can be used.                                                                                                               |Element &#124; VirtualElement &#124; string                                                                                                                                                                                                                                                                                                                                                     |undefined             |
#' 
#' ## Events
#' |Event                     |Description                                                                                              |Type              |
#' |:-------------------------|:--------------------------------------------------------------------------------------------------------|:-----------------|
#' |calciteTooltipBeforeClose |Fires when the component is requested to be closed and before the closing transition begins.             |CustomEvent<void> |
#' |calciteTooltipBeforeOpen  |Fires when the component is added to the DOM but not rendered, and before the opening transition begins. |CustomEvent<void> |
#' |calciteTooltipClose       |Fires when the component is closed and animation is complete.                                            |CustomEvent<void> |
#' |calciteTooltipOpen        |Fires when the component is open and animation is complete.                                              |CustomEvent<void> |
#' 
#' ## Slots
#' |Slot |Description             |
#' |:----|:-----------------------|
#' |NA   |A slot for adding text. |
#' 
#'
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
#' @section Component Details:
#'
#' The below tables illustrate the properties, attributes, and optionally the
#' slots, events, and methods associated with this component.
#'
#' Each attribute can be set by passing it in via `...` as a named value e.g. `"icon-start" = "snow"`.
#'
#' Each event is subscribed to by shiny. The component properties are updated
#' on each of the events.
#'
#' ## Properties
#' |Property    |Attribute     |Description                                                                              |Type                               |Default   |
#' |:-----------|:-------------|:----------------------------------------------------------------------------------------|:----------------------------------|:---------|
#' |disabled    |disabled      |When true, interaction is prevented and the component is displayed with lower opacity.   |boolean                            |false     |
#' |expanded    |expanded      |When true, the component is expanded.                                                    |boolean                            |false     |
#' |iconFlipRtl |icon-flip-rtl |When true, the icon will be flipped when the element direction is right-to-left ("rtl"). |"both" &#124; "end" &#124; "start" |undefined |
#' |iconStart   |icon-start    |Specifies an icon to display at the start of the component.                              |string                             |undefined |
#' |label       |label         |Accessible name for the component.                                                       |string                             |undefined |
#' |selected    |selected      |When true, the component is selected.                                                    |boolean                            |false     |
#' 
#' ## Slots
#' |Slot          |Description                                                                                           |
#' |:-------------|:-----------------------------------------------------------------------------------------------------|
#' |              |A slot for adding text.                                                                               |
#' |"actions-end" |A slot for adding actions to the end of the component. It is recommended to use two or fewer actions. |
#' |"children"    |A slot for adding nested calcite-tree elements.                                                       |
#' 
#'
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
#' @section Component Details:
#'
#' The below tables illustrate the properties, attributes, and optionally the
#' slots, events, and methods associated with this component.
#'
#' Each attribute can be set by passing it in via `...` as a named value e.g. `"icon-start" = "snow"`.
#'
#' Each event is subscribed to by shiny. The component properties are updated
#' on each of the events.
#'
#' ## Properties
#' |Property      |Attribute      |Description                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               |Type                                                                                                                         |Default  |
#' |:-------------|:--------------|:---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|:----------------------------------------------------------------------------------------------------------------------------|:--------|
#' |lines         |lines          |When true, displays indentation guide lines.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |boolean                                                                                                                      |false    |
#' |scale         |scale          |Specifies the size of the component.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |"l" &#124; "m" &#124; "s"                                                                                                    |"m"      |
#' |selectedItems |–              |Specifies the component’s selected items.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |HTMLCalciteTreeItemElement[]                                                                                                 |[]       |
#' |selectionMode |selection-mode |Specifies the selection mode of the component, where: "ancestors" displays with a checkbox and allows any number of selections from corresponding parent and child selections, "children" allows any number of selections from one parent from corresponding parent and child selections, "multichildren" allows any number of selections from corresponding parent and child selections, "multiple" allows any number of selections, "none" allows no selections, "single" allows one selection, and "single-persist" allows and requires one selection. |"ancestors" &#124; "children" &#124; "multichildren" &#124; "multiple" &#124; "none" &#124; "single" &#124; "single-persist" |"single" |
#' 
#' ## Events
#' |Event             |Description                                               |Type              |
#' |:-----------------|:---------------------------------------------------------|:-----------------|
#' |calciteTreeSelect |Fires when the user selects/deselects calcite-tree-items. |CustomEvent<void> |
#' 
#' ## Slots
#' |Slot |Description                            |
#' |:----|:--------------------------------------|
#' |NA   |A slot for calcite-tree-item elements. |
#' 
#'
#' @export
#' @return an object of class `calcite_component` which is a subclass of `shiny.tag`
#'
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/tree/)
calcite_tree <- function(...) {
  res <- htmltools::tag("calcite-tree", rlang::dots_list(..., calcite_dependency(), calcite_bindings()))
  class(res) <- c("calcite_component", class(res))
  res
}


