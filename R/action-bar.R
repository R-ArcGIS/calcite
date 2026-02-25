#' Create a Calcite Action Bar Component
#'
#' Action Bar is composed of [calcite_action()]s used for core operations in
#' the interface. When given an `id`, it acts as a Shiny input that reports
#' the `text` of the currently active action as `input$id`.
#'
#' @param ... [calcite_action()] or [calcite_action_group()] components
#' @param id Optional ID. When provided, `input$id` will contain the `text`
#'   of the currently active action.
#' @param expand_disabled When `TRUE`, disables the expand/collapse toggle.
#' @param expanded When `TRUE`, the action bar is expanded showing text labels.
#' @param floating When `TRUE`, the component is in a floating state.
#' @param layout Layout direction of the actions: `"vertical"`, `"horizontal"`,
#'   or `"grid"`.
#' @param overflow_actions_disabled When `TRUE`, disables automatic overflowing
#'   of actions into menus.
#' @param position Position of the component: `"start"` or `"end"`.
#' @param scale Size of the expand action: `"s"`, `"m"`, or `"l"`.
#'
#' @details
#' ## Shiny Integration
#'
#' When `id` is provided, `input$id` returns the `text` of the currently
#' active [calcite_action()]. The action bar manages active state automatically
#' — clicking an action activates it and deactivates all others.
#'
#' ```r
#' observeEvent(input$my_bar, {
#'   cat("Active action:", input$my_bar, "\n")
#' })
#' ```
#'
#' Use `update_calcite()` to programmatically set the active action by passing
#' the `text` value of the action to activate.
#'
#' @export
#' @return An object of class `calcite_component`
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/action-bar/)
#' @examples
#' calcite_action_bar(
#'   id = "my_bar",
#'   calcite_action(text = "Layers", icon = "layers", active = TRUE),
#'   calcite_action(text = "Legend", icon = "legend")
#' )
calcite_action_bar <- function(
  ...,
  id = NULL,
  expand_disabled = NULL,
  expanded = NULL,
  floating = NULL,
  layout = NULL,
  overflow_actions_disabled = NULL,
  position = NULL,
  scale = NULL
) {
  if (!is.null(layout)) {
    layout <- rlang::arg_match(layout, c("vertical", "horizontal", "grid"))
  }

  if (!is.null(position)) {
    position <- rlang::arg_match(position, c("start", "end"))
  }

  if (!is.null(scale)) {
    scale <- rlang::arg_match(scale, c("s", "m", "l"))
  }

  attribs <- compact(list(
    id = id,
    `expand-disabled` = expand_disabled,
    expanded = expanded,
    floating = floating,
    layout = layout,
    `overflow-actions-disabled` = overflow_actions_disabled,
    position = position,
    scale = scale
  ))

  action_bar_binding <- htmltools::htmlDependency(
    name = "calcite-action-bar-binding",
    version = calcite_version(),
    src = c(file = system.file("www", package = "calcite")),
    script = "calcite-action-bar.js"
  )

  res <- htmltools::tag(
    "calcite-action-bar",
    c(
      attribs,
      rlang::dots_list(...),
      list(calcite_dependency(), action_bar_binding)
    )
  )

  class(res) <- c("calcite_component", class(res))
  res
}
