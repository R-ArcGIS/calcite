#' Create a Calcite Tile Component
#'
#' Tiles are presentational components useful for presenting consequential
#' information in a compact, consistent format. They can contain supportive
#' icons, a heading, and a description.
#'
#' @param ... Child content for the tile
#' @param id Optional ID for the tile (required for Shiny reactivity)
#' @param heading The component header text
#' @param description A description for the component, which displays below the heading
#' @param icon Specifies an icon to display
#' @param href When provided, the URL for the component (makes tile a link)
#' @param active When TRUE, the component is active (default: FALSE)
#' @param selected When TRUE and parent's selectionMode allows it, component is selected (default: FALSE)
#' @param disabled When TRUE, interaction is prevented and component displays with lower opacity (default: FALSE)
#' @param alignment Specifies alignment of tile's content: "start" or "center"
#' @param scale Specifies size of the component: "s" (small), "m" (medium), or "l" (large)
#' @param icon_flip_rtl When TRUE, icon will be flipped when element direction is RTL (default: FALSE)
#' @param label Accessible name for the component
#' @param content_top Slot for adding non-interactive elements above the component's content
#' @param content_bottom Slot for adding non-interactive elements below the component's content
#'
#' @details
#' ## Best Practices
#'
#' - Tiles are best used to represent one of a limited number of options, actions, or choices
#' - The component is wholly focusable - it should not contain slotted focusable elements
#' - Text should be concise (heading max ~50 chars, description max ~175 chars)
#' - Use sentence case for heading and description
#' - End description with proper punctuation
#'
#' ## Shiny Integration
#'
#' When used in a Shiny app with an `id`, `calcite_tile()` returns a reactive list
#' containing component properties.
#'
#' **Available properties:**
#' - `$active` - Whether the tile is currently active
#' - `$selected` - Whether the tile is selected
#' - `$disabled` - Whether the tile is disabled
#' - `$heading` - The heading text
#' - `$description` - The description text
#' - `$icon` - The icon name
#' - Other component properties
#'
#' @export
#' @return An object of class `calcite_component`
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/tile/)
#' @examples
#' # Basic tile with icon and description
#' calcite_tile(
#'   icon = "3d-glasses",
#'   heading = "Special viewing glasses",
#'   description = "Great for eclipses and optical illusions"
#' )
#'
#' # Tile with content in bottom slot
#' calcite_tile(
#'   icon = "rangefinder",
#'   heading = "Rangefinder",
#'   description = "A time-tested tool for field engineers",
#'   content_bottom = calcite_chip("214 in use")
#' )
#'
#' # Active tile with link
#' calcite_tile(
#'   icon = "data",
#'   heading = "Data Analysis",
#'   href = "https://example.com/data",
#'   active = TRUE
#' )
calcite_tile <- function(
  ...,
  id = NULL,
  heading = NULL,
  description = NULL,
  icon = NULL,
  href = NULL,
  active = NULL,
  selected = NULL,
  disabled = NULL,
  alignment = NULL,
  scale = NULL,
  icon_flip_rtl = NULL,
  label = NULL,
  content_top = NULL,
  content_bottom = NULL
) {
  # Validate alignment if provided
  if (!is.null(alignment)) {
    alignment <- rlang::arg_match(alignment, c("start", "center"))
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
    icon = icon,
    href = href,
    active = active,
    selected = selected,
    disabled = disabled,
    alignment = alignment,
    scale = scale,
    `icon-flip-rtl` = icon_flip_rtl,
    label = label
  ))

  # Handle slot content
  slot_content <- list()

  if (!is.null(content_top)) {
    slot_content <- c(
      slot_content,
      list(htmltools::div(slot = "content-top", content_top))
    )
  }

  if (!is.null(content_bottom)) {
    slot_content <- c(
      slot_content,
      list(htmltools::div(slot = "content-bottom", content_bottom))
    )
  }

  # Custom binding for tile
  tile_binding <- htmltools::htmlDependency(
    name = "calcite-tile-binding",
    version = calcite_version(),
    src = c(file = system.file("www", package = "calcite")),
    script = "calcite-tile.js"
  )

  res <- htmltools::tag(
    "calcite-tile",
    c(
      attribs,
      rlang::dots_list(...),
      slot_content,
      list(calcite_dependency(), tile_binding)
    )
  )

  class(res) <- c("calcite_component", class(res))
  res
}
