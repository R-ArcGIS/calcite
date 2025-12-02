# Create a Loader component

Create a Loader component

## Usage

``` r
calcite_loader(...)
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

|        |           |                                                                                                                                                                                                                                                           |                                                         |                       |
|--------|-----------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|---------------------------------------------------------|-----------------------|
| Name   | Attribute | Description                                                                                                                                                                                                                                               | Values                                                  | Reflects to Attribute |
| inline | inline    | When `true`, displays smaller and appears to the left of the text.                                                                                                                                                                                        | boolean                                                 | TRUE                  |
| label  | label     | Accessible name for the component.                                                                                                                                                                                                                        | string                                                  | FALSE                 |
| scale  | scale     | Specifies the size of the component.                                                                                                                                                                                                                      | "l" \| "m" \| "s"                                       | TRUE                  |
| text   | text      | Text that displays under the component's indicator.                                                                                                                                                                                                       | string                                                  | FALSE                 |
| type   | type      | Specifies the component type. Use `"indeterminate"` if finding actual progress value is impossible. Otherwise, use `"determinate"` to have the value indicate the progress or `"determinate-value"` to have the value label displayed along the progress. | "determinate" \| "determinate-value" \| "indeterminate" | TRUE                  |
| value  | value     | The component's value. Valid only for `"determinate"` indicators. Percent complete of 100.                                                                                                                                                                | number                                                  | FALSE                 |

## References

[Official
Documentation](https://developers.arcgis.com/calcite-design-system/components/loader/)

## Examples

``` r
calcite_loader()
#> <calcite-loader></calcite-loader>
```
