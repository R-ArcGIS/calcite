#' Create a Calcite Input Text Component
#'
#' Creates a text input component for form entry where users can enter text values.
#' Supports validation, length constraints, and pattern matching.
#'
#' @param id Component ID (required for Shiny reactivity)
#' @param value The component's value
#' @param name Specifies the name of the component (required for form submission)
#' @param placeholder Specifies placeholder text for the component
#' @param label Accessible name for the component
#' @param label_text When provided, displays label text on the component
#' @param alignment Text alignment of the value: "start", "center", or "end" (default: "start")
#' @param autocomplete Type of content to autocomplete for forms
#' @param clearable When TRUE, shows a clear button when the component has a value (default: FALSE)
#' @param disabled When TRUE, interaction is prevented and displayed with lower opacity (default: FALSE)
#' @param form The id of the form associated with the component
#' @param icon Specifies an icon to display (TRUE for default or icon name)
#' @param icon_flip_rtl When TRUE, icon is flipped in RTL direction (default: FALSE)
#' @param loading When TRUE, displays a busy indicator (default: FALSE)
#' @param max_length Maximum length of text for the component's value
#' @param min_length Minimum length of text for the component's value
#' @param pattern Regular expression pattern the value must match for validation
#' @param prefix_text Text to display at the start of the component
#' @param read_only When TRUE, value can be read but not modified (default: FALSE)
#' @param required When TRUE, must have a value for form submission (default: FALSE)
#' @param scale Size of the component: "s", "m", or "l" (default: "m")
#' @param status Status of the input field: "idle", "valid", or "invalid" (default: "idle")
#' @param suffix_text Text to display at the end of the component
#' @param validation_icon Validation icon to display (TRUE or icon name)
#' @param validation_message Validation message to display
#' @param action Content for the action slot (typically a calcite_action)
#' @param label_content Content for the label-content slot
#'
#' @details
#' ## Shiny Integration
#'
#' When used in a Shiny app, `calcite_input_text()` returns a reactive list containing:
#'
#' **Available properties:**
#' - `$value` - The current text value
#' - `$validity` - Object containing validation state (valid, tooLong, tooShort, patternMismatch, etc.)
#' - `$status` - Current status ("idle", "valid", "invalid")
#' - Other component properties
#'
#' **Usage in server:**
#' ```r
#' # Watch for value changes
#' observeEvent(input$username$value, {
#'   print(paste("Username:", input$username$value))
#' })
#'
#' # Check validity
#' observeEvent(input$username, {
#'   if (input$username$validity$valid) {
#'     print("Valid username entered")
#'   }
#'   if (input$username$validity$tooShort) {
#'     print("Username is too short")
#'   }
#' })
#' ```
#'
#' @export
#' @return An object of class `calcite_component`
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/input-text/)
#' @examples
#' # Basic text input
#' calcite_input_text(
#'   id = "username",
#'   placeholder = "Enter username"
#' )
#'
#' # Text input with length constraints
#' calcite_input_text(
#'   id = "username",
#'   min_length = 3,
#'   max_length = 20,
#'   required = TRUE
#' )
#'
#' # Text input with pattern validation
#' calcite_input_text(
#'   id = "zip_code",
#'   pattern = "\\d{5}",
#'   placeholder = "12345"
#' )
#'
#' # Search input with icon
#' calcite_input_text(
#'   id = "search",
#'   icon = "search",
#'   clearable = TRUE,
#'   placeholder = "Search..."
#' )
calcite_input_text <- function(
  id = NULL,
  value = NULL,
  name = NULL,
  placeholder = NULL,
  label = NULL,
  label_text = NULL,
  alignment = NULL,
  autocomplete = NULL,
  clearable = NULL,
  disabled = NULL,
  form = NULL,
  icon = NULL,
  icon_flip_rtl = NULL,
  loading = NULL,
  max_length = NULL,
  min_length = NULL,
  pattern = NULL,
  prefix_text = NULL,
  read_only = NULL,
  required = NULL,
  scale = NULL,
  status = NULL,
  suffix_text = NULL,
  validation_icon = NULL,
  validation_message = NULL,
  action = NULL,
  label_content = NULL
) {
  # Validate alignment if provided
  if (!is.null(alignment)) {
    alignment <- rlang::arg_match(alignment, c("start", "center", "end"))
  }

  # Validate scale if provided
  if (!is.null(scale)) {
    scale <- rlang::arg_match(scale, c("s", "m", "l"))
  }

  # Validate status if provided
  if (!is.null(status)) {
    status <- rlang::arg_match(status, c("idle", "valid", "invalid"))
  }

  # Build attributes list
  attribs <- compact(list(
    id = id,
    value = value,
    name = name,
    placeholder = placeholder,
    label = label,
    `label-text` = label_text,
    alignment = alignment,
    autocomplete = autocomplete,
    clearable = clearable,
    disabled = disabled,
    form = form,
    icon = icon,
    `icon-flip-rtl` = icon_flip_rtl,
    loading = loading,
    `max-length` = max_length,
    `min-length` = min_length,
    pattern = pattern,
    `prefix-text` = prefix_text,
    `read-only` = read_only,
    required = required,
    scale = scale,
    status = status,
    `suffix-text` = suffix_text,
    `validation-icon` = validation_icon,
    `validation-message` = validation_message
  ))

  # Collect slot content
  slot_content <- c(
    add_slot(action, "action"),
    add_slot(label_content, "label-content")
  )

  # Remove NULLs
  slot_content <- Filter(Negate(is.null), slot_content)

  # Custom binding for input-text
  input_text_binding <- htmltools::htmlDependency(
    name = "calcite-input-text-binding",
    version = calcite_version(),
    src = c(file = system.file("www", package = "calcite")),
    script = "calcite-input-text.js"
  )

  res <- htmltools::tag(
    "calcite-input-text",
    c(
      attribs,
      slot_content,
      list(calcite_dependency(), input_text_binding)
    )
  )

  class(res) <- c("calcite_component", class(res))
  res
}
