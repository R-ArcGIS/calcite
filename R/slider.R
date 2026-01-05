#' Create a Calcite Slider Component
#'
#' Creates a slider input for selecting numeric values. Supports both single-value
#' and range selection (dual handles).
#'
#' @param id Component ID (required for Shiny reactivity)
#' @param value Initial value (for single slider) or NULL
#' @param min Minimum selectable value (default: 0)
#' @param max Maximum selectable value (default: 100)
#' @param step Increment step for up/down arrows and keyboard (default: 1)
#' @param min_value For range sliders, the lower bound value
#' @param max_value For range sliders, the upper bound value
#' @param label_handles Whether to display numeric labels on handles (default: FALSE)
#' @param label_ticks Whether to display numeric labels on tick marks (default: FALSE)
#' @param ticks Interval for displaying tick marks on the number line
#' @param disabled Whether the slider is disabled (default: FALSE)
#' @param scale Size of the slider: "s" (small), "m" (medium), or "l" (large)
#' @param snap Whether to enable snap-to-step on mouse interaction (default: FALSE)
#' @param precise Whether to use finer positioning for handles (default: FALSE)
#' @param group_separator Whether to display thousand separators in numbers (default: FALSE)
#' @param page_step Interval to move with Page Up/Down keys
#' @param min_label Accessible label for the minimum handle (for screen readers)
#' @param max_label Accessible label for the maximum handle (for screen readers)
#' @param ... Additional attributes passed to the component
#'
#' @details
#' ## Shiny Integration
#'
#' The slider emits two types of events:
#' - **`calciteSliderChange`** - Fires when the user releases the handle (debounced, final value)
#' - **`calciteSliderInput`** - Fires continuously during drag (use with caution for expensive operations)
#'
#' **Available properties in `input$id`:**
#' - `$value` - Current value (single slider) or array of `[minValue, maxValue]` (range slider)
#' - `$min` / `$max` - Slider bounds
#' - `$step` - Step increment
#' - `$disabled` - Whether disabled
#' - Other component properties
#'
#' **Single-value slider:**
#' ```r
#' observeEvent(input$my_slider, {
#'   current_value <- input$my_slider$value
#'   print(paste("Slider value:", current_value))
#' })
#' ```
#'
#' **Range slider (dual handles):**
#' ```r
#' # Provide both min_value and max_value to create a range slider
#' calcite_slider(
#'   id = "range_slider",
#'   min = 0,
#'   max = 100,
#'   min_value = 20,
#'   max_value = 80
#' )
#'
#' observeEvent(input$range_slider, {
#'   lower <- input$range_slider$minValue
#'   upper <- input$range_slider$maxValue
#'   print(paste("Range:", lower, "to", upper))
#' })
#' ```
#'
#' **Update from server:**
#' ```r
#' # Update single value
#' update_calcite("my_slider", value = 50)
#'
#' # Update range
#' update_calcite("range_slider", minValue = 30, maxValue = 70)
#' ```
#'
#' @export
#' @return An object of class `calcite_component`
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/slider/)
#' @examples
#' # Basic slider
#' calcite_slider(
#'   id = "my_slider",
#'   value = 50,
#'   min = 0,
#'   max = 100,
#'   step = 5
#' )
#'
#' # Slider with ticks and labels
#' calcite_slider(
#'   id = "temperature",
#'   value = 72,
#'   min = 32,
#'   max = 212,
#'   step = 1,
#'   ticks = 10,
#'   label_handles = TRUE,
#'   label_ticks = TRUE
#' )
#'
#' # Range slider (dual handles)
#' calcite_slider(
#'   id = "price_range",
#'   min = 0,
#'   max = 1000,
#'   min_value = 100,
#'   max_value = 500,
#'   step = 10,
#'   label_handles = TRUE
#' )
#'
#' # Shiny example
#' if (interactive()) {
#'   library(shiny)
#'
#'   ui <- calcite_shell(
#'     calcite_card(
#'       heading = "Slider Example",
#'       calcite_label(
#'         "Choose a value",
#'         calcite_slider(
#'           id = "my_slider",
#'           value = 50,
#'           min = 0,
#'           max = 100,
#'           step = 5,
#'           label_handles = TRUE
#'         )
#'       ),
#'       verbatimTextOutput("slider_value")
#'     )
#'   )
#'
#'   server <- function(input, output, session) {
#'     output$slider_value <- renderPrint({
#'       paste("Current value:", input$my_slider$value)
#'     })
#'   }
#'
#'   shinyApp(ui, server)
#' }
calcite_slider <- function(
  id = NULL,
  value = NULL,
  min = 0,
  max = 100,
  step = 1,
  min_value = NULL,
  max_value = NULL,
  label_handles = NULL,
  label_ticks = NULL,
  ticks = NULL,
  disabled = NULL,
  scale = NULL,
  snap = NULL,
  precise = NULL,
  group_separator = NULL,
  page_step = NULL,
  min_label = NULL,
  max_label = NULL,
  ...
) {

  # Validate scale if provided
  if (!is.null(scale)) {
    scale <- match.arg(scale, c("s", "m", "l"))
  }

  # Build attributes list
  attribs <- compact(list(
    id = id,
    value = value,
    min = min,
    max = max,
    step = step,
    `min-value` = min_value,
    `max-value` = max_value,
    `label-handles` = label_handles,
    `label-ticks` = label_ticks,
    ticks = ticks,
    disabled = disabled,
    scale = scale,
    snap = snap,
    precise = precise,
    `group-separator` = group_separator,
    `page-step` = page_step,
    `min-label` = min_label,
    `max-label` = max_label
  ))

  # Combine with additional attributes
  extra_attribs <- rlang::dots_list(...)

  all_attribs <- c(
    attribs,
    extra_attribs[!names(extra_attribs) %in% names(attribs)]
  )

  res <- htmltools::tag(
    "calcite-slider",
    c(all_attribs, list(calcite_dependency(), calcite_bindings()))
  )

  class(res) <- c("calcite_component", class(res))
  res
}
