#' Create a Calcite Checkbox Component
#'
#' A checkbox allows users to make a binary selection, typically within a form
#' or as a standalone toggle. Supports indeterminate state for tri-state behavior.
#'
#' @param id Component ID (required for Shiny reactivity)
#' @param checked When `TRUE`, the component is checked. Default: `FALSE`
#' @param disabled When `TRUE`, interaction is prevented and the component is
#'   displayed with lower opacity. Default: `FALSE`
#' @param form Specifies the id of the component's associated form.
#' @param indeterminate When `TRUE`, the component is initially indeterminate,
#'   independent from its checked value. Visual only. Default: `FALSE`
#' @param label Specifies an accessible label for the component.
#' @param label_text Specifies the component's label text.
#' @param name Specifies the name of the component. Required to pass the
#'   component's value on form submission.
#' @param required When `TRUE` and the component resides in a form, the
#'   component must have a value in order for the form to submit. Default: `FALSE`
#' @param scale Specifies the size of the component: `"s"`, `"m"`, or `"l"`.
#'   Default: `"m"`
#' @param status Specifies the status of the input field: `"idle"`, `"invalid"`,
#'   or `"valid"`. Default: `"idle"`
#' @param value The component's value.
#'
#' @details
#' ## Shiny Integration
#'
#' When an `id` is provided, the checkbox emits its state whenever it changes.
#'
#' **Available properties in `input$id`:**
#' - `$checked` - Whether the checkbox is checked
#' - `$indeterminate` - Whether the checkbox is in indeterminate state
#' - `$value` - The component's value
#' - `$disabled` - Whether the checkbox is disabled
#' - `$name` - The component's name
#' - `$scale` - The component's scale
#' - `$status` - The component's status
#'
#' **Events:**
#' - `calciteCheckboxChange` - Fires when the checked status changes
#'
#' @export
#' @return An object of class `calcite_component`
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/checkbox/)
#' @examples
#' calcite_checkbox(id = "agree", label_text = "I agree to the terms")
#'
#' calcite_checkbox(
#'   id = "opt_in",
#'   label_text = "Subscribe to newsletter",
#'   checked = TRUE,
#'   scale = "l"
#' )
calcite_checkbox <- function(
  id = NULL,
  checked = NULL,
  disabled = NULL,
  form = NULL,
  indeterminate = NULL,
  label = NULL,
  label_text = NULL,
  name = NULL,
  required = NULL,
  scale = NULL,
  status = NULL,
  value = NULL
) {
  if (!is.null(scale)) {
    scale <- rlang::arg_match(scale, c("s", "m", "l"))
  }

  if (!is.null(status)) {
    status <- rlang::arg_match(status, c("idle", "invalid", "valid"))
  }

  attribs <- compact(list(
    id = id,
    checked = checked,
    disabled = disabled,
    form = form,
    indeterminate = indeterminate,
    label = label,
    `label-text` = label_text,
    name = name,
    required = required,
    scale = scale,
    status = status,
    value = value
  ))

  checkbox_binding <- htmltools::htmlDependency(
    name = "calcite-checkbox-binding",
    version = calcite_version(),
    src = c(file = system.file("www", package = "calcite")),
    script = "calcite-checkbox.js"
  )

  res <- htmltools::tag(
    "calcite-checkbox",
    c(attribs, list(calcite_dependency(), checkbox_binding))
  )

  class(res) <- c("calcite_component", class(res))
  res
}
