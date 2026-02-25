#' Create a Calcite Shell Panel Component
#'
#' Shell Panel is a layout container that slots into [calcite_shell()] via
#' `panel_start` or `panel_end`. It sits adjacent to or on top of the main
#' content area. Pass a [calcite_panel()] (typically containing [calcite_block()]
#' components) as the default content, and optionally a [calcite_action_bar()]
#' in the `action_bar` slot.
#'
#' @param ... Default slot content. Typically a single [calcite_panel()].
#' @param collapsed When `TRUE`, hides the component's content area. Default: `FALSE`
#' @param display_mode Specifies the display mode:
#'   - `"dock"` (default): full height, pushes center content aside
#'   - `"overlay"`: full height, displays on top of center content
#'   - `"float-content"`: not full height, content detached from action bar, on top of center content
#'   - `"float-all"`: detaches both panel and action bar on top of center content
#' @param height Specifies the component's height.
#' @param message_overrides Override individual strings used by the component.
#' @param resizable When `TRUE` and `display_mode` is `"dock"` or `"overlay"`,
#'   the content area is resizable. Default: `FALSE`
#' @param width Specifies the component's width: `"s"`, `"m"`, or `"l"`.
#' @param action_bar Content for the `action-bar` slot. Typically a
#'   [calcite_action_bar()] component.
#'
#' @details
#' ## Usage
#'
#' Shell Panel is the recommended wrapper when placing panels inside
#' [calcite_shell()]'s `panel_start` or `panel_end` slots. It controls display
#' mode, width, collapsibility, and action bar placement.
#'
#' Multiple Shell Panels can be open simultaneously, unlike [calcite_sheet()].
#' It does not provide a page-blocking scrim and is not intended to interrupt
#' the main application workflow.
#'
#' @export
#' @return An object of class `calcite_component`
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/shell-panel/)
#' @examples
#' calcite_shell(
#'   panel_start = calcite_shell_panel(
#'     calcite_panel(
#'       heading = "Layers",
#'       calcite_block(
#'         heading = "Options",
#'         collapsible = TRUE,
#'         expanded = TRUE
#'       )
#'     )
#'   ),
#'   calcite_panel(heading = "Map View")
#' )
calcite_shell_panel <- function(
  ...,
  collapsed = NULL,
  display_mode = NULL,
  height = NULL,
  message_overrides = NULL,
  resizable = NULL,
  width = NULL,
  action_bar = NULL
) {
  if (!is.null(display_mode)) {
    display_mode <- rlang::arg_match(
      display_mode,
      c("dock", "overlay", "float-content", "float-all")
    )
  }

  if (!is.null(width)) {
    width <- rlang::arg_match(width, c("s", "m", "l"))
  }

  attribs <- compact(list(
    collapsed = collapsed,
    `display-mode` = display_mode,
    height = height,
    resizable = resizable,
    width = width
  ))

  slot_content <- compact(list(
    add_slot(action_bar, "action-bar")
  ))

  res <- htmltools::tag(
    "calcite-shell-panel",
    c(attribs, rlang::dots_list(...), slot_content, list(calcite_dependency()))
  )

  class(res) <- c("calcite_component", class(res))
  res
}
