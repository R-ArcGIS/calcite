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
#' @param label_text Accessible label text for the component
#' @param ticks Interval for displaying tick marks on the number line
#' @param disabled Whether the slider is disabled (default: FALSE)
#' @param required Whether a value is required for form submission (default: FALSE)
#' @param scale Size of the slider: "s" (small), "m" (medium), or "l" (large)
#' @param snap Whether to enable snap-to-step on mouse interaction (default: FALSE)
#' @param precise Whether to use finer positioning for handles (default: FALSE)
#' @param mirrored Whether to mirror the slider (default: FALSE)
#' @param fill_placement Where to display the fill: "start", "end", or "none"
#' @param histogram A 2-column numeric matrix or data.frame for histogram display
#' @param histogram_stops Color stops for histogram display
#' @param group_separator Whether to display thousand separators in numbers (default: FALSE)
#' @param page_step Interval to move with Page Up/Down keys
#' @param min_label Accessible label for the minimum handle (for screen readers)
#' @param max_label Accessible label for the maximum handle (for screen readers)
#' @param name Name attribute for form submission
#' @param form Associated form element ID
#' @param numbering_system Numbering system to use: "arab", "arabext", or "latn"
#' @param status Validation state: "idle", "valid", or "invalid"
#' @param validation_icon Icon to display for validation feedback
#' @param validation_message Message displayed for validation feedback
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
  label_text = NULL,
  ticks = NULL,
  disabled = NULL,
  required = NULL,
  scale = NULL,
  snap = NULL,
  precise = NULL,
  mirrored = NULL,
  fill_placement = NULL,
  histogram = NULL,
  histogram_stops = NULL,
  group_separator = NULL,
  page_step = NULL,
  min_label = NULL,
  max_label = NULL,
  name = NULL,
  form = NULL,
  numbering_system = NULL,
  status = NULL,
  validation_icon = NULL,
  validation_message = NULL,
  ...
) {
  # check histogram data
  if (!is.null(histogram)) {
    histogram <- check_hist(histogram, min, max)
  }

  # Validate scale if provided
  if (!is.null(scale)) {
    scale <- rlang::arg_match(scale, c("s", "m", "l"))
  }

  # Validate fill_placement if provided
  if (!is.null(fill_placement)) {
    fill_placement <- rlang::arg_match(
      fill_placement,
      c("start", "end", "none")
    )
  }

  # Validate numbering_system if provided
  if (!is.null(numbering_system)) {
    numbering_system <- rlang::arg_match(
      numbering_system,
      c("arab", "arabext", "latn")
    )
  }

  # Validate status if provided
  if (!is.null(status)) {
    status <- rlang::arg_match(status, c("idle", "valid", "invalid"))
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
    `label-text` = label_text,
    ticks = ticks,
    disabled = disabled,
    required = required,
    scale = scale,
    snap = snap,
    precise = precise,
    mirrored = mirrored,
    `fill-placement` = fill_placement,
    `has-histogram` = !is.null(histogram),
    `histogram-stops` = histogram_stops,
    `group-separator` = group_separator,
    `page-step` = page_step,
    `min-label` = min_label,
    `max-label` = max_label,
    name = name,
    form = form,
    `numbering-system` = numbering_system,
    status = status,
    `validation-icon` = validation_icon,
    `validation-message` = validation_message
  ))

  # Combine with additional attributes
  extra_attribs <- rlang::dots_list(...)

  all_attribs <- c(
    attribs,
    extra_attribs[!names(extra_attribs) %in% names(attribs)]
  )

  # Add histogram as data attribute with JSON serialization
  if (!is.null(histogram)) {
    all_attribs$`data-histogram` <- yyjsonr::write_json_str(
      histogram,
      auto_unbox = TRUE
    )
  }

  # Custom binding for slider
  slider_binding <- htmltools::htmlDependency(
    name = "calcite-slider-binding",
    version = calcite_version(),
    src = c(file = system.file("www", package = "calcite")),
    script = "calcite-slider.js"
  )

  res <- htmltools::tag(
    "calcite-slider",
    c(all_attribs, list(calcite_dependency(), slider_binding))
  )

  class(res) <- c("calcite_component", class(res))
  res
}

check_hist <- function(x, min, max, error_call = rlang::caller_call()) {
  e_msg <- "{.arg histogram} must be either a 2 column numeric matrix or data.frame"
  if (!rlang::inherits_any(x, c("matrix", "data.frame"))) {
    cli::cli_abort(
      e_msg,
      call = error_call
    )
  }

  # if a matrix ensure it has 2 columns
  # ensure they are both numeric
  x <- as.matrix(x)
  if (!rlang::is_bare_numeric(x) || NCOL(x) != 2L) {
    cli::cli_abort(e_msg, call = error_call)
  }

  # x (first column), must be within min and max
  if (any(x[, 1] > max | x[, 1] < min)) {
    cli::cli_abort(
      "{.arg histogram} falls out of range specified by {.arg min} ({.val {min}}) and {.arg max} ({.val {max}})",
      call = error_call
    )
  }

  # Convert matrix to list of [x, y] pairs for JSON serialization
  lapply(seq_len(nrow(x)), function(i) as.list(x[i, ]))
}
