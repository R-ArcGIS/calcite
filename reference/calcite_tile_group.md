# Create a Calcite Tile Group Component

Tile Group can be used to organize multiple Tile components within a
layout. It supports workflows and patterns using more than one Tile,
with opt-in selection modes for interactive workflows.

## Usage

``` r
calcite_tile_group(
  ...,
  id = NULL,
  label = NULL,
  layout = NULL,
  alignment = NULL,
  scale = NULL,
  selection_mode = NULL,
  selection_appearance = NULL,
  disabled = NULL
)
```

## Arguments

- ...:

  Child
  [`calcite_tile()`](http://r.esri.com/calcite/reference/calcite_tile.md)
  components

- id:

  Optional ID for the tile group (required for Shiny reactivity to track
  selection)

- label:

  Accessible name for the component (required for accessibility)

- layout:

  Defines the layout: "horizontal" for rows, "vertical" for a single
  column

- alignment:

  Specifies alignment of each tile's content: "start" or "center"

- scale:

  Specifies size of the component: "s" (small), "m" (medium), or "l"
  (large)

- selection_mode:

  Specifies the selection mode: "none" (default), "single",
  "single-persist", or "multiple"

- selection_appearance:

  Specifies selection appearance: "icon" (checkmark/dot) or "border"

- disabled:

  When TRUE, interaction is prevented and component displays with lower
  opacity (default: FALSE)

## Value

An object of class `calcite_component`

## Details

### Selection Modes

- `"none"` - No selection allowed (default)

- `"single"` - Only one tile can be selected at a time

- `"single-persist"` - Only one tile selected, prevents de-selection

- `"multiple"` - Any number of tiles can be selected

### Shiny Integration

When used in a Shiny app with an `id`, `calcite_tile_group()` returns a
reactive list containing component properties and emits events when
selection changes.

**Available properties:**

- `$selectedItems` - Array of selected tile IDs

- `$selectionMode` - Current selection mode

- `$layout` - Current layout

- `$disabled` - Whether the group is disabled

- Other component properties

**Usage in server:**

    # Watch for selection changes
    observeEvent(input$my_tile_group$selectedItems, {
      selected <- input$my_tile_group$selectedItems
      message("Selected tiles: ", paste(selected, collapse = ", "))
    })

## References

[Official
Documentation](https://developers.arcgis.com/calcite-design-system/components/tile-group/)

## Examples

``` r
# Basic tile group
calcite_tile_group(
  label = "Role selection",
  calcite_tile(
    icon = "rangefinder",
    heading = "Field operator",
    description = "Create and edit Reports in the field"
  ),
  calcite_tile(
    icon = "knowledge-graph-dashboard",
    heading = "Office coordinator",
    description = "View and analyze Reports from the office"
  )
)
#> <calcite-tile-group label="Role selection">
#>   <calcite-tile heading="Field operator" description="Create and edit Reports in the field" icon="rangefinder"></calcite-tile>
#>   <calcite-tile heading="Office coordinator" description="View and analyze Reports from the office" icon="knowledge-graph-dashboard"></calcite-tile>
#> </calcite-tile-group>

# Tile group with multiple selection
calcite_tile_group(
  id = "role_selector",
  label = "Select roles",
  selection_mode = "multiple",
  selection_appearance = "border",
  layout = "vertical",
  calcite_tile(
    id = "construction",
    icon = "wrench",
    heading = "Construction Worker",
    description = "Manage construction projects and coordinate teams"
  ),
  calcite_tile(
    id = "engineer",
    icon = "rangefinder",
    heading = "Civil Engineer",
    description = "Design infrastructure and ensure compliance"
  )
)
#> <calcite-tile-group id="role_selector" label="Select roles" layout="vertical" selection-mode="multiple" selection-appearance="border">
#>   <calcite-tile id="construction" heading="Construction Worker" description="Manage construction projects and coordinate teams" icon="wrench"></calcite-tile>
#>   <calcite-tile id="engineer" heading="Civil Engineer" description="Design infrastructure and ensure compliance" icon="rangefinder"></calcite-tile>
#> </calcite-tile-group>
```
