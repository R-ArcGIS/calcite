# Create a Progress component

Create a Progress component

## Usage

``` r
calcite_progress(...)
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

|          |           |                                                                                                     |                                  |                       |
|----------|-----------|-----------------------------------------------------------------------------------------------------|----------------------------------|-----------------------|
| Name     | Attribute | Description                                                                                         | Values                           | Reflects to Attribute |
| label    | label     | Accessible name for the component.                                                                  | string                           | FALSE                 |
| reversed | reversed  | When `true` and for `"indeterminate"` progress bars, reverses the animation direction.              | boolean                          | TRUE                  |
| text     | text      | Text that displays under the component's indicator.                                                 | string                           | FALSE                 |
| type     | type      | Specifies the component type. Use `"indeterminate"` if finding actual progress value is impossible. | "determinate" \| "indeterminate" | TRUE                  |
| value    | value     | When `type` is `"determinate"`, specifies the component's value with a range of 0 to 100.           | number                           | FALSE                 |

## References

[Official
Documentation](https://developers.arcgis.com/calcite-design-system/components/progress/)

## Examples

``` r
calcite_progress()
#> <calcite-progress></calcite-progress>
```
