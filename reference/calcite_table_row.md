# Create a TableRow component

Create a TableRow component

## Usage

``` r
calcite_table_row(...)
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

|           |           |                                                                                          |                              |                       |
|-----------|-----------|------------------------------------------------------------------------------------------|------------------------------|-----------------------|
| Name      | Attribute | Description                                                                              | Values                       | Reflects to Attribute |
| alignment | alignment | Specifies the alignment of the component.                                                | "center" \| "end" \| "start" | TRUE                  |
| disabled  | disabled  | When `true`, interaction is prevented and the component is displayed with lower opacity. | boolean                      | TRUE                  |
| selected  | selected  | When `true`, the component is selected.                                                  | boolean                      | TRUE                  |

### Events

The following events are observed by shiny:

|                       |                                                         |
|-----------------------|---------------------------------------------------------|
| Event                 | Description                                             |
| calciteTableRowSelect | Fires when the selected state of the component changes. |

### Slots

The following slots are provided by this component:

|                   |                                                                            |
|-------------------|----------------------------------------------------------------------------|
| Slot              | Description                                                                |
| Default (unnamed) | A slot for adding `calcite-table-cell` or `calcite-table-header` elements. |

## References

[Official
Documentation](https://developers.arcgis.com/calcite-design-system/components/table-row/)

## Examples

``` r
calcite_table_row()
#> Error in calcite_table_row(): argument "cells" is missing, with no default
```
