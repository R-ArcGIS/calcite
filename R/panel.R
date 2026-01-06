#' Create a Calcite Panel Component
#'
#' Panel is a container that can house interactions as well as live within other
#' Calcite Components. It provides a header with heading text and a summary, and
#' slots to add Actions and Icons to the start and end of the header.
#'
#' @param ... Main content for the panel (default slot)
#' @param id Component ID (required for Shiny reactivity)
#' @param heading Header text for the panel
#' @param description Description text displayed below the heading
#' @param closable Whether to display a close button in the header (default: FALSE)
#' @param closed Whether the component is hidden (default: FALSE)
#' @param collapsed Whether the content area is hidden (default: FALSE)
#' @param collapse_direction Direction of collapse icon: "down" or "up" (default: "down")
#' @param collapsible Whether the panel can be collapsed (default: FALSE)
#' @param disabled Whether interaction is prevented (default: FALSE)
#' @param heading_level Semantic heading level (1-6) for accessibility
#' @param icon Icon to display in the header
#' @param icon_flip_rtl Flip icon in RTL languages (default: FALSE)
#' @param loading Whether to display a busy indicator (default: FALSE)
#' @param menu_flip_placements Fallback placements for the menu when space is insufficient
#' @param menu_open Whether the action menu items are open (default: FALSE)
#' @param menu_placement Placement of the action menu (default: "bottom-end")
#' @param message_overrides Override individual strings used by the component
#' @param overlay_positioning Positioning type for overlaid content: "absolute" or "fixed" (default: "absolute")
#' @param scale Size of the component: "s" (small), "m" (medium), or "l" (large) (default: "m")
#' @param action_bar Content for the action-bar slot (typically [calcite_action_bar()])
#' @param alerts Content for the alerts slot (typically [calcite_alert()] components)
#' @param content_bottom Content below the main slot and above the footer
#' @param content_top Content above the main slot and below the action-bar
#' @param header_actions_start Actions or content at the start of the header
#' @param header_actions_end Actions or content at the end of the header
#' @param header_content Custom content for the header
#' @param header_menu_actions Overflow menu with actions (typically in [calcite_dropdown()])
#' @param fab Floating action button (typically [calcite_fab()])
#' @param footer Custom content for the footer (don't use with footer_start/footer_end)
#' @param footer_start Leading footer content (don't use with footer slot)
#' @param footer_end Trailing footer content (don't use with footer slot)
#'
#' @details
#' ## Shiny Integration
#'
#' The panel emits events when it's closed, collapsed, expanded, scrolled, or toggled.
#'
#' **Available properties in `input$id`:**
#' - `$closable` - Whether the close button is displayed
#' - `$closed` - Whether the panel is hidden
#' - `$collapsed` - Whether the content area is collapsed
#' - `$collapsible` - Whether the panel is collapsible
#' - `$disabled` - Whether the panel is disabled
#' - Other component properties
#'
#' **Events:**
#' - `calcitePanelClose` - Fires when the close button is clicked
#' - `calcitePanelCollapse` - Fires when the content area is collapsed
#' - `calcitePanelExpand` - Fires when the content area is expanded
#' - `calcitePanelScroll` - Fires when the content is scrolled
#' - `calcitePanelToggle` - Fires when the collapse button is clicked
#'
#' @export
#' @return An object of class `calcite_component`
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/panel/)
#' @examples
#' # Basic panel with heading
#' calcite_panel(
#'   id = "my_panel",
#'   heading = "Map Options",
#'   "Panel content goes here..."
#' )
#'
#' # Collapsible panel with icon
#' calcite_panel(
#'   heading = "Layer effects",
#'   description = "Adjust blur, highlight, and more",
#'   collapsible = TRUE,
#'   icon = "effects",
#'   "Panel content"
#' )
#'
#' # Panel with header actions and footer
#' calcite_panel(
#'   heading = "Settings",
#'   header_actions_start = calcite_action(
#'     icon = "question",
#'     text = "Help",
#'     slot = "header-actions-start"
#'   ),
#'   header_actions_end = calcite_action(
#'     icon = "save",
#'     text = "Save",
#'     slot = "header-actions-end"
#'   ),
#'   footer = tagList(
#'     calcite_button(width = "half", appearance = "outline", "Cancel"),
#'     calcite_button(width = "half", "Save")
#'   ),
#'   "Panel content"
#' )
calcite_panel <- function(
  ...,
  id = NULL,
  heading = NULL,
  description = NULL,
  closable = NULL,
  closed = NULL,
  collapsed = NULL,
  collapse_direction = NULL,
  collapsible = NULL,
  disabled = NULL,
  heading_level = NULL,
  icon = NULL,
  icon_flip_rtl = NULL,
  loading = NULL,
  menu_flip_placements = NULL,
  menu_open = NULL,
  menu_placement = NULL,
  message_overrides = NULL,
  overlay_positioning = NULL,
  scale = NULL,
  action_bar = NULL,
  alerts = NULL,
  content_bottom = NULL,
  content_top = NULL,
  header_actions_start = NULL,
  header_actions_end = NULL,
  header_content = NULL,
  header_menu_actions = NULL,
  fab = NULL,
  footer = NULL,
  footer_start = NULL,
  footer_end = NULL
) {
  # Validate collapse_direction if provided
  if (!is.null(collapse_direction)) {
    collapse_direction <- rlang::arg_match(collapse_direction, c("down", "up"))
  }

  # Validate heading_level if provided
  if (!is.null(heading_level)) {
    heading_level <- rlang::arg_match(
      as.character(heading_level),
      as.character(1:6)
    )
  }

  # Validate menu_placement if provided
  if (!is.null(menu_placement)) {
    menu_placement <- rlang::arg_match(
      menu_placement,
      c(
        "auto", "auto-end", "auto-start",
        "bottom", "bottom-end", "bottom-start",
        "leading", "leading-end", "leading-start",
        "left", "left-end", "left-start",
        "right", "right-end", "right-start",
        "top", "top-end", "top-start",
        "trailing", "trailing-end", "trailing-start"
      )
    )
  }

  # Validate overlay_positioning if provided
  if (!is.null(overlay_positioning)) {
    overlay_positioning <- rlang::arg_match(
      overlay_positioning,
      c("absolute", "fixed")
    )
  }

  # Validate scale if provided
  if (!is.null(scale)) {
    scale <- rlang::arg_match(scale, c("s", "m", "l"))
  }

  # Build attributes list
  attribs <- compact(list(
    id = id,
    heading = heading,
    description = description,
    closable = closable,
    closed = closed,
    collapsed = collapsed,
    `collapse-direction` = collapse_direction,
    collapsible = collapsible,
    disabled = disabled,
    `heading-level` = heading_level,
    icon = icon,
    `icon-flip-rtl` = icon_flip_rtl,
    loading = loading,
    `menu-open` = menu_open,
    `menu-placement` = menu_placement,
    `overlay-positioning` = overlay_positioning,
    scale = scale
  ))

  # Combine with dots (child content)
  extra_attribs <- rlang::dots_list(...)
  all_attribs <- c(
    attribs,
    extra_attribs[!names(extra_attribs) %in% names(attribs)]
  )

  # Helper to add slot attribute if content exists
  add_slot <- function(content, slot_name) {
    if (is.null(content)) return(NULL)

    # If content is already a tag, add/override the slot attribute
    if (inherits(content, "shiny.tag")) {
      content$attribs$slot <- slot_name
      return(content)
    }

    # If it's a list of tags, add slot to each
    if (is.list(content)) {
      return(lapply(content, function(x) {
        if (inherits(x, "shiny.tag")) {
          x$attribs$slot <- slot_name
        }
        x
      }))
    }

    # Otherwise wrap in div with slot
    htmltools::div(slot = slot_name, content)
  }

  # Collect all slot content
  slot_content <- c(
    add_slot(action_bar, "action-bar"),
    add_slot(alerts, "alerts"),
    add_slot(content_bottom, "content-bottom"),
    add_slot(content_top, "content-top"),
    add_slot(header_actions_start, "header-actions-start"),
    add_slot(header_actions_end, "header-actions-end"),
    add_slot(header_content, "header-content"),
    add_slot(header_menu_actions, "header-menu-actions"),
    add_slot(fab, "fab"),
    add_slot(footer, "footer"),
    add_slot(footer_start, "footer-start"),
    add_slot(footer_end, "footer-end")
  )

  # Remove NULLs
  slot_content <- Filter(Negate(is.null), slot_content)

  # Custom binding for panel
  panel_binding <- htmltools::htmlDependency(
    name = "calcite-panel-binding",
    version = calcite_version(),
    src = c(file = system.file("www", package = "calcite")),
    script = "calcite-panel.js"
  )

  res <- htmltools::tag(
    "calcite-panel",
    c(
      all_attribs,
      slot_content,
      list(calcite_dependency(), panel_binding)
    )
  )

  class(res) <- c("calcite_component", class(res))
  res
}
