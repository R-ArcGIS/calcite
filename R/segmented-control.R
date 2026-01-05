#' Create a Calcite Segmented Control Component
#'
#' Creates a segmented control for selecting between multiple options. Similar to
#' radio buttons but with a more compact, segmented button appearance.
#'
#' @param ... Child `calcite_segmented_control_item()` elements
#' @param id Component ID (required for Shiny reactivity)
#' @param value Initial selected value (should match a child item's value)
#' @param appearance Visual style: "solid", "outline", or "outline-fill"
#' @param disabled Whether the control is disabled (default: FALSE)
#' @param layout Orientation: "horizontal" or "vertical"
#' @param scale Size of the control: "s" (small), "m" (medium), or "l" (large)
#' @param width Width behavior: "auto" or "full"
#' @param name Name for form submission
#' @param label_text Label displayed on the component
#' @param status Validation state: "idle", "valid", or "invalid"
#' @param validation_message Message displayed for validation feedback
#' @param required Whether selection is required
#' @param ... Additional attributes passed to the component
#'
#' @details
#' ## Shiny Integration
#'
#' The segmented control emits a `calciteSegmentedControlChange` event when the
#' selected item changes.
#'
#' **Available properties in `input$id`:**
#' - `$value` - Currently selected value (matches a child item's value attribute)
#' - `$disabled` - Whether the control is disabled
#' - `$scale` - Current scale setting
#' - Other component properties
#'
#' **Basic usage:**
#' ```r
#' calcite_segmented_control(
#'   id = "effect_type",
#'   width = "full",
#'   calcite_segmented_control_item(value = "blur"),
#'   calcite_segmented_control_item(value = "highlight", checked = TRUE),
#'   calcite_segmented_control_item(value = "party")
#' )
#'
#' # In server
#' observeEvent(input$effect_type, {
#'   selected <- input$effect_type$value
#'   print(paste("Selected:", selected))
#' })
#' ```
#'
#' **Update from server:**
#' ```r
#' update_calcite("effect_type", value = "blur")
#' ```
#'
#' @export
#' @return An object of class `calcite_component`
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/segmented-control/)
#' @examples
#' # Basic segmented control
#' calcite_segmented_control(
#'   id = "view_mode",
#'   calcite_segmented_control_item(value = "list", icon_start = "list"),
#'   calcite_segmented_control_item(value = "grid", icon_start = "grid", checked = TRUE),
#'   calcite_segmented_control_item(value = "table", icon_start = "table")
#' )
#'
#' # Full width with text
#' calcite_segmented_control(
#'   id = "effect",
#'   width = "full",
#'   calcite_segmented_control_item(value = "Blur"),
#'   calcite_segmented_control_item(value = "Highlight", checked = TRUE),
#'   calcite_segmented_control_item(value = "Party mode")
#' )
#'
#' # Shiny example
#' if (interactive()) {
#'   library(shiny)
#'
#'   ui <- calcite_shell(
#'     calcite_card(
#'       heading = "Segmented Control Example",
#'       calcite_label(
#'         "Choose an option",
#'         calcite_segmented_control(
#'           id = "my_control",
#'           width = "full",
#'           calcite_segmented_control_item(value = "option1"),
#'           calcite_segmented_control_item(value = "option2", checked = TRUE),
#'           calcite_segmented_control_item(value = "option3")
#'         )
#'       ),
#'       verbatimTextOutput("selected_value")
#'     )
#'   )
#'
#'   server <- function(input, output, session) {
#'     output$selected_value <- renderPrint({
#'       paste("Selected:", input$my_control$value)
#'     })
#'   }
#'
#'   shinyApp(ui, server)
#' }
calcite_segmented_control <- function(
  ...,
  id = NULL,
  value = NULL,
  appearance = NULL,
  disabled = NULL,
  layout = NULL,
  scale = NULL,
  width = NULL,
  name = NULL,
  label_text = NULL,
  status = NULL,
  validation_message = NULL,
  required = NULL
) {
  # Validate appearance if provided
  if (!is.null(appearance)) {
    appearance <- rlang::arg_match(appearance, c("solid", "outline", "outline-fill"))
  }

  # Validate layout if provided
  if (!is.null(layout)) {
    layout <- rlang::arg_match(layout, c("horizontal", "vertical"))
  }

  # Validate scale if provided
  if (!is.null(scale)) {
    scale <- rlang::arg_match(scale, c("s", "m", "l"))
  }

  # Validate width if provided
  if (!is.null(width)) {
    width <- rlang::arg_match(width, c("auto", "full"))
  }

  # Validate status if provided
  if (!is.null(status)) {
    status <- rlang::arg_match(status, c("idle", "valid", "invalid"))
  }

  # Build attributes list
  attribs <- compact(list(
    id = id,
    value = value,
    appearance = appearance,
    disabled = disabled,
    layout = layout,
    scale = scale,
    width = width,
    name = name,
    `label-text` = label_text,
    status = status,
    `validation-message` = validation_message,
    required = required
  ))

  # Custom binding for segmented control
  control_binding <- htmltools::htmlDependency(
    name = "calcite-segmented-control-binding",
    version = calcite_version(),
    src = c(file = system.file("www", package = "calcite")),
    script = "calcite-segmented-control.js"
  )

  res <- htmltools::tag(
    "calcite-segmented-control",
    c(
      attribs,
      rlang::dots_list(...),
      list(calcite_dependency(), control_binding)
    )
  )

  class(res) <- c("calcite_component", class(res))
  res
}

#' Create a Calcite Segmented Control Item Component
#'
#' Creates an individual item within a segmented control. Must be used as a child
#' of `calcite_segmented_control()`.
#'
#' @param value The value this item represents (required)
#' @param checked Whether this item is initially selected (default: FALSE)
#' @param icon_start Icon to display at the start of the item
#' @param icon_end Icon to display at the end of the item
#' @param icon_flip_rtl Whether to flip the icon in RTL languages (default: FALSE)
#' @param ... Additional content or attributes (text label if provided as unnamed argument)
#'
#' @export
#' @return An object of class `calcite_component`
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/segmented-control-item/)
#' @examples
#' # Item with text label
#' calcite_segmented_control_item(value = "option1")
#'
#' # Item with icon
#' calcite_segmented_control_item(
#'   value = "list",
#'   icon_start = "list"
#' )
#'
#' # Initially selected item
#' calcite_segmented_control_item(
#'   value = "default",
#'   checked = TRUE
#' )
calcite_segmented_control_item <- function(
  value,
  label = value,
  checked = NULL,
  icon_start = NULL,
  icon_end = NULL,
  icon_flip_rtl = NULL,
  ...
) {
  # Build attributes list
  attribs <- compact(list(
    value = value,
    checked = checked,
    `icon-start` = icon_start,
    `icon-end` = icon_end,
    `icon-flip-rtl` = icon_flip_rtl
  ))

  # Combine attributes with extra attributes from dots
  extra_attribs <- rlang::dots_list(...)
  all_attribs <- c(
    attribs,
    extra_attribs[!names(extra_attribs) %in% names(attribs)]
  )

  res <- htmltools::tag(
    "calcite-segmented-control-item",
    c(all_attribs, list(label, calcite_dependency()))
  )

  class(res) <- c("calcite_component", class(res))
  res
}
