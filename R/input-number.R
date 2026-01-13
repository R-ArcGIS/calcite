#' Create a Calcite Input Number Component
#'
#' Creates a number input component for form entry where users can enter numeric values.
#' Supports integer-only mode, min/max constraints, and number formatting.
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
#' @param group_separator When TRUE, number values display with a group separator
#'   corresponding to the language and country format (default: FALSE)
#' @param icon Specifies an icon to display (TRUE for default or icon name)
#' @param icon_flip_rtl When TRUE, icon is flipped in RTL direction (default: FALSE)
#' @param integer When TRUE, restricts the component to integer numbers only and
#'   disables exponential notation (default: FALSE)
#' @param loading When TRUE, displays a busy indicator (default: FALSE)
#' @param max Maximum value for the input
#' @param min Minimum value for the input
#' @param number_button_type Placement of the increment/decrement buttons: "vertical",
#'   "horizontal", or "none" (default: "vertical")
#' @param numbering_system Unicode numeral system: "arab", "arabext", or "latn"
#' @param prefix_text Text to display at the start of the component
#' @param read_only When TRUE, value can be read but not modified (default: FALSE)
#' @param required When TRUE, must have a value for form submission (default: FALSE)
#' @param scale Size of the component: "s", "m", or "l" (default: "m")
#' @param status Status of the input field: "idle", "valid", or "invalid" (default: "idle")
#' @param step Granularity the value must adhere to (can be "any" or a number)
#' @param suffix_text Text to display at the end of the component
#' @param validation_icon Validation icon to display (TRUE or icon name)
#' @param validation_message Validation message to display
#' @param action Content for the action slot (typically a calcite_action)
#' @param label_content Content for the label-content slot
#'
#' @details
#' ## Shiny Integration
#'
#' When used in a Shiny app, `calcite_input_number()` returns a reactive list containing:
#'
#' **Available properties:**
#' - `$value` - The current numeric value (as string)
#' - `$validity` - Object containing validation state (valid, badInput, rangeOverflow, etc.)
#' - `$status` - Current status ("idle", "valid", "invalid")
#' - Other component properties
#'
#' **Usage in server:**
#' ```r
#' # Watch for value changes
#' observeEvent(input$age$value, {
#'   age_num <- as.numeric(input$age$value)
#'   print(paste("Age:", age_num))
#' })
#'
#' # Check validity
#' observeEvent(input$age, {
#'   if (input$age$validity$valid) {
#'     print("Valid number entered")
#'   }
#'   if (input$age$validity$rangeOverflow) {
#'     print("Number is too large")
#'   }
#' })
#' ```
#'
#' @export
#' @return An object of class `calcite_component`
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/input-number/)
#' @examples
#' # Basic number input
#' calcite_input_number(
#'   id = "quantity",
#'   placeholder = "Enter quantity"
#' )
#'
#' # Integer-only input with constraints
#' calcite_input_number(
#'   id = "age",
#'   integer = TRUE,
#'   min = 0,
#'   max = 120,
#'   step = 1,
#'   required = TRUE
#' )
#'
#' # Price input with formatting
#' calcite_input_number(
#'   id = "price",
#'   prefix_text = "$",
#'   group_separator = TRUE,
#'   step = 0.01,
#'   min = 0
#' )
#'
#' # Percentage input
#' calcite_input_number(
#'   id = "percent",
#'   suffix_text = "%",
#'   min = 0,
#'   max = 100,
#'   step = 1
#' )
calcite_input_number <- function(
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
  group_separator = NULL,
  icon = NULL,
  icon_flip_rtl = NULL,
  integer = NULL,
  loading = NULL,
  max = NULL,
  min = NULL,
  number_button_type = NULL,
  numbering_system = NULL,
  prefix_text = NULL,
  read_only = NULL,
  required = NULL,
  scale = NULL,
  status = NULL,
  step = NULL,
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

  # Validate number_button_type if provided
  if (!is.null(number_button_type)) {
    number_button_type <- rlang::arg_match(
      number_button_type,
      c("vertical", "horizontal", "none")
    )
  }

  # Validate numbering_system if provided
  if (!is.null(numbering_system)) {
    numbering_system <- rlang::arg_match(
      numbering_system,
      c("arab", "arabext", "latn")
    )
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
    `group-separator` = group_separator,
    icon = icon,
    `icon-flip-rtl` = icon_flip_rtl,
    integer = integer,
    loading = loading,
    max = max,
    min = min,
    `number-button-type` = number_button_type,
    `numbering-system` = numbering_system,
    `prefix-text` = prefix_text,
    `read-only` = read_only,
    required = required,
    scale = scale,
    status = status,
    step = step,
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

  # Custom binding for input-number
  input_number_binding <- htmltools::htmlDependency(
    name = "calcite-input-number-binding",
    version = calcite_version(),
    src = c(file = system.file("www", package = "calcite")),
    script = "calcite-input-number.js"
  )

  res <- htmltools::tag(
    "calcite-input-number",
    c(
      attribs,
      slot_content,
      list(calcite_dependency(), input_number_binding)
    )
  )

  class(res) <- c("calcite_component", class(res))
  res
}
