# Create a TimePicker component

Create a TimePicker component

## Usage

``` r
calcite_time_picker(...)
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

|                  |                  |                                                                                                                                                                   |                               |                       |
|------------------|------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------|-------------------------------|-----------------------|
| Name             | Attribute        | Description                                                                                                                                                       | Values                        | Reflects to Attribute |
| hourFormat       | hour-format      | Specifies the component's hour format, where: `"user"` displays the user's locale format, `"12"` displays a 12-hour format, and `"24"` displays a 24-hour format. | "12" \| "24" \| "user"        | TRUE                  |
| messageOverrides | NA               | Use this property to override individual strings used by the component.                                                                                           | Check API reference           | FALSE                 |
| numberingSystem  | numbering-system | Specifies the Unicode numeral system used by the component for localization.                                                                                      | "arab" \| "arabext" \| "latn" | FALSE                 |
| scale            | scale            | Specifies the size of the component.                                                                                                                              | "l" \| "m" \| "s"             | TRUE                  |
| step             | step             | Specifies the granularity the `value` must adhere to (in seconds).                                                                                                | number                        | TRUE                  |
| value            | value            | The component's value in UTC (always 24-hour format).                                                                                                             | string                        | FALSE                 |

### Events

The following events are observed by shiny:

|                         |             |
|-------------------------|-------------|
| Event                   | Description |
| calciteTimePickerChange |             |

## References

[Official
Documentation](https://developers.arcgis.com/calcite-design-system/components/time-picker/)

## Examples

``` r
calcite_time_picker()
#> <calcite-time-picker></calcite-time-picker>
```
