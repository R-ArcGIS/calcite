# Create a TileGroup component

Create a TileGroup component

## Usage

``` r
calcite_tile_group(...)
```

## Arguments

- ...:

  named attributes passed to
  [`htmltools::tag()`](https://rstudio.github.io/htmltools/reference/builder.html)

## Value

an object of class `calcite_component` which is a subclass of
`shiny.tag`

## Details

### Properties

The following properties are provided by this component:

|                     |                      |                                                                                                                                                                                                                                                                 |                                                      |                       |
|---------------------|----------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|------------------------------------------------------|-----------------------|
| Name                | Attribute            | Description                                                                                                                                                                                                                                                     | Values                                               | Reflects to Attribute |
| alignment           | alignment            | Specifies the alignment of each `calcite-tile`'s content.                                                                                                                                                                                                       | "center" \| "start"                                  | TRUE                  |
| disabled            | disabled             | When `true`, interaction is prevented and the component is displayed with lower opacity.                                                                                                                                                                        | boolean                                              | TRUE                  |
| label               | label                | Accessible name for the component.                                                                                                                                                                                                                              | string                                               | FALSE                 |
| layout              | layout               | Defines the layout of the component. Use `"horizontal"` for rows, and `"vertical"` for a single column.                                                                                                                                                         | "horizontal" \| "vertical"                           | TRUE                  |
| scale               | scale                | Specifies the size of the component.                                                                                                                                                                                                                            | "l" \| "m" \| "s"                                    | TRUE                  |
| selectedItems       | NA                   | Specifies the component's selected items.                                                                                                                                                                                                                       | Check API reference                                  | FALSE                 |
| selectionAppearance | selection-appearance | Specifies the selection appearance, where: - `"icon"` (displays a checkmark or dot), or - `"border"` (displays a border).                                                                                                                                       | "border" \| "icon"                                   | TRUE                  |
| selectionMode       | selection-mode       | Specifies the selection mode, where: - `"multiple"` (allows any number of selected items), - `"single"` (allows only one selected item), - `"single-persist"` (allows only one selected item and prevents de-selection), - `"none"` (allows no selected items). | "multiple" \| "none" \| "single" \| "single-persist" | TRUE                  |

### Events

The following events are observed by shiny:

|                        |                                               |
|------------------------|-----------------------------------------------|
| Event                  | Description                                   |
| calciteTileGroupSelect | Fires when the component's selection changes. |

### Slots

The following slots are provided by this component:

|                   |                                            |
|-------------------|--------------------------------------------|
| Slot              | Description                                |
| Default (unnamed) | A slot for adding `calcite-tile` elements. |

## References

[Official
Documentation](https://developers.arcgis.com/calcite-design-system/components/tile-group/)

## Examples

``` r
calcite_tile_group()
#> <calcite-tile-group></calcite-tile-group>
```
