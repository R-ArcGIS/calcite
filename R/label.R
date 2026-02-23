#' Create a Calcite Label Component
#'
#' Creates a label component that wraps and provides accessible text for form controls
#' and other interactive elements.
#'
#' @param label The label text (required)
#' @param ... Child components to wrap within the label (e.g., calcite_input_text())
#' @param target_id The id of the component this label is bound to (only needed when
#'   the labeled component is outside the label). Maps to the `for` HTML attribute
#' @param id Component ID (optional)
#' @param alignment Specifies the text alignment of the component: "start", "center",
#'   or "end" (default: "start")
#' @param layout Defines the layout of the label: "block", "default", "inline",
#'   or "inline-space-between" (default: "default").
#'   Note: "default" is deprecated, use "block" instead
#' @param scale Specifies the size of the component: "s" (small), "m" (medium),
#'   or "l" (large) (default: "m")
#'
#' @export
#' @return An object of class `calcite_component`
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/label/)
#' @examples
#' # Label wrapping an input
#' calcite_label(
#'   label = "Username",
#'   calcite_input_text(
#'     id = "username",
#'     placeholder = "Enter username"
#'   )
#' )
#'
#' # Label with inline layout
#' calcite_label(
#'   label = "Subscribe",
#'   layout = "inline",
#'   calcite_checkbox(id = "subscribe")
#' )
#'
#' # Label with external component (using target_id)
#' htmltools::tagList(
#'   calcite_label(
#'     label = "Password",
#'     target_id = "password"
#'   ),
#'   calcite_input_text(id = "password", placeholder = "Enter password")
#' )
calcite_label <- function(
  label,
  ...,
  target_id = NULL,
  id = NULL,
  alignment = NULL,
  layout = NULL,
  scale = NULL
) {
  # Validate alignment if provided
  if (!is.null(alignment)) {
    alignment <- rlang::arg_match(alignment, c("start", "center", "end"))
  }

  # Validate layout if provided
  if (!is.null(layout)) {
    layout <- rlang::arg_match(
      layout,
      c("block", "default", "inline", "inline-space-between")
    )
  }

  # Validate scale if provided
  if (!is.null(scale)) {
    scale <- rlang::arg_match(scale, c("s", "m", "l"))
  }

  # Build attributes list
  attribs <- compact(list(
    id = id,
    alignment = alignment,
    `for` = target_id,
    layout = layout,
    scale = scale
  ))

  # Get children from dots
  children <- rlang::list2(...)

  res <- htmltools::tag(
    "calcite-label",
    c(
      attribs,
      list(label),
      children,
      list(calcite_dependency())
    )
  )

  class(res) <- c("calcite_component", class(res))
  res
}
