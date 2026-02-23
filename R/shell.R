#' Create a Calcite Shell Layout
#'
#' The Shell is a foundational layout component in Calcite, enabling the creation
#' of rich, interactive experiences. It provides structured slots for headers,
#' footers, side panels, and main content.
#'
#' @param ... Main content to display in the default slot (between panels)
#' @param header Content for the header slot (top of shell). Typically a
#'   [calcite_navigation()] component.
#' @param footer Content for the footer slot (bottom of shell)
#' @param panel_start Content for the start/left panel. Use [calcite_shell_panel()]
#'   with `position = "start"`.
#' @param panel_end Content for the end/right panel. Use [calcite_shell_panel()]
#'   with `position = "end"`.
#' @param panel_top Content for the top panel (below header)
#' @param panel_bottom Content for the bottom panel (above footer)
#' @param modals Slot for [calcite_modal()] components
#' @param dialogs Slot for [calcite_dialog()] components
#' @param alerts Slot for [calcite_alert()] components
#' @param sheets Slot for [calcite_sheet()] components
#'
#' @details
#' ## Shell Structure
#'
#' The shell organizes your application into distinct regions:
#'
#' - **header**: Top navigation bar
#' - **panel-start/panel-end**: Side panels (left/right)
#' - **panel-top/panel-bottom**: Top/bottom panels
#' - **Default content**: Main application area (maps, charts, etc.)
#' - **footer**: Bottom information/links
#' - **Overlay slots**: modals, dialogs, alerts, sheets
#'
#' When embedded within other content, the overlay slots (modals, dialogs, alerts, sheets)
#' facilitate placement of these components relative to the Shell, constraining them
#' to the shell's boundaries rather than the full page.
#'
#' @export
#' @return An object of class `calcite_component` which is a subclass of `shiny.tag`
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/shell/)
#' @examples
#' # Basic shell with header and content
#' calcite_shell(
#'   header = calcite_navigation(
#'     calcite_navigation_logo(slot = "logo", heading = "My App")
#'   ),
#'   "Main content goes here"
#' )
#'
#' # Shell with action bar sidebar
#' calcite_shell(
#'   header = calcite_navigation(
#'     calcite_navigation_logo(slot = "logo", heading = "Wildlife Areas")
#'   ),
#'   panel_start = calcite_shell_panel(
#'     position = "start",
#'     calcite_action_bar(
#'       slot = "action-bar",
#'       calcite_action(text = "Layers", icon = "layers")
#'     ),
#'     calcite_panel(heading = "Layers")
#'   ),
#'   calcite_panel(heading = "Map View")
#' )
calcite_shell <- function(
  ...,
  header = NULL,
  footer = NULL,
  panel_start = NULL,
  panel_end = NULL,
  panel_top = NULL,
  panel_bottom = NULL,
  modals = NULL,
  dialogs = NULL,
  alerts = NULL,
  sheets = NULL
) {
  # Collect all slot content
  slot_content <- list(
    add_slot(header, "header"),
    add_slot(footer, "footer"),
    add_slot(panel_start, "panel-start"),
    add_slot(panel_end, "panel-end"),
    add_slot(panel_top, "panel-top"),
    add_slot(panel_bottom, "panel-bottom"),
    add_slot(modals, "modals"),
    add_slot(dialogs, "dialogs"),
    add_slot(alerts, "alerts"),
    add_slot(sheets, "sheets")
  )

  # Remove NULLs
  slot_content <- Filter(Negate(is.null), slot_content)

  # Build the shell tag
  res <- htmltools::tag(
    "calcite-shell",
    c(
      rlang::dots_list(...), # Main content (no slot attribute)
      slot_content,
      list(calcite_dependency(), calcite_bindings())
    )
  )

  class(res) <- c("calcite_component", class(res))
  res
}


#' Create a Shell with Action Bar Layout
#'
#' A convenience function that creates a common layout pattern: a shell with
#' a navigation header and a collapsible action bar panel on the start (left) side.
#' This is ideal for map-based applications or tools with multiple layers/options.
#'
#' @param ... Main content area (typically a map or primary view)
#' @param title Application title shown in the navigation header
#' @param header_actions Optional actions for the header (e.g., user menu, settings).
#'   These will be placed in the `content-end` slot of the navigation.
#' @param actions Action bar content. Either a [calcite_action_bar()] component or
#'   a list of [calcite_action()] components that will be wrapped in an action bar.
#' @param panel_content Content for the side panel (shown when an action is selected).
#'   Can be a [calcite_panel()] or other content.
#' @param panel_position Position of the panel. Either "start" (left) or "end" (right).
#' @param panel_width Width of the panel when expanded. Options: "s", "m", "l".
#' @param footer Optional footer content
#'
#' @export
#' @return An object of class `calcite_component` containing a configured shell
#' @examples
#' page_actionbar(
#'   title = "Wildlife Areas",
#'   actions = calcite_action_bar(
#'     calcite_action(text = "Add", icon = "plus"),
#'     calcite_action(text = "Layers", icon = "layers", active = TRUE)
#'   ),
#'   panel_content = calcite_panel(
#'     heading = "Layers",
#'     "Layer controls here"
#'   ),
#'   "Map content here"
#' )
page_actionbar <- function(
  ...,
  title = NULL,
  header_actions = NULL,
  actions = NULL,
  panel_content = NULL,
  panel_position = c("start", "end"),
  panel_width = c("m", "s", "l"),
  footer = NULL
) {
  panel_position <- match.arg(panel_position)
  panel_width <- match.arg(panel_width)

  # Create navigation header if title provided
  nav <- if (!is.null(title)) {
    calcite_navigation(
      calcite_navigation_logo(slot = "logo", heading = title),
      if (!is.null(header_actions)) {
        htmltools::tagList(
          lapply(header_actions, function(action) {
            if (inherits(action, "shiny.tag")) {
              action$attribs$slot <- "content-end"
            }
            action
          })
        )
      }
    )
  }

  # Create shell panel if actions provided
  panel <- if (!is.null(actions) || !is.null(panel_content)) {
    # Wrap actions in action-bar if they aren't already
    action_bar_content <- if (!is.null(actions)) {
      if (
        inherits(actions, "shiny.tag") &&
          grepl("calcite-action-bar", actions$name, fixed = TRUE)
      ) {
        actions$attribs$slot <- "action-bar"
        actions
      } else {
        calcite_action_bar(slot = "action-bar", actions)
      }
    }

    calcite_shell_panel(
      position = panel_position,
      width = panel_width,
      id = paste0("shell-panel-", panel_position),
      action_bar_content,
      panel_content
    )
  }

  # Determine which panel slot to use
  panel_slot <- if (panel_position == "start") panel else NULL
  panel_end_slot <- if (panel_position == "end") panel else NULL

  calcite_shell(
    ...,
    header = nav,
    panel_start = panel_slot,
    panel_end = panel_end_slot,
    footer = footer
  )
}


