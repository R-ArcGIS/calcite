#' Create a Calcite Action Component
#'
#' Creates an action button that can be used within action bars and action groups.
#' Actions provide a compact way to trigger operations with icon-based buttons.
#'
#' @param text Text label for the action (required, also used for accessibility)
#' @param icon Icon name from the Calcite icon set
#' @param id Optional ID for the action (required for Shiny reactivity)
#' @param active Whether the action is highlighted/selected
#' @param disabled Whether the action is disabled
#' @param indicator Whether to show a visual indicator (e.g., notification badge)
#' @param text_enabled Whether to display the text label alongside the icon
#' @param scale Size of the action: "s" (small), "m" (medium), or "l" (large)
#' @param alignment Text alignment: "start", "center", or "end"
#' @param appearance Visual style: "solid" or "transparent"
#' @param loading Whether to show a loading indicator
#' @param label Custom accessibility label (defaults to `text` if not provided)
#' @param ... Additional attributes passed to the component
#'
#' @details
#' ## Shiny Integration
#'
#' When used in a Shiny app, `calcite_action()` returns a reactive list containing
#' all component properties. You can observe the entire component state or watch
#' individual properties:
#'
#' **Available properties:**
#' - `$clicked` - Boolean that toggles on each click (use this to detect clicks)
#' - `$active` - Whether the action is currently active/highlighted
#' - `$disabled` - Whether the action is disabled
#' - `$icon` - The icon name
#' - `$text` - The text label
#' - `$indicator` - Whether an indicator is shown
#' - `$alignment`, `$appearance`, `$scale`, etc. - Other component properties
#'
#' **Usage in server:**
#' ```r
#' # Watch for any change to the action (including clicks)
#' observeEvent(input$my_action, {
#'   print("Action changed!")
#' })
#'
#' # Watch only the clicked state
#' observeEvent(input$my_action$clicked, {
#'   print("Action was clicked!")
#' })
#'
#' # Access specific properties
#' observeEvent(input$my_action, {
#'   is_active <- input$my_action$active
#'   click_state <- input$my_action$clicked
#' })
#' ```
#'
#' @export
#' @return An object of class `calcite_component`
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/action/)
#' @examples
#' # Basic action with icon
#' calcite_action(
#'   text = "Layers",
#'   icon = "layers",
#'   id = "layers-action"
#' )
#'
#' # Active action with text label
#' calcite_action(
#'   text = "Settings",
#'   icon = "gear",
#'   active = TRUE,
#'   text_enabled = TRUE
#' )
#'
#' # Action with indicator
#' calcite_action(
#'   text = "Notifications",
#'   icon = "bell",
#'   indicator = TRUE
#' )
#'
#' # Shiny example
#' if (interactive()) {
#'   library(shiny)
#'
#'   ui <- calcite_shell(
#'     calcite_action(
#'       id = "my_action",
#'       text = "Click me",
#'       icon = "check",
#'       text_enabled = TRUE
#'     ),
#'     verbatimTextOutput("status")
#'   )
#'
#'   server <- function(input, output, session) {
#'     # Respond to clicks
#'     observeEvent(input$my_action$clicked, {
#'       message("Action clicked! State: ", input$my_action$clicked)
#'     })
#'
#'     # Display all properties
#'     output$status <- renderPrint({
#'       input$my_action
#'     })
#'   }
#'
#'   shinyApp(ui, server)
#' }
calcite_action <- function(
  text,
  icon = NULL,
  id = NULL,
  active = NULL,
  disabled = NULL,
  indicator = NULL,
  text_enabled = NULL,
  scale = NULL,
  alignment = NULL,
  appearance = NULL,
  loading = NULL,
  label = NULL,
  ...
) {
  if (!is.null(scale)) {
    scale <- match.arg(scale, c("s", "m", "l"))
  }

  if (!is.null(alignment)) {
    alignment <- match.arg(alignment, c("start", "center", "end"))
  }

  if (!is.null(appearance)) {
    appearance <- match.arg(appearance, c("solid", "transparent"))
  }

  attribs <- compact(list(
    id = id,
    text = text,
    icon = icon,
    active = active,
    disabled = disabled,
    indicator = indicator,
    `text-enabled` = text_enabled,
    scale = scale,
    alignment = alignment,
    appearance = appearance,
    loading = loading,
    label = label
  ))

  extra_attribs <- rlang::dots_list(...)

  all_attribs <- c(
    attribs,
    extra_attribs[!names(extra_attribs) %in% names(attribs)]
  )

  action_binding <- htmltools::htmlDependency(
    name = "calcite-action-binding",
    version = calcite_version(),
    src = c(file = system.file("www", package = "calcite")),
    script = "calcite-action.js"
  )

  res <- htmltools::tag(
    "calcite-action",
    c(
      all_attribs,
      list(calcite_dependency(), action_binding)
    )
  )

  class(res) <- c("calcite_component", class(res))
  res
}
