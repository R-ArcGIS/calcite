#' Create a Calcite Select Component
#'
#' Select provides a single-selection dropdown menu for forms. It displays
#' a list of options that users can choose from. You can either provide
#' `values` and `labels` vectors for convenience, or manually construct
#' [calcite_option()] components.
#'
#' @param ... calcite-option components (default slot). Ignored if `values` is provided.
#' @param values Character vector of option values. When provided, options are automatically
#'   generated from `values` and `labels`. Takes precedence over manually constructed options in `...`.
#' @param labels Character vector of option labels (display text). Must be same length as `values`.
#'   If NULL, uses `values` as labels.
#' @param id Component ID (required for Shiny reactivity)
#' @param label Accessible name for the component (required)
#' @param disabled When true, interaction is prevented and the component is displayed with lower opacity
#' @param form The id of the form that will be associated with the component
#' @param label_text When provided, displays label text on the component
#' @param message_overrides Override individual strings used by the component
#' @param name Specifies the name of the component. Required to pass the component's value on form submission
#' @param required When true, the component must have a value for the form to submit
#' @param scale Specifies the size of the component: "s" (small), "m" (medium), or "l" (large)
#' @param status Specifies the status of the input field: "idle", "invalid", or "valid"
#' @param validation_icon Specifies the validation icon to display under the component
#' @param validation_message Specifies the validation message to display under the component
#' @param value The component's selectedOption value
#' @param width Specifies the width of the component: "auto", "full", or "half" (half is deprecated)
#' @param label_content Content to render next to the component's labelText (slot)
#'
#' @details
#' ## Shiny Integration
#'
#' When used in a Shiny app, `calcite_select()` returns a reactive list containing
#' the component's state. The component emits a `calciteSelectChange` event when
#' the selection changes.
#'
#' **Available properties in `input$id`:**
#' - `$value` - The value of the selected option
#' - `$disabled` - Whether the select is disabled
#' - `$scale` - The size of the component
#' - `$status` - The validation status
#' - Other component properties
#'
#' **Events:**
#' - `calciteSelectChange` - Fires when the selected option changes
#'
#' @export
#' @return An object of class `calcite_component`
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/select/)
#' @examples
#' # Using values and labels vectors (convenient)
#' calcite_select(
#'   id = "my_select",
#'   label = "Choose terrain type",
#'   values = c("mountains", "rivers", "lakes", "buttes", "fjords"),
#'   labels = c("Mountains", "Rivers", "Lakes", "Buttes", "Fjords")
#' )
#'
#' # Using values only (labels default to values)
#' calcite_select(
#'   id = "simple_select",
#'   label = "Choose an option",
#'   values = c("option1", "option2", "option3")
#' )
#'
#' # Manually constructing options (more control)
#' calcite_select(
#'   id = "fruit_select",
#'   label = "Choose a fruit",
#'   label_text = "Select your favorite fruit",
#'   scale = "m",
#'   calcite_option(label = "Apple", value = "apple"),
#'   calcite_option(label = "Banana", value = "banana", selected = TRUE),
#'   calcite_option(label = "Orange", value = "orange")
#' )
#'
#' # Required select with validation
#' calcite_select(
#'   id = "required_select",
#'   label = "Required field",
#'   label_text = "Make a selection",
#'   required = TRUE,
#'   status = "invalid",
#'   validation_message = "Please select an option",
#'   calcite_option(label = "Choose...", value = ""),
#'   calcite_option(label = "Option A", value = "a"),
#'   calcite_option(label = "Option B", value = "b")
#' )
calcite_select <- function(
  ...,
  values = NULL,
  labels = NULL,
  id = NULL,
  label,
  disabled = NULL,
  form = NULL,
  label_text = NULL,
  message_overrides = NULL,
  name = NULL,
  required = NULL,
  scale = NULL,
  status = NULL,
  validation_icon = NULL,
  validation_message = NULL,
  value = NULL,
  width = NULL,
  label_content = NULL
) {
  # Validate scale if provided
  if (!is.null(scale)) {
    scale <- rlang::arg_match(scale, c("s", "m", "l"))
  }

  # Validate status if provided
  if (!is.null(status)) {
    status <- rlang::arg_match(status, c("idle", "invalid", "valid"))
  }

  # Validate width if provided
  if (!is.null(width)) {
    width <- rlang::arg_match(width, c("auto", "full", "half"))
  }

  # Build attributes list
  attribs <- compact(list(
    id = id,
    label = label,
    disabled = disabled,
    form = form,
    `label-text` = label_text,
    name = name,
    required = required,
    scale = scale,
    status = status,
    `validation-icon` = validation_icon,
    `validation-message` = validation_message,
    value = value,
    width = width
  ))

  # Handle options: values/labels take precedence over ...
  if (!is.null(values)) {
    # If labels not provided, use values as labels
    if (is.null(labels)) {
      labels <- values
    }

    # Validate lengths match
    if (length(values) != length(labels)) {
      stop("'values' and 'labels' must have the same length")
    }

    # If no value is specified, default to the first value
    if (is.null(value) && length(values) > 0) {
      value <- values[1]
    }

    # Create calcite_option components
    options_list <- mapply(
      function(val, lab) calcite_option(value = val, label = lab),
      values,
      labels,
      USE.NAMES = FALSE,
      SIMPLIFY = FALSE
    )
  } else {
    # Use manually constructed options from ...
    options_list <- rlang::dots_list(...)
  }

  # Handle label-content slot
  slot_content <- add_slot(label_content, "label-content")
  slot_content <- Filter(Negate(is.null), list(slot_content))

  # Custom binding for select
  select_binding <- htmltools::htmlDependency(
    name = "calcite-select-binding",
    version = calcite_version(),
    src = c(file = system.file("www", package = "calcite")),
    script = "calcite-select.js"
  )

  res <- htmltools::tag(
    "calcite-select",
    c(
      attribs,
      options_list,
      slot_content,
      list(calcite_dependency(), select_binding)
    )
  )

  class(res) <- c("calcite_component", class(res))
  res
}
