#' Create a Calcite Alert Component
#'
#' Alerts are meant to quickly convey a message to the user. They are ephemeral,
#' workflow-specific messaging that is positioned absolutely over content.
#'
#' @param kind Specifies the kind of alert: "brand", "danger", "info", "success", or "warning" (default: "brand")
#' @param ... Child content for the alert
#' @param id Component ID (required for Shiny reactivity)
#' @param label Accessible name for the component (required)
#' @param open When true, displays and positions the component (default: FALSE)
#' @param icon When TRUE, shows a default recommended icon. Alternatively, pass a Calcite UI Icon name to display a specific icon
#' @param icon_flip_rtl When TRUE, the icon will be flipped when the element direction is right-to-left
#' @param auto_close When TRUE, the component closes automatically. Recommended for passive, non-blocking alerts (default: FALSE)
#' @param auto_close_duration Duration before auto-close: "fast", "medium", or "slow" (default: "medium")
#' @param placement Placement of the component: "top", "top-start", "top-end", "bottom", "bottom-start", or "bottom-end" (default: "bottom")
#' @param queue Ordering priority when opened: "immediate", "last", or "next" (default: "last")
#' @param scale Size of the component: "s" (small), "m" (medium), or "l" (large) (default: "m")
#' @param numbering_system Unicode numeral system for localization: "arab", "arabext", or "latn"
#' @param title Content for the title slot
#' @param message Content for the message slot
#' @param link Content for the link slot (typically [calcite_link()])
#' @param actions_end Content for the actions-end slot (typically [calcite_action()] components)
#'
#' @details
#' ## Best Practices
#'
#' While visually similar to Notice, Alert has distinct capabilities and intended use cases:
#'
#' **Alert:**
#' - Best for ephemeral, workflow-specific messaging
#' - Generally should not be open at page load
#' - Most often displayed as a result of user interaction
#' - Positioned absolutely over content
#'
#' **Notice:**
#' - Best for informative, contextually relevant information
#' - Can be open at page load, or displayed as a result of user action
#' - Can be persisted in the interface or made closable
#'
#' **Modal:**
#' - Best for long-form messaging or narrative content
#' - Can contain media or interactive elements
#' - Generally presented as a result of user invocation
#'
#' ## Writing and Copy
#'
#' Alerts are meant to quickly convey a message to the user. Keep copy short and to the point.
#' Consistent Alert structure, verbiage, and copy ensures users have an expected experience.
#'
#' ## Shiny Integration
#'
#' **Available properties in `input$id`:**
#' - `$open` - Whether the alert is currently displayed
#' - `$kind` - The alert kind
#' - Other component properties
#'
#' **Events:**
#' - `calciteAlertBeforeClose` - Before closing transition begins
#' - `calciteAlertBeforeOpen` - Before opening transition begins
#' - `calciteAlertClose` - After close animation completes
#' - `calciteAlertOpen` - After open animation completes
#'
#' @export
#' @return An object of class `calcite_component`
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/alert/)
#' @examples
#' # Basic success alert
#' calcite_alert_success(
#'   label = "Success",
#'   icon = "smile",
#'   open = TRUE,
#'   title = "Everything worked out!",
#'   message = "Take a moment to reflect on your day"
#' )
#'
#' # Alert with link
#' calcite_alert_info(
#'   label = "Notification",
#'   open = TRUE,
#'   title = "Something interesting just happened",
#'   message = "We thought you might want to take a look",
#'   link = calcite_link("Take action", href = "#")
#' )
calcite_alert <- function(
  kind = NULL,
  ...,
  id = NULL,
  label = NULL,
  open = NULL,
  icon = TRUE,
  icon_flip_rtl = NULL,
  auto_close = NULL,
  auto_close_duration = NULL,
  placement = NULL,
  queue = NULL,
  scale = NULL,
  numbering_system = NULL,
  title = NULL,
  message = NULL,
  link = NULL,
  actions_end = NULL
) {
  # Validate kind if provided
  if (!is.null(kind)) {
    kind <- rlang::arg_match(
      kind,
      c("brand", "danger", "info", "success", "warning")
    )
  }

  # Validate auto_close_duration if provided
  if (!is.null(auto_close_duration)) {
    auto_close_duration <- rlang::arg_match(
      auto_close_duration,
      c("fast", "medium", "slow")
    )
  }

  # Validate placement if provided
  if (!is.null(placement)) {
    placement <- rlang::arg_match(
      placement,
      c("top", "top-start", "top-end", "bottom", "bottom-start", "bottom-end")
    )
  }

  # Validate queue if provided
  if (!is.null(queue)) {
    queue <- rlang::arg_match(queue, c("immediate", "last", "next"))
  }

  # Validate scale if provided
  if (!is.null(scale)) {
    scale <- rlang::arg_match(scale, c("s", "m", "l"))
  }

  # Validate numbering_system if provided
  if (!is.null(numbering_system)) {
    numbering_system <- rlang::arg_match(
      numbering_system,
      c("arab", "arabext", "latn")
    )
  }

  # Convert TRUE to NA for boolean attributes
  if (isTRUE(open)) open <- NA
  if (isTRUE(icon)) icon <- NA
  if (isTRUE(auto_close)) auto_close <- NA
  if (isTRUE(icon_flip_rtl)) icon_flip_rtl <- NA

  # Build attributes list
  attribs <- compact(list(
    id = id,
    kind = kind,
    label = label,
    open = open,
    icon = icon,
    `icon-flip-rtl` = icon_flip_rtl,
    `auto-close` = auto_close,
    `auto-close-duration` = auto_close_duration,
    placement = placement,
    queue = queue,
    scale = scale,
    `numbering-system` = numbering_system
  ))

  # Combine with dots (child content)
  extra_attribs <- rlang::dots_list(...)
  all_attribs <- c(
    attribs,
    extra_attribs[!names(extra_attribs) %in% names(attribs)]
  )

  # Collect all slot content
  slot_content <- list(
    add_slot(title, "title"),
    add_slot(message, "message"),
    add_slot(link, "link"),
    add_slot(actions_end, "actions-end")
  )

  # Remove NULLs
  slot_content <- compact(slot_content)

  # Custom binding for alert
  alert_binding <- htmltools::htmlDependency(
    name = "calcite-alert-binding",
    version = calcite_version(),
    src = c(file = system.file("www", package = "calcite")),
    script = "calcite-alert.js"
  )

  res <- htmltools::tag(
    "calcite-alert",
    c(
      all_attribs,
      slot_content,
      c(calcite_dependency(), alert_binding)
    )
  )

  class(res) <- c("calcite_component", class(res))
  res
}

