# Create a ListItemGroup component

Create a ListItemGroup component

## Usage

``` r
calcite_list_item_group(...)
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

|          |           |                                                                                          |                   |                       |
|----------|-----------|------------------------------------------------------------------------------------------|-------------------|-----------------------|
| Name     | Attribute | Description                                                                              | Values            | Reflects to Attribute |
| disabled | disabled  | When `true`, interaction is prevented and the component is displayed with lower opacity. | boolean           | TRUE                  |
| heading  | heading   | The header text for all nested `calcite-list-item` rows.                                 | string            | TRUE                  |
| scale    | scale     | Specifies the size of the component.                                                     | "l" \| "m" \| "s" | TRUE                  |

### Slots

The following slots are provided by this component:

|                   |                                                                               |
|-------------------|-------------------------------------------------------------------------------|
| Slot              | Description                                                                   |
| Default (unnamed) | A slot for adding `calcite-list-item` and `calcite-list-item-group` elements. |

## References

[Official
Documentation](https://developers.arcgis.com/calcite-design-system/components/list-item-group/)

## Examples

``` r
calcite_list_item_group()
#> <calcite-list-item-group></calcite-list-item-group>
```
