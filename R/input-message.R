#' Create a Calcite Input Message Component
#'
#' Creates a message component that displays validation messages, hints, and other
#' contextual feedback for input components.
#'
#' @param ... Content for the message (default slot) - typically text or textOutput()
#' @param status Status of the message: "idle", "valid", or "invalid" (default: "idle")
#' @param icon Specifies an icon to display (TRUE for default or icon name)
#' @param icon_flip_rtl When TRUE, icon is flipped in RTL direction (default: FALSE)
#' @param scale Size of the component: "s", "m", or "l" (default: "m")
#' @param id Component ID (optional)
#'
#' @details
#' ## Usage
#'
#' Input messages are typically used inside a `calcite_label()` component alongside
#' an input to provide contextual feedback, validation messages, or hints.
#'
#' ## Status Options
#'
#' - **"valid"**: Green checkmark icon, success message
#' - **"invalid"**: Red warning icon, error message
#' - **"idle"**: Default state, informational message
#'
#' ## Dynamic Messages
#'
#' Use `textOutput()` in the slot and `renderText()` in the server to create dynamic
#' validation messages. Use `update_calcite()` to change the status/icon properties.
#'
#' @export
#' @return An object of class `calcite_component`
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/input-message/)
#' @examples
#' # Static message
#' calcite_input_message(
#'   "Username is available",
#'   status = "valid",
#'   icon = TRUE
#' )
#'
#' # Dynamic message with textOutput
#' calcite_input_message(
#'   textOutput("validation_msg"),
#'   status = "invalid",
#'   icon = "exclamation-mark-circle",
#'   id = "msg"
#' )
#'
#' # With input in a label
#' calcite_label(
#'   label = "Username",
#'   calcite_input_text(
#'     id = "username",
#'     placeholder = "Enter username"
#'   ),
#'   calcite_input_message(
#'     "Username must be 3-20 characters",
#'     status = "idle"
#'   )
#' )
calcite_input_message <- function(
  ...,
  status = NULL,
  icon = NULL,
  icon_flip_rtl = NULL,
  scale = NULL,
  id = NULL
) {
  # Validate status if provided
  if (!is.null(status)) {
    status <- rlang::arg_match(status, c("idle", "valid", "invalid"))
  }

  # Validate scale if provided
  if (!is.null(scale)) {
    scale <- rlang::arg_match(scale, c("s", "m", "l"))
  }

  # Build attributes list
  attribs <- compact(list(
    id = id,
    status = status,
    icon = icon,
    `icon-flip-rtl` = icon_flip_rtl,
    scale = scale
  ))

  # Get content from dots
  content <- rlang::list2(...)

  # Custom binding for input-message (for update_calcite support)
  input_message_binding <- htmltools::htmlDependency(
    name = "calcite-input-message-binding",
    version = calcite_version(),
    src = c(file = system.file("www", package = "calcite")),
    script = "calcite-input-message.js"
  )

  res <- htmltools::tag(
    "calcite-input-message",
    c(
      attribs,
      content,
      list(calcite_dependency(), input_message_binding)
    )
  )

  class(res) <- c("calcite_component", class(res))
  res
}
