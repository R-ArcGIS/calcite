#' Create a Calcite Block Component
#'
#' Creates a collapsible block component designed to house content and controls
#' within a Panel, most often as part of an application layout with Shell Panels.
#'
#' @param ... Child content for the block
#' @param id Component ID (required for Shiny reactivity)
#' @param heading Header text for the block
#' @param description Description text displayed below the heading
#' @param collapsible Whether the block can be collapsed (default: FALSE)
#' @param expanded Whether the block is currently expanded (default: FALSE)
#' @param disabled Whether interaction is prevented (default: FALSE)
#' @param loading Whether to display a busy indicator (default: FALSE)
#' @param icon_start Icon to display at the start of the header
#' @param icon_end Icon to display at the end of the header
#' @param icon_flip_rtl Flip icons in RTL languages: "start", "end", or "both"
#' @param scale Size of the component: "s" (small), "m" (medium), or "l" (large)
#' @param heading_level Semantic heading level (1-6) for accessibility
#' @param label Accessible name for the component
#' @param drag_disabled Prevent dragging when parent Block Group enables it (default: FALSE)
#' @param sort_handle_open Display and position the sort handle (default: FALSE)
#' @param menu_placement Placement of the action menu
#' @param overlay_positioning Positioning type for overlaid content: "absolute" or "fixed"
#'
#' @details
#' ## Shiny Integration
#'
#' The block emits events when it's expanded or collapsed, making it easy to track state.
#'
#' **Available properties in `input$id`:**
#' - `$expanded` - Whether the block is currently expanded
#' - `$collapsible` - Whether the block is collapsible
#' - `$disabled` - Whether the block is disabled
#' - `$heading` - The heading text
#' - Other component properties
#'
#' **Basic usage:**
#' ```r
#' calcite_block(
#'   id = "my_block",
#'   heading = "Layer effects",
#'   description = "Adjust blur, highlight, and more",
#'   collapsible = TRUE,
#'   expanded = TRUE,
#'   icon_start = "effects",
#'   # Block content...
#' )
#'
#' # In server
#' observeEvent(input$my_block$expanded, {
#'   if (input$my_block$expanded) {
#'     message("Block was expanded")
#'   } else {
#'     message("Block was collapsed")
#'   }
#' })
#' ```
#'
#' **Update from server:**
#' ```r
#' # Programmatically expand or collapse the block
#' update_calcite("my_block", expanded = TRUE)
#' update_calcite("my_block", expanded = FALSE)
#' ```
#'
#' @export
#' @return An object of class `calcite_component`
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/block/)
#' @examples
#' # Basic collapsible block
#' calcite_block(
#'   id = "effects_block",
#'   heading = "Layer effects",
#'   description = "Adjust blur, highlight, and more",
#'   collapsible = TRUE,
#'   icon_start = "effects",
#'   "Block content goes here..."
#' )
calcite_block <- function(
  ...,
  id = NULL,
  heading = NULL,
  description = NULL,
  collapsible = NULL,
  expanded = NULL,
  disabled = NULL,
  loading = NULL,
  icon_start = NULL,
  icon_end = NULL,
  icon_flip_rtl = NULL,
  scale = NULL,
  heading_level = NULL,
  label = NULL,
  drag_disabled = NULL,
  sort_handle_open = NULL,
  menu_placement = NULL,
  overlay_positioning = NULL
) {
  # Validate icon_flip_rtl if provided
  if (!is.null(icon_flip_rtl)) {
    icon_flip_rtl <- rlang::arg_match(icon_flip_rtl, c("start", "end", "both"))
  }

  # Validate scale if provided
  if (!is.null(scale)) {
    scale <- rlang::arg_match(scale, c("s", "m", "l"))
  }

  # Validate heading_level if provided
  if (!is.null(heading_level)) {
    heading_level <- rlang::arg_match(
      as.character(heading_level),
      as.character(1:6)
    )
  }

  # Validate overlay_positioning if provided
  if (!is.null(overlay_positioning)) {
    overlay_positioning <- rlang::arg_match(
      overlay_positioning,
      c("absolute", "fixed")
    )
  }

  # Build attributes list
  attribs <- compact(list(
    id = id,
    heading = heading,
    description = description,
    collapsible = collapsible,
    expanded = expanded,
    disabled = disabled,
    loading = loading,
    `icon-start` = icon_start,
    `icon-end` = icon_end,
    `icon-flip-rtl` = icon_flip_rtl,
    scale = scale,
    `heading-level` = heading_level,
    label = label,
    `drag-disabled` = drag_disabled,
    `sort-handle-open` = sort_handle_open,
    `menu-placement` = menu_placement,
    `overlay-positioning` = overlay_positioning
  ))

  # Combine with dots
  extra_attribs <- rlang::dots_list(...)
  all_attribs <- c(
    attribs,
    extra_attribs[!names(extra_attribs) %in% names(attribs)]
  )

  # Custom binding for block
  block_binding <- htmltools::htmlDependency(
    name = "calcite-block-binding",
    version = calcite_version(),
    src = c(file = system.file("www", package = "calcite")),
    script = "calcite-block.js"
  )

  res <- htmltools::tag(
    "calcite-block",
    c(all_attribs, list(calcite_dependency(), block_binding))
  )

  class(res) <- c("calcite_component", class(res))
  res
}