#' Create a Shell with Navigation Bar Layout
#'
#' A convenience function for creating a simple layout with a navigation header
#' and main content area. This is ideal for dashboard-style applications.
#'
#' @param ... Main content area
#' @param title Application title shown in the navigation header
#' @param logo Optional logo component for the navigation
#' @param nav_actions Optional actions for the navigation bar (placed in `content-end`)
#' @param footer Optional footer content
#'
#' @export
#' @return An object of class `calcite_component` containing a configured shell
#' @examples
#' page_navbar(
#'   title = "My Dashboard",
#'   nav_actions = list(
#'     calcite_action(icon = "gear", text = "Settings"),
#'     calcite_action(icon = "sign-out", text = "Logout")
#'   ),
#'   "Dashboard content here"
#' )
page_navbar <- function(
  ...,
  title = NULL,
  logo = NULL,
  nav_actions = NULL,
  footer = NULL
) {
  # Create logo element
  logo_elem <- if (!is.null(logo)) {
    if (inherits(logo, "shiny.tag")) {
      logo$attribs$slot <- "logo"
      logo
    } else {
      logo
    }
  } else if (!is.null(title)) {
    calcite_navigation_logo(slot = "logo", heading = title)
  }

  # Add slot to nav actions
  nav_actions_elem <- if (!is.null(nav_actions)) {
    if (is.list(nav_actions)) {
      lapply(nav_actions, function(action) {
        if (inherits(action, "shiny.tag")) {
          action$attribs$slot <- "content-end"
        }
        action
      })
    } else if (inherits(nav_actions, "shiny.tag")) {
      nav_actions$attribs$slot <- "content-end"
      nav_actions
    }
  }

  # Create navigation
  nav <- calcite_navigation(
    logo_elem,
    nav_actions_elem
  )

  calcite_shell(
    ...,
    header = nav,
    footer = footer
  )
}


#' Create a Shell with Sidebar Panel Layout
#'
#' Similar to [bslib::page_sidebar()], this creates a layout with a sidebar panel
#' and main content area. The sidebar can be positioned on the left or right.
#'
#' @param ... Main content area
#' @param sidebar Content for the sidebar panel
#' @param title Optional application title
#' @param position Position of sidebar: "start" (left) or "end" (right)
#' @param width Width of the sidebar: "s", "m", or "l"
#' @param collapsible Whether the sidebar can be collapsed (default TRUE)
#' @param footer Optional footer content
#'
#' @export
#' @return An object of class `calcite_component` containing a configured shell
#' @examples
#' page_sidebar(
#'   title = "Data Explorer",
#'   sidebar = calcite_panel(
#'     heading = "Filters",
#'     "Filter controls here"
#'   ),
#'   "Main data view here"
#' )
page_sidebar <- function(
  ...,
  sidebar = NULL,
  title = NULL,
  position = c("start", "end"),
  width = c("m", "s", "l"),
  collapsible = TRUE,
  footer = NULL
) {
  position <- match.arg(position)
  width <- match.arg(width)

  # Create navigation if title provided
  nav <- if (!is.null(title)) {
    calcite_navigation(
      calcite_navigation_logo(slot = "logo", heading = title)
    )
  }

  # Create sidebar panel
  panel <- if (!is.null(sidebar)) {
    # If sidebar is already a shell-panel, use it
    if (
      inherits(sidebar, "shiny.tag") &&
        grepl("calcite-shell-panel", sidebar$name, fixed = TRUE)
    ) {
      sidebar$attribs$position <- position
      sidebar$attribs$width <- width
      if (!collapsible) {
        sidebar$attribs$`display-mode` <- "float"
      }
      sidebar
    } else {
      # Otherwise wrap it
      calcite_shell_panel(
        position = position,
        width = width,
        displayMode = if (!collapsible) "float" else NULL,
        sidebar
      )
    }
  }

  # Determine which panel slot to use
  panel_slot <- if (position == "start") panel else NULL
  panel_end_slot <- if (position == "end") panel else NULL

  calcite_shell(
    ...,
    header = nav,
    panel_start = panel_slot,
    panel_end = panel_end_slot,
    footer = footer
  )
}
