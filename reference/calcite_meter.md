# Create a Meter component

Create a Meter component

## Usage

``` r
calcite_meter(...)
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

|                 |                  |                                                                                                                                                                              |                                        |                       |
|-----------------|------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|----------------------------------------|-----------------------|
| Name            | Attribute        | Description                                                                                                                                                                  | Values                                 | Reflects to Attribute |
| appearance      | appearance       | Specifies the appearance style of the component.                                                                                                                             | "outline" \| "outline-fill" \| "solid" | TRUE                  |
| disabled        | disabled         | When `true`, interaction is prevented and the component is displayed with lower opacity.                                                                                     | boolean                                | TRUE                  |
| fillType        | fill-type        | Specifies the component's display, where `"single"` displays a single color and `"range"` displays a range of colors based on provided `low`, `high`, `min` or `max` values. | "range" \| "single"                    | TRUE                  |
| form            | form             | The `id` of the form that will be associated with the component. When not set, the component will be associated with its ancestor form element, if any.                      | string                                 | TRUE                  |
| groupSeparator  | group-separator  | When `true`, number values are displayed with a group separator corresponding to the language and country format.                                                            | boolean                                | TRUE                  |
| high            | high             | Specifies a high value. When `fillType` is `"range"`, displays a different color when above the specified threshold.                                                         | number                                 | TRUE                  |
| label           | label            | Accessible name for the component.                                                                                                                                           | string                                 | FALSE                 |
| low             | low              | Specifies a low value. When `fillType` is `"range"`, displays a different color when above the specified threshold.                                                          | number                                 | TRUE                  |
| max             | max              | Specifies the highest allowed value of the component.                                                                                                                        | number                                 | TRUE                  |
| min             | min              | Specifies the lowest allowed value of the component.                                                                                                                         | number                                 | TRUE                  |
| name            | name             | Specifies the name of the component. Required to pass the component's `value` on form submission.                                                                            | string                                 | TRUE                  |
| numberingSystem | numbering-system | Specifies the Unicode numeral system used by the component for localization.                                                                                                 | "arab" \| "arabext" \| "latn"          | FALSE                 |
| rangeLabels     | range-labels     | When `true`, displays the values of `high`, `low`, `min`, and `max`.                                                                                                         | boolean                                | TRUE                  |
| rangeLabelType  | range-label-type | When `rangeLabels` is `true`, specifies the format of displayed labels.                                                                                                      | "percent" \| "units"                   | TRUE                  |
| scale           | scale            | Specifies the size of the component.                                                                                                                                         | "l" \| "m" \| "s"                      | TRUE                  |
| unitLabel       | unit-label       | When `rangeLabelType` is `"units"` and either `valueLabel` or `rangeLabels` are `true`, displays beside the `value` and/or `min` values.                                     | string                                 | FALSE                 |
| value           | value            | Specifies the current value of the component.                                                                                                                                | number                                 | FALSE                 |
| valueLabel      | value-label      | When `true`, displays the current value.                                                                                                                                     | boolean                                | TRUE                  |
| valueLabelType  | value-label-type | When `valueLabel` is `true`, specifies the format of displayed label.                                                                                                        | "percent" \| "units"                   | TRUE                  |

## References

[Official
Documentation](https://developers.arcgis.com/calcite-design-system/components/meter/)

## Examples

``` r
calcite_meter()
#> <calcite-meter></calcite-meter>
```
