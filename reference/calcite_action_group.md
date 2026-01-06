# Create a Calcite Action Group Component

Groups multiple action components together with consistent layout and
spacing. Action groups can be used within action bars to organize
related actions.

## Usage

``` r
calcite_action_group(...)

calcite_action_group(...)
```

## Arguments

- ...:

  named attributes passed to
  [`htmltools::tag()`](https://rstudio.github.io/htmltools/reference/builder.html)

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

an object of class `calcite_component` which is a subclass of
`shiny.tag`

## Details

### Properties

The following properties are provided by this component:

|                    |                     |                                                                                                                                                                                                                                                                                                                                                                             |                                                                                                                                                                                                                                                                                                                 |                       |
|--------------------|---------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|-----------------------|
| Name               | Attribute           | Description                                                                                                                                                                                                                                                                                                                                                                 | Values                                                                                                                                                                                                                                                                                                          | Reflects to Attribute |
| columns            | columns             | Indicates number of columns.                                                                                                                                                                                                                                                                                                                                                | 1 \| 2 \| 3 \| 4 \| 5 \| 6                                                                                                                                                                                                                                                                                      | TRUE                  |
| expanded           | expanded            | When `true`, the component is expanded.                                                                                                                                                                                                                                                                                                                                     | boolean                                                                                                                                                                                                                                                                                                         | TRUE                  |
| label              | label               | Accessible name for the component.                                                                                                                                                                                                                                                                                                                                          | string                                                                                                                                                                                                                                                                                                          | FALSE                 |
| layout             | layout              | Indicates the layout of the component.                                                                                                                                                                                                                                                                                                                                      | "grid" \| "horizontal" \| "vertical"                                                                                                                                                                                                                                                                            | TRUE                  |
| menuFlipPlacements | NA                  | Specifies the component's fallback menu `placement` when it's initial or specified `placement` has insufficient space available.                                                                                                                                                                                                                                            | Check API reference                                                                                                                                                                                                                                                                                             | FALSE                 |
| menuOpen           | menu-open           | When `true`, the `calcite-action-menu` is open.                                                                                                                                                                                                                                                                                                                             | boolean                                                                                                                                                                                                                                                                                                         | TRUE                  |
| menuPlacement      | menu-placement      | Determines where the action menu will be positioned.                                                                                                                                                                                                                                                                                                                        | "auto" \| "auto-end" \| "auto-start" \| "bottom" \| "bottom-end" \| "bottom-start" \| "leading" \| "leading-end" \| "leading-start" \| "left" \| "left-end" \| "left-start" \| "right" \| "right-end" \| "right-start" \| "top" \| "top-end" \| "top-start" \| "trailing" \| "trailing-end" \| "trailing-start" | TRUE                  |
| messageOverrides   | NA                  | Use this property to override individual strings used by the component.                                                                                                                                                                                                                                                                                                     | Check API reference                                                                                                                                                                                                                                                                                             | FALSE                 |
| overlayPositioning | overlay-positioning | Determines the type of positioning to use for the overlaid content. Using `"absolute"` will work for most cases. The component will be positioned inside of overflowing parent containers and will affect the container's layout. `"fixed"` should be used to escape an overflowing parent container, or when the reference element's `position` CSS property is `"fixed"`. | "absolute" \| "fixed"                                                                                                                                                                                                                                                                                           | TRUE                  |
| scale              | scale               | Specifies the size of the `calcite-action-menu`.                                                                                                                                                                                                                                                                                                                            | "l" \| "m" \| "s"                                                                                                                                                                                                                                                                                               | TRUE                  |

### Slots

The following slots are provided by this component:

|                   |                                                                                        |
|-------------------|----------------------------------------------------------------------------------------|
| Slot              | Description                                                                            |
| Default (unnamed) | A slot for adding a group of `calcite-action`s.                                        |
| menu-actions      | A slot for adding an overflow menu with `calcite-action`s inside a `calcite-dropdown`. |
| menu-tooltip      | A slot for adding a `calcite-tooltip` for the menu.                                    |

## References

[Official
Documentation](https://developers.arcgis.com/calcite-design-system/components/action-group/)

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
calcite_action_group()
#> <calcite-action-group></calcite-action-group>
```
