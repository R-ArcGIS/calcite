# Create a TreeItem component

Create a TreeItem component

## Usage

``` r
calcite_tree_item(...)
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

|             |               |                                                                                              |                            |                       |
|-------------|---------------|----------------------------------------------------------------------------------------------|----------------------------|-----------------------|
| Name        | Attribute     | Description                                                                                  | Values                     | Reflects to Attribute |
| disabled    | disabled      | When `true`, interaction is prevented and the component is displayed with lower opacity.     | boolean                    | TRUE                  |
| expanded    | expanded      | When `true`, the component is expanded.                                                      | boolean                    | TRUE                  |
| iconFlipRtl | icon-flip-rtl | When `true`, the icon will be flipped when the element direction is right-to-left (`"rtl"`). | "both" \| "end" \| "start" | TRUE                  |
| iconStart   | icon-start    | Specifies an icon to display at the start of the component.                                  | string                     | TRUE                  |
| label       | label         | Accessible name for the component.                                                           | string                     | FALSE                 |
| selected    | selected      | When `true`, the component is selected.                                                      | boolean                    | TRUE                  |

### Slots

The following slots are provided by this component:

|                   |                                                                                                       |
|-------------------|-------------------------------------------------------------------------------------------------------|
| Slot              | Description                                                                                           |
| Default (unnamed) | A slot for adding text.                                                                               |
| children          | A slot for adding nested `calcite-tree` elements.                                                     |
| actions-end       | A slot for adding actions to the end of the component. It is recommended to use two or fewer actions. |

## References

[Official
Documentation](https://developers.arcgis.com/calcite-design-system/components/tree-item/)

## Examples

``` r
calcite_tree_item()
#> <calcite-tree-item></calcite-tree-item>
```
