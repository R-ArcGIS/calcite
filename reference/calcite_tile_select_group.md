# Create a TileSelectGroup component

Use the `calcite-tile-group` component instead.

## Usage

``` r
calcite_tile_select_group(...)
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

|          |           |                                                                                                         |                            |                       |
|----------|-----------|---------------------------------------------------------------------------------------------------------|----------------------------|-----------------------|
| Name     | Attribute | Description                                                                                             | Values                     | Reflects to Attribute |
| disabled | disabled  | When `true`, interaction is prevented and the component is displayed with lower opacity.                | boolean                    | TRUE                  |
| layout   | layout    | Defines the layout of the component. Use `"horizontal"` for rows, and `"vertical"` for a single column. | "horizontal" \| "vertical" | TRUE                  |

### Slots

The following slots are provided by this component:

|                   |                                                   |
|-------------------|---------------------------------------------------|
| Slot              | Description                                       |
| Default (unnamed) | A slot for adding `calcite-tile-select` elements. |

## References

[Official
Documentation](https://developers.arcgis.com/calcite-design-system/components/tile-select-group/)

## Examples

``` r
calcite_tile_select_group()
#> <calcite-tile-select-group></calcite-tile-select-group>
```
