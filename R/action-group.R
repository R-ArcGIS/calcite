#' Create a Calcite Action Group Component
#'
#' Groups multiple action components together with consistent layout and spacing.
#' Action groups can be used within action bars to organize related actions.
#'
#' @param ... Child `calcite_action()` components or other content
#' @param id Optional ID for the action group
#' @param layout Layout style: "vertical", "horizontal", or "grid"
#' @param columns Number of columns when layout is "grid" (1-6)
#' @param scale Size of the group: "s" (small), "m" (medium), or "l" (large)
#' @param expanded Whether the group is expanded
#' @param label Accessibility label for the group
#' @param slot Optional slot name (e.g., "bottom-actions" for action bars)
#'
#' @export
#' @return An object of class `calcite_component`
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/action-group/)
#' @examples
#' # Basic action group with vertical layout
#' calcite_action_group(
#'   calcite_action(text = "Add", icon = "plus"),
#'   calcite_action(text = "Edit", icon = "pencil"),
#'   calcite_action(text = "Delete", icon = "trash")
#' )
#'
#' # Horizontal group with custom scale
#' calcite_action_group(
#'   layout = "horizontal",
#'   scale = "l",
#'   calcite_action(text = "Save", icon = "save"),
#'   calcite_action(text = "Cancel", icon = "x")
#' )
#'
#' # Grid layout with 2 columns
#' calcite_action_group(
#'   layout = "grid",
#'   columns = 2,
#'   calcite_action(text = "A", icon = "letter-a"),
#'   calcite_action(text = "B", icon = "letter-b"),
#'   calcite_action(text = "C", icon = "letter-c"),
#'   calcite_action(text = "D", icon = "letter-d")
#' )
calcite_action_group <- function(
  ...,
  id = NULL,
  layout = NULL,
  columns = NULL,
  scale = NULL,
  expanded = NULL,
  label = NULL,
  slot = NULL
) {
  # Validate layout if provided
  if (!is.null(layout)) {
    layout <- match.arg(layout, c("vertical", "horizontal", "grid"))
  }

  # Validate scale if provided
  if (!is.null(scale)) {
    scale <- match.arg(scale, c("s", "m", "l"))
  }

  # Validate columns if provided
  if (!is.null(columns)) {
    if (!is.numeric(columns) || columns < 1 || columns > 6) {
      stop("columns must be a number between 1 and 6")
    }
  }

  # Build attributes list
  attribs <- compact(list(
    id = id,
    layout = layout,
    columns = columns,
    scale = scale,
    expanded = expanded,
    label = label,
    slot = slot
  ))

  # Build the tag
  res <- htmltools::tag(
    "calcite-action-group",
    c(
      attribs,
      rlang::dots_list(...),
      list(calcite_dependency(), calcite_bindings())
    )
  )

  class(res) <- c("calcite_component", class(res))
  res
}
