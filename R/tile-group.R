#' Create a Calcite Tile Group Component
#'
#' Tile Group can be used to organize multiple Tile components within a layout.
#' It supports workflows and patterns using more than one Tile, with opt-in
#' selection modes for interactive workflows.
#'
#' @param ... Child `calcite_tile()` components
#' @param id Optional ID for the tile group (required for Shiny reactivity to track selection)
#' @param label Accessible name for the component (required for accessibility)
#' @param layout Defines the layout: "horizontal" for rows, "vertical" for a single column
#' @param alignment Specifies alignment of each tile's content: "start" or "center"
#' @param scale Specifies size of the component: "s" (small), "m" (medium), or "l" (large)
#' @param selection_mode Specifies the selection mode: "none" (default), "single", "single-persist", or "multiple"
#' @param selection_appearance Specifies selection appearance: "icon" (checkmark/dot) or "border"
#' @param disabled When TRUE, interaction is prevented and component displays with lower opacity (default: FALSE)
#'
#' @details
#' ## Selection Modes
#'
#' - `"none"` - No selection allowed (default)
#' - `"single"` - Only one tile can be selected at a time
#' - `"single-persist"` - Only one tile selected, prevents de-selection
#' - `"multiple"` - Any number of tiles can be selected
#'
#' ## Shiny Integration
#'
#' When used in a Shiny app with an `id`, `calcite_tile_group()` returns a reactive
#' list containing component properties and emits events when selection changes.
#'
#' **Available properties:**
#' - `$selectedItems` - Array of selected tile IDs
#' - `$selectionMode` - Current selection mode
#' - `$layout` - Current layout
#' - `$disabled` - Whether the group is disabled
#' - Other component properties
#'
#' **Usage in server:**
#' ```r
#' # Watch for selection changes
#' observeEvent(input$my_tile_group$selectedItems, {
#'   selected <- input$my_tile_group$selectedItems
#'   message("Selected tiles: ", paste(selected, collapse = ", "))
#' })
#' ```
#'
#' @export
#' @return An object of class `calcite_component`
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/tile-group/)
#' @examples
#' # Basic tile group
#' calcite_tile_group(
#'   label = "Role selection",
#'   calcite_tile(
#'     icon = "rangefinder",
#'     heading = "Field operator",
#'     description = "Create and edit Reports in the field"
#'   ),
#'   calcite_tile(
#'     icon = "knowledge-graph-dashboard",
#'     heading = "Office coordinator",
#'     description = "View and analyze Reports from the office"
#'   )
#' )
#'
#' # Tile group with multiple selection
#' calcite_tile_group(
#'   id = "role_selector",
#'   label = "Select roles",
#'   selection_mode = "multiple",
#'   selection_appearance = "border",
#'   layout = "vertical",
#'   calcite_tile(
#'     id = "construction",
#'     icon = "wrench",
#'     heading = "Construction Worker",
#'     description = "Manage construction projects and coordinate teams"
#'   ),
#'   calcite_tile(
#'     id = "engineer",
#'     icon = "rangefinder",
#'     heading = "Civil Engineer",
#'     description = "Design infrastructure and ensure compliance"
#'   )
#' )
calcite_tile_group <- function(
  ...,
  id = NULL,
  label = NULL,
  layout = NULL,
  alignment = NULL,
  scale = NULL,
  selection_mode = NULL,
  selection_appearance = NULL,
  disabled = NULL
) {
  # Validate layout if provided
  if (!is.null(layout)) {
    layout <- rlang::arg_match(layout, c("horizontal", "vertical"))
  }

  # Validate alignment if provided
  if (!is.null(alignment)) {
    alignment <- rlang::arg_match(alignment, c("start", "center"))
  }

  # Validate scale if provided
  if (!is.null(scale)) {
    scale <- rlang::arg_match(scale, c("s", "m", "l"))
  }

  # Validate selection_mode if provided
  if (!is.null(selection_mode)) {
    selection_mode <- rlang::arg_match(
      selection_mode,
      c("none", "single", "single-persist", "multiple")
    )
  }

  # Validate selection_appearance if provided
  if (!is.null(selection_appearance)) {
    selection_appearance <- rlang::arg_match(
      selection_appearance,
      c("icon", "border")
    )
  }

  # Build attributes list
  attribs <- compact(list(
    id = id,
    label = label,
    layout = layout,
    alignment = alignment,
    scale = scale,
    `selection-mode` = selection_mode,
    `selection-appearance` = selection_appearance,
    disabled = disabled
  ))

  # Custom binding for tile-group
  tile_group_binding <- htmltools::htmlDependency(
    name = "calcite-tile-group-binding",
    version = calcite_version(),
    src = c(file = system.file("www", package = "calcite")),
    script = "calcite-tile-group.js"
  )

  res <- htmltools::tag(
    "calcite-tile-group",
    c(
      attribs,
      rlang::dots_list(...),
      list(calcite_dependency(), tile_group_binding)
    )
  )

  class(res) <- c("calcite_component", class(res))
  res
}
