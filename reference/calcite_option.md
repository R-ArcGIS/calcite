# Create a Option component

Create a Option component

## Usage

``` r
calcite_option(...)
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

|          |           |                                                                                          |         |                       |
|----------|-----------|------------------------------------------------------------------------------------------|---------|-----------------------|
| Name     | Attribute | Description                                                                              | Values  | Reflects to Attribute |
| disabled | disabled  | When `true`, interaction is prevented and the component is displayed with lower opacity. | boolean | TRUE                  |
| label    | label     | Accessible name for the component.                                                       | string  | FALSE                 |
| selected | selected  | When `true`, the component is selected.                                                  | boolean | TRUE                  |
| value    | value     | The component's value.                                                                   | any     | FALSE                 |

## References

[Official
Documentation](https://developers.arcgis.com/calcite-design-system/components/option/)

## Examples

``` r
calcite_option()
#> Error in calcite_option(): argument "label" is missing, with no default
```
