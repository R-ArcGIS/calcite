#' Create a Calcite Notice Component
#'
#' Creates a notice component for displaying informative, contextually relevant
#' messages. Best for persistent information that can be open at page load or
#' displayed as a result of user action.
#'
#' @param ... Child content for slots (title, message, link, actions-end)
#' @param id Component ID (required for Shiny reactivity)
#' @param open Whether the notice is visible (default: FALSE)
#' @param closable Whether to show a close button (default: FALSE)
#' @param icon Show default icon (TRUE) or specific icon name (string)
#' @param icon_flip_rtl Flip icon in RTL languages (default: FALSE)
#' @param kind Type of notice: "brand", "danger", "info", "success", or "warning"
#' @param scale Size of the component: "s" (small), "m" (medium), or "l" (large)
#' @param width Width behavior: "auto" or "full" (note: "half" is deprecated)
#'
#' @details
#' ## Shiny Integration
#'
#' The notice emits events when opened or closed, making it easy to track state
#' and respond to user dismissals.
#'
#' **Available properties in `input$id`:**
#' - `$open` - Whether the notice is currently visible
#' - `$closable` - Whether the notice can be closed
#' - `$kind` - The type of notice
#' - Other component properties
#'
#' **Basic usage:**
#' ```r
#' calcite_notice(
#'   id = "my_notice",
#'   open = TRUE,
#'   closable = TRUE,
#'   kind = "success",
#'   icon = TRUE,
#'   htmltools::div(slot = "title", "Success!"),
#'   htmltools::div(slot = "message", "Your changes have been saved.")
#' )
#'
#' # In server - detect when user closes the notice
#' observeEvent(input$my_notice$open, {
#'   if (!input$my_notice$open) {
#'     message("User dismissed the notice")
#'   }
#' })
#' ```
#'
#' **Show/hide from server:**
#' ```r
#' # Show a notice
#' update_calcite("my_notice", open = TRUE)
#'
#' # Hide a notice
#' update_calcite("my_notice", open = FALSE)
#' ```
#'
#' ## Slots
#'
#' The notice supports several slots for organizing content:
#' - **title**: The notice title
#' - **message**: The notice message
#' - **link**: A calcite-action for links like "Read more"
#' - **actions-end**: Additional actions (recommended: 2 or fewer)
#'
#' ## Best Practices
#'
#' - Use for informative, contextually relevant information
#' - Can be open at page load or shown based on user action
#' - Can be persistent or closable
#' - Use appropriate `kind` to convey message severity
#'
#' @export
#' @return An object of class `calcite_component`
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/notice/)
#' @examples
#' # Basic notice
#' calcite_notice(
#'   open = TRUE,
#'   icon = TRUE,
#'   closable = TRUE,
#'   htmltools::div(slot = "title", "New feature available"),
#'   htmltools::div(slot = "message", "Check out the reporting dashboard")
#' )
#'
#' # Notice with specific icon and kind
#' calcite_notice(
#'   open = TRUE,
#'   kind = "danger",
#'   icon = "exclamation-mark-triangle",
#'   htmltools::div(slot = "title", "Error in form"),
#'   htmltools::div(slot = "message", "Please correct the highlighted fields")
#' )
#'
#' # Notice with action link
#' calcite_notice(
#'   open = TRUE,
#'   icon = "layers-reference",
#'   htmltools::div(slot = "title", "Try this trick"),
#'   htmltools::div(slot = "message", "Select multiple layers at once"),
#'   calcite_link(text = "Read more", href = "#")
#' )
#'
#' # Shiny example with server control
#' if (interactive()) {
#'   library(shiny)
#'
#'   ui <- calcite_shell(
#'     calcite_panel(
#'       heading = "Notice Demo",
#'
#'       calcite_notice(
#'         id = "my_notice",
#'         open = FALSE,
#'         closable = TRUE,
#'         kind = "success",
#'         icon = TRUE,
#'         htmltools::div(slot = "title", "Success!"),
#'         htmltools::div(slot = "message", "Your action completed successfully")
#'       ),
#'
#'       calcite_button(
#'         id = "show_notice",
#'         "Show Notice"
#'       ),
#'
#'       verbatimTextOutput("notice_status")
#'     )
#'   )
#'
#'   server <- function(input, output, session) {
#'     # Show notice when button clicked
#'     observeEvent(input$show_notice$clicked, {
#'       update_calcite("my_notice", open = TRUE)
#'     })
#'
#'     # Track notice state
#'     output$notice_status <- renderPrint({
#'       list(
#'         is_open = input$my_notice$open,
#'         kind = input$my_notice$kind
#'       )
#'     })
#'   }
#'
#'   shinyApp(ui, server)
#' }
calcite_notice <- function(
  ...,
  id = NULL,
  open = NULL,
  closable = NULL,
  icon = NULL,
  icon_flip_rtl = NULL,
  kind = NULL,
  scale = NULL,
  width = NULL
) {
  # Validate kind if provided
  if (!is.null(kind)) {
    kind <- rlang::arg_match(
      kind,
      c("brand", "danger", "info", "success", "warning")
    )
  }

  # Validate scale if provided
  if (!is.null(scale)) {
    scale <- rlang::arg_match(scale, c("s", "m", "l"))
  }

  # Validate width if provided
  if (!is.null(width)) {
    width <- rlang::arg_match(width, c("auto", "full"))
  }

  # Build attributes list
  # For boolean attributes, only include them if TRUE (omit if FALSE/NULL)
  attribs <- compact(list(
    id = id,
    open = if (isTRUE(open)) TRUE else NULL,
    closable = if (isTRUE(closable)) TRUE else NULL,
    icon = icon,
    `icon-flip-rtl` = if (isTRUE(icon_flip_rtl)) TRUE else NULL,
    kind = kind,
    scale = scale,
    width = width
  ))

  # Combine with dots
  extra_attribs <- rlang::dots_list(...)
  all_attribs <- c(
    attribs,
    extra_attribs[!names(extra_attribs) %in% names(attribs)]
  )

  # Custom binding for notice
  notice_binding <- htmltools::htmlDependency(
    name = "calcite-notice-binding",
    version = calcite_version(),
    src = c(file = system.file("www", package = "calcite")),
    script = "calcite-notice.js"
  )

  res <- htmltools::tag(
    "calcite-notice",
    c(all_attribs, list(calcite_dependency(), notice_binding))
  )

  class(res) <- c("calcite_component", class(res))
  res
}
