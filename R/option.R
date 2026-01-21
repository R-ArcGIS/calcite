#' Create a Calcite Option Component
#'
#' Option provides a selectable item within a [calcite_select()] component.
#' Each option represents a single choice in the select dropdown menu.
#'
#' @param label Text label for the option (required for accessibility)
#' @param value The component's value (can be any type)
#' @param disabled When true, interaction is prevented and the component is displayed with lower opacity
#' @param selected When true, the component is selected
#' @param ... Additional attributes passed to the component
#'
#' @details
#' Options are used within [calcite_select()] to define the available choices.
#' The `value` parameter determines what value will be sent to Shiny when the
#' option is selected.
#'
#' @export
#' @return An object of class `calcite_component`
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/option/)
#' @examples
#' # Basic option
#' calcite_option(
#'   label = "First Option",
#'   value = "1"
#' )
#'
#' # Selected option
#' calcite_option(
#'   label = "Default Selection",
#'   value = "default",
#'   selected = TRUE
#' )
#'
#' # Disabled option
#' calcite_option(
#'   label = "Unavailable",
#'   value = "unavailable",
#'   disabled = TRUE
#' )
#'
#' # Use with calcite_select
#' calcite_select(
#'   id = "my_select",
#'   label = "Choose one",
#'   calcite_option(label = "Option 1", value = "1"),
#'   calcite_option(label = "Option 2", value = "2", selected = TRUE),
#'   calcite_option(label = "Option 3", value = "3")
#' )
calcite_option <- function(
  label,
  value,
  disabled = NULL,
  selected = NULL,
  ...
) {
  # Build attributes list
  attribs <- compact(list(
    label = label,
    value = value,
    disabled = disabled,
    selected = selected
  ))

  # Combine with dots
  extra_attribs <- rlang::dots_list(...)
  all_attribs <- c(
    attribs,
    extra_attribs[!names(extra_attribs) %in% names(attribs)]
  )

  # Custom binding for option
  option_binding <- htmltools::htmlDependency(
    name = "calcite-option-binding",
    version = calcite_version(),
    src = c(file = system.file("www", package = "calcite")),
    script = "calcite-option.js"
  )

  res <- htmltools::tag(
    "calcite-option",
    c(
      all_attribs,
      list(calcite_dependency(), option_binding)
    )
  )

  class(res) <- c("calcite_component", class(res))
  res
}