#' @rdname calcite_alert
#' @export
calcite_alert_brand <- function(
  ...,
  id = NULL,
  label = NULL,
  open = NULL,
  icon = TRUE,
  icon_flip_rtl = NULL,
  auto_close = NULL,
  auto_close_duration = NULL,
  placement = NULL,
  queue = NULL,
  scale = NULL,
  numbering_system = NULL,
  title = NULL,
  message = NULL,
  link = NULL,
  actions_end = NULL
) {
  calcite_alert(
    kind = "brand",
    ...,
    id = id,
    label = label,
    open = open,
    icon = icon,
    icon_flip_rtl = icon_flip_rtl,
    auto_close = auto_close,
    auto_close_duration = auto_close_duration,
    placement = placement,
    queue = queue,
    scale = scale,
    numbering_system = numbering_system,
    title = title,
    message = message,
    link = link,
    actions_end = actions_end
  )
}

#' @rdname calcite_alert
#' @export
calcite_alert_danger <- function(
  ...,
  id = NULL,
  label = NULL,
  open = NULL,
  icon = TRUE,
  icon_flip_rtl = NULL,
  auto_close = NULL,
  auto_close_duration = NULL,
  placement = NULL,
  queue = NULL,
  scale = NULL,
  numbering_system = NULL,
  title = NULL,
  message = NULL,
  link = NULL,
  actions_end = NULL
) {
  calcite_alert(
    kind = "danger",
    ...,
    id = id,
    label = label,
    open = open,
    icon = icon,
    icon_flip_rtl = icon_flip_rtl,
    auto_close = auto_close,
    auto_close_duration = auto_close_duration,
    placement = placement,
    queue = queue,
    scale = scale,
    numbering_system = numbering_system,
    title = title,
    message = message,
    link = link,
    actions_end = actions_end
  )
}

#' @rdname calcite_alert
#' @export
calcite_alert_info <- function(
  ...,
  id = NULL,
  label = NULL,
  open = NULL,
  icon = TRUE,
  icon_flip_rtl = NULL,
  auto_close = NULL,
  auto_close_duration = NULL,
  placement = NULL,
  queue = NULL,
  scale = NULL,
  numbering_system = NULL,
  title = NULL,
  message = NULL,
  link = NULL,
  actions_end = NULL
) {
  calcite_alert(
    kind = "info",
    ...,
    id = id,
    label = label,
    open = open,
    icon = icon,
    icon_flip_rtl = icon_flip_rtl,
    auto_close = auto_close,
    auto_close_duration = auto_close_duration,
    placement = placement,
    queue = queue,
    scale = scale,
    numbering_system = numbering_system,
    title = title,
    message = message,
    link = link,
    actions_end = actions_end
  )
}

#' @rdname calcite_alert
#' @export
calcite_alert_success <- function(
  ...,
  id = NULL,
  label = NULL,
  open = NULL,
  icon = TRUE,
  icon_flip_rtl = NULL,
  auto_close = NULL,
  auto_close_duration = NULL,
  placement = NULL,
  queue = NULL,
  scale = NULL,
  numbering_system = NULL,
  title = NULL,
  message = NULL,
  link = NULL,
  actions_end = NULL
) {
  calcite_alert(
    kind = "success",
    ...,
    id = id,
    label = label,
    open = open,
    icon = icon,
    icon_flip_rtl = icon_flip_rtl,
    auto_close = auto_close,
    auto_close_duration = auto_close_duration,
    placement = placement,
    queue = queue,
    scale = scale,
    numbering_system = numbering_system,
    title = title,
    message = message,
    link = link,
    actions_end = actions_end
  )
}

#' @rdname calcite_alert
#' @export
calcite_alert_warning <- function(
  ...,
  id = NULL,
  label = NULL,
  open = NULL,
  icon = TRUE,
  icon_flip_rtl = NULL,
  auto_close = NULL,
  auto_close_duration = NULL,
  placement = NULL,
  queue = NULL,
  scale = NULL,
  numbering_system = NULL,
  title = NULL,
  message = NULL,
  link = NULL,
  actions_end = NULL
) {
  calcite_alert(
    kind = "warning",
    ...,
    id = id,
    label = label,
    open = open,
    icon = icon,
    icon_flip_rtl = icon_flip_rtl,
    auto_close = auto_close,
    auto_close_duration = auto_close_duration,
    placement = placement,
    queue = queue,
    scale = scale,
    numbering_system = numbering_system,
    title = title,
    message = message,
    link = link,
    actions_end = actions_end
  )
}
