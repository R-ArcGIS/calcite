# Create a TableCell component

Create a TableCell component

## Usage

``` r
calcite_table_cell(...)
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

|                  |           |                                                                         |                              |                       |
|------------------|-----------|-------------------------------------------------------------------------|------------------------------|-----------------------|
| Name             | Attribute | Description                                                             | Values                       | Reflects to Attribute |
| alignment        | alignment | Specifies the alignment of the component.                               | "center" \| "end" \| "start" | TRUE                  |
| colSpan          | col-span  | Specifies the number of columns the component should span.              | number                       | TRUE                  |
| messageOverrides | NA        | Use this property to override individual strings used by the component. | Check API reference          | FALSE                 |
| rowSpan          | row-span  | Specifies the number of rows the component should span.                 | number                       | TRUE                  |

### Slots

The following slots are provided by this component:

|                   |                                                  |
|-------------------|--------------------------------------------------|
| Slot              | Description                                      |
| Default (unnamed) | A slot for adding content, usually text content. |

## References

[Official
Documentation](https://developers.arcgis.com/calcite-design-system/components/table-cell/)

## Examples

``` r
calcite_table_cell()
#> Error in calcite_table_cell(): argument "content" is missing, with no default
```
