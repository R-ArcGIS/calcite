# Create a Calcite Action Group Component

Groups multiple action components together with consistent layout and
spacing. Action groups can be used within action bars to organize
related actions.

## Usage

``` r
calcite_action_group(
  ...,
  id = NULL,
  layout = NULL,
  columns = NULL,
  scale = NULL,
  expanded = NULL,
  label = NULL,
  slot = NULL
)
```

## Arguments

- ...:

  Child
  [`calcite_action()`](http://r.esri.com/calcite/reference/calcite_action.md)
  components or other content

- id:

  Optional ID for the action group

- layout:

  Layout style: "vertical", "horizontal", or "grid"

- columns:

  Number of columns when layout is "grid" (1-6)

- scale:

  Size of the group: "s" (small), "m" (medium), or "l" (large)

- expanded:

  Whether the group is expanded

- label:

  Accessibility label for the group

- slot:

  Optional slot name (e.g., "bottom-actions" for action bars)

## Value

An object of class `calcite_component`

## References

[Official
Documentation](https://developers.arcgis.com/calcite-design-system/components/action-group/)

## Examples

``` r
# Basic action group with vertical layout
calcite_action_group(
  calcite_action(text = "Add", icon = "plus"),
  calcite_action(text = "Edit", icon = "pencil"),
  calcite_action(text = "Delete", icon = "trash")
)
#> <calcite-action-group>
#>   <calcite-action text="Add" icon="plus"></calcite-action>
#>   <calcite-action text="Edit" icon="pencil"></calcite-action>
#>   <calcite-action text="Delete" icon="trash"></calcite-action>
#> </calcite-action-group>

# Horizontal group with custom scale
calcite_action_group(
  layout = "horizontal",
  scale = "l",
  calcite_action(text = "Save", icon = "save"),
  calcite_action(text = "Cancel", icon = "x")
)
#> <calcite-action-group layout="horizontal" scale="l">
#>   <calcite-action text="Save" icon="save"></calcite-action>
#>   <calcite-action text="Cancel" icon="x"></calcite-action>
#> </calcite-action-group>

# Grid layout with 2 columns
calcite_action_group(
  layout = "grid",
  columns = 2,
  calcite_action(text = "A", icon = "letter-a"),
  calcite_action(text = "B", icon = "letter-b"),
  calcite_action(text = "C", icon = "letter-c"),
  calcite_action(text = "D", icon = "letter-d")
)
#> <calcite-action-group layout="grid" columns="2">
#>   <calcite-action text="A" icon="letter-a"></calcite-action>
#>   <calcite-action text="B" icon="letter-b"></calcite-action>
#>   <calcite-action text="C" icon="letter-c"></calcite-action>
#>   <calcite-action text="D" icon="letter-d"></calcite-action>
#> </calcite-action-group>
```
