# Create a DatePicker component

Create a DatePicker component

## Usage

``` r
calcite_date_picker(...)
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

|                            |                              |                                                                                                                                          |                               |                       |
|----------------------------|------------------------------|------------------------------------------------------------------------------------------------------------------------------------------|-------------------------------|-----------------------|
| Name                       | Attribute                    | Description                                                                                                                              | Values                        | Reflects to Attribute |
| activeDate                 | NA                           | Specifies the component's active date.                                                                                                   | Date                          | FALSE                 |
| activeRange                | active-range                 | When `range` is true, specifies the active `range`. Where `"start"` specifies the starting range date and `"end"` the ending range date. | "end" \| "start"              | TRUE                  |
| headingLevel               | heading-level                | Specifies the heading level of the component's `heading` for proper document structure, without affecting visual styling.                | 1 \| 2 \| 3 \| 4 \| 5 \| 6    | TRUE                  |
| layout                     | layout                       | Defines the layout of the component.                                                                                                     | "horizontal" \| "vertical"    | TRUE                  |
| max                        | max                          | When the component resides in a form, specifies the latest allowed date (`"yyyy-mm-dd"`).                                                | string                        | TRUE                  |
| maxAsDate                  | NA                           | Specifies the latest allowed date as a full date object (`new Date("yyyy-mm-dd")`).                                                      | Date                          | FALSE                 |
| messageOverrides           | NA                           | Use this property to override individual strings used by the component.                                                                  | Check API reference           | FALSE                 |
| min                        | min                          | When the component resides in a form, specifies the earliest allowed date (`"yyyy-mm-dd"`).                                              | string                        | TRUE                  |
| minAsDate                  | NA                           | Specifies the earliest allowed date as a full date object (`new Date("yyyy-mm-dd")`).                                                    | Date                          | FALSE                 |
| monthStyle                 | month-style                  | Specifies the monthStyle used by the component.                                                                                          | "abbreviated" \| "wide"       | FALSE                 |
| numberingSystem            | numbering-system             | Specifies the Unicode numeral system used by the component for localization. This property cannot be dynamically changed.                | "arab" \| "arabext" \| "latn" | TRUE                  |
| proximitySelectionDisabled | proximity-selection-disabled | When `true`, disables the default behavior on the third click of narrowing or extending the range and instead starts a new range.        | boolean                       | TRUE                  |
| range                      | range                        | When `true`, activates the component's range mode to allow a start and end date.                                                         | boolean                       | TRUE                  |
| scale                      | scale                        | Specifies the size of the component.                                                                                                     | "l" \| "m" \| "s"             | TRUE                  |
| value                      | value                        | Check API reference                                                                                                                      | Check API reference           | FALSE                 |
| valueAsDate                | NA                           | Check API reference                                                                                                                      | Check API reference           | FALSE                 |

### Events

The following events are observed by shiny:

|                              |                                                                                                                       |
|------------------------------|-----------------------------------------------------------------------------------------------------------------------|
| Event                        | Description                                                                                                           |
| calciteDatePickerChange      | Fires when a user changes the component's date. For `range` events, use `calciteDatePickerRangeChange`.               |
| calciteDatePickerRangeChange | Fires when a user changes the component's date `range`. For components without `range` use `calciteDatePickerChange`. |

## References

[Official
Documentation](https://developers.arcgis.com/calcite-design-system/components/date-picker/)

## Examples

``` r
calcite_date_picker()
#> <calcite-date-picker></calcite-date-picker>
```
