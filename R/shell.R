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
#' @param panel_start Content for the start/left panel. Typically a
#'   [calcite_shell_panel()] wrapping a [calcite_panel()].
#' @param panel_end Content for the end/right panel. Typically a
#'   [calcite_shell_panel()] wrapping a [calcite_panel()].
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
#' # Shell with sidebar panel
#' calcite_shell(
#'   panel_start = calcite_shell_panel(
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
#' a navigation header, an action bar, and a side panel. This is ideal for
#' map-based applications or tools with multiple layers/options.
#'
#' @param ... Main content area (typically a map or primary view)
#' @param title Application title shown in the navigation header
#' @param header_actions Optional actions for the header (e.g., user menu, settings).
#'   These will be placed in the `content-end` slot of the navigation.
#' @param actions A [calcite_action_bar()] component to slot alongside the panel.
#' @param panel_content A [calcite_panel()] shown when an action is selected.
#' @param panel_position Position of the panel: `"start"` (left) or `"end"` (right).
#' @param panel_width Width of the shell panel: `"s"`, `"m"`, or `"l"`.
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
  panel_position <- rlang::arg_match(panel_position, c("start", "end"))
  panel_width <- rlang::arg_match(panel_width, c("m", "s", "l"))

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

  panel <- if (!is.null(actions) || !is.null(panel_content)) {
    calcite_shell_panel(
      width = panel_width,
      action_bar = actions,
      panel_content
    )
  }

  calcite_shell(
    ...,
    header = nav,
    panel_start = if (panel_position == "start") panel else NULL,
    panel_end = if (panel_position == "end") panel else NULL,
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
#' Similar to [bslib::page_sidebar()], this creates a layout with a sidebar
#' panel and main content area — the easiest way to build a standard Calcite
#' app layout. Pass a [calcite_panel()] as `sidebar`; it will be wrapped in a
#' [calcite_shell_panel()] automatically.
#'
#' @param ... Main content area (typically a [calcite_panel()] or map view)
#' @param sidebar A [calcite_panel()] for the sidebar. Typically contains
#'   [calcite_block()] components with controls.
#' @param title Optional application title shown in a navigation header.
#' @param position Position of sidebar: `"start"` (left) or `"end"` (right).
#' @param width Width of the sidebar: `"s"`, `"m"`, or `"l"`.
#' @param display_mode Display mode for the shell panel: `"dock"`, `"overlay"`,
#'   `"float-content"`, or `"float-all"`. Default: `"dock"`.
#' @param footer Optional footer content
#'
#' @export
#' @return An object of class `calcite_component` containing a configured shell
#' @examples
#' page_sidebar(
#'   title = "Data Explorer",
#'   sidebar = calcite_panel(
#'     heading = "Filters",
#'     calcite_block(
#'       heading = "Options",
#'       collapsible = TRUE,
#'       expanded = TRUE
#'     )
#'   ),
#'   calcite_panel(heading = "Results")
#' )
page_sidebar <- function(
  ...,
  sidebar = NULL,
  title = NULL,
  position = c("start", "end"),
  width = c("m", "s", "l"),
  display_mode = c("dock", "overlay", "float-content", "float-all"),
  footer = NULL
) {
  position <- rlang::arg_match(position, c("start", "end"))
  width <- rlang::arg_match(width, c("m", "s", "l"))
  display_mode <- rlang::arg_match(
    display_mode,
    c("dock", "overlay", "float-content", "float-all")
  )

  nav <- if (!is.null(title)) {
    calcite_navigation(
      calcite_navigation_logo(slot = "logo", heading = title)
    )
  }

  panel <- if (!is.null(sidebar)) {
    calcite_shell_panel(
      width = width,
      display_mode = if (display_mode != "dock") display_mode else NULL,
      sidebar
    )
  }

  calcite_shell(
    ...,
    header = nav,
    panel_start = if (position == "start") panel else NULL,
    panel_end = if (position == "end") panel else NULL,
    footer = footer
  )
}
