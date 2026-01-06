#' Create a Calcite Date Picker Component
#'
#' Provides a calendar interface for selecting dates. Supports single date
#' selection or date range selection with various customization options.
#'
#' @param id Optional ID for the date picker (required for Shiny reactivity)
#' @param value Selected date as a string ("yyyy-mm-dd"), or array of strings for range values
#' @param range When TRUE, activates range mode to allow start and end dates (default: FALSE)
#' @param min Earliest allowed date ("yyyy-mm-dd")
#' @param max Latest allowed date ("yyyy-mm-dd")
#' @param scale Specifies size of the component: "s" (small), "m" (medium), or "l" (large)
#' @param layout Defines the layout: "horizontal" or "vertical"
#' @param calendars Number of calendars displayed when range is TRUE: 1 or 2 (default: 2)
#' @param active_range When range is TRUE, specifies active range: "start" or "end"
#' @param heading_level Heading level for document structure (1-6)
#' @param month_style Month display style: "wide" (default) or "abbreviated"
#' @param numbering_system Unicode numeral system: "latn", "arab", or "arabext"
#' @param proximity_selection_disabled When TRUE, disables default range narrowing behavior (default: FALSE)
#' @param ... Additional attributes passed to the component
#'
#' @details
#' ## Date Formats
#'
#' - Dates should be provided as strings in "yyyy-mm-dd" format
#' - For range mode, provide an array: `c("2024-01-15", "2024-01-20")`
#' - The component always returns dates as an array of strings, even in single date mode
#'
#' ## Shiny Integration
#'
#' When used in a Shiny app with an `id`, `calcite_date_picker()` returns a reactive
#' list containing component properties.
#'
#' **Available properties:**
#' - `$value` - Array of selected date strings (always an array, even for single dates)
#' - `$range` - Whether range mode is enabled
#' - `$min` - Minimum allowed date
#' - `$max` - Maximum allowed date
#' - Other component properties
#'
#' **Usage in server:**
#' ```r
#' # Single date mode
#' observeEvent(input$my_date$value, {
#'   selected_date <- input$my_date$value[1]  # Get first (and only) date
#'   message("Selected: ", selected_date)
#' })
#'
#' # Range mode
#' observeEvent(input$my_date_range$value, {
#'   start_date <- input$my_date_range$value[1]
#'   end_date <- input$my_date_range$value[2]
#'   message("Range: ", start_date, " to ", end_date)
#' })
#' ```
#'
#' @export
#' @return An object of class `calcite_component`
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/date-picker/)
#' @examples
#' # Basic date picker
#' calcite_date_picker(
#'   id = "my_date"
#' )
#'
#' # Date picker with initial value
#' calcite_date_picker(
#'   id = "event_date",
#'   value = "2024-12-25"
#' )
#'
#' # Date picker with min/max constraints
#' calcite_date_picker(
#'   id = "booking_date",
#'   min = "2024-01-01",
#'   max = "2024-12-31"
#' )
#'
#' # Range date picker
#' calcite_date_picker(
#'   id = "date_range",
#'   range = TRUE,
#'   value = c("2024-01-15", "2024-01-20")
#' )
calcite_date_picker <- function(
  id = NULL,
  value = NULL,
  range = NULL,
  min = NULL,
  max = NULL,
  scale = NULL,
  layout = NULL,
  calendars = NULL,
  active_range = NULL,
  heading_level = NULL,
  month_style = NULL,
  numbering_system = NULL,
  proximity_selection_disabled = NULL,
  ...
) {
  # Validate scale if provided
  if (!is.null(scale)) {
    scale <- rlang::arg_match(scale, c("s", "m", "l"))
  }

  # Validate layout if provided
  if (!is.null(layout)) {
    layout <- rlang::arg_match(layout, c("horizontal", "vertical"))
  }

  # Validate calendars if provided
  if (!is.null(calendars)) {
    if (!rlang::is_integerish(calendars, n = 1)) {
      cli::cli_abort(
        "{.arg calendars} must be a scalar integer either {.val 1} or {.val 2}"
      )
    }

    if (calendars > 2 || calendars < 1) {
      cli::cli_abort(
        "{.arg calendars} must be a scalar integer either {.val 1} or {.val 2}"
      )
    }
  }

  # Validate active_range if provided
  if (!is.null(active_range)) {
    active_range <- rlang::arg_match(active_range, c("start", "end"))
  }

  # Validate heading_level if provided
  if (!is.null(heading_level)) {
    heading_level <- rlang::arg_match(
      as.character(heading_level),
      as.character(1:6)
    )
  }

  # Validate month_style if provided
  if (!is.null(month_style)) {
    month_style <- rlang::arg_match(month_style, c("wide", "abbreviated"))
  }

  # Validate numbering_system if provided
  if (!is.null(numbering_system)) {
    numbering_system <- rlang::arg_match(
      numbering_system,
      c("latn", "arab", "arabext")
    )
  }

  # Handle value - convert to JSON array if it's a vector
  if (!is.null(value) && length(value) > 1) {
    value <- jsonlite::toJSON(value, auto_unbox = FALSE)
  }

  # Build attributes list
  attribs <- compact(list(
    id = id,
    value = value,
    range = range,
    min = min,
    max = max,
    scale = scale,
    layout = layout,
    calendars = calendars,
    `active-range` = active_range,
    `heading-level` = heading_level,
    `month-style` = month_style,
    `numbering-system` = numbering_system,
    `proximity-selection-disabled` = proximity_selection_disabled
  ))

  # Combine with dots
  extra_attribs <- rlang::dots_list(...)
  all_attribs <- c(
    attribs,
    extra_attribs[!names(extra_attribs) %in% names(attribs)]
  )

  # Custom binding for date-picker
  date_picker_binding <- htmltools::htmlDependency(
    name = "calcite-date-picker-binding",
    version = calcite_version(),
    src = c(file = system.file("www", package = "calcite")),
    script = "calcite-date-picker.js"
  )

  res <- htmltools::tag(
    "calcite-date-picker",
    c(all_attribs, list(calcite_dependency(), date_picker_binding))
  )

  class(res) <- c("calcite_component", class(res))
  res
}
