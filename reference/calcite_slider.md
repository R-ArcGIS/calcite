# Create a Slider component

Create a Slider component

## Usage

``` r
calcite_slider(...)
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

|                   |                    |                                                                                                                                                                             |                                                                                                                     |                       |
|-------------------|--------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------|---------------------------------------------------------------------------------------------------------------------|-----------------------|
| Name              | Attribute          | Description                                                                                                                                                                 | Values                                                                                                              | Reflects to Attribute |
| disabled          | disabled           | When `true`, interaction is prevented and the component is displayed with lower opacity.                                                                                    | boolean                                                                                                             | TRUE                  |
| fillPlacement     | fill-placement     | Used to configure where the fill is placed along the slider track in relation to the value handle. Range mode will always display the fill between the min and max handles. | "end" \| "none" \| "start"                                                                                          | TRUE                  |
| form              | form               | The `id` of the form that will be associated with the component. When not set, the component will be associated with its ancestor form element, if any.                     | string                                                                                                              | TRUE                  |
| groupSeparator    | group-separator    | When `true`, number values are displayed with a group separator corresponding to the language and country format.                                                           | boolean                                                                                                             | TRUE                  |
| hasHistogram      | has-histogram      | When `true`, indicates a histogram is present.                                                                                                                              | boolean                                                                                                             | TRUE                  |
| histogram         | NA                 | A list of the histogram's x,y coordinates within the component's `min` and `max`. Displays above the component's track.                                                     | Check API reference                                                                                                 | FALSE                 |
| histogramStops    | NA                 | A set of single color stops for a histogram, sorted by offset ascending.                                                                                                    | Check API reference                                                                                                 | FALSE                 |
| labelFormatter    | NA                 | When specified, allows users to customize handle labels.                                                                                                                    | (value: number, type: "min" \| "value" \| "max" \| "tick", defaultFormatter: (value: number) =\> string) =\> string | FALSE                 |
| labelHandles      | label-handles      | When `true`, displays label handles with their numeric value.                                                                                                               | boolean                                                                                                             | TRUE                  |
| labelTicks        | label-ticks        | When `true` and `ticks` is specified, displays label tick marks with their numeric value.                                                                                   | boolean                                                                                                             | TRUE                  |
| max               | max                | The component's maximum selectable value.                                                                                                                                   | number                                                                                                              | TRUE                  |
| maxLabel          | max-label          | For multiple selections, the accessible name for the second handle, such as `"Temperature, upper bound"`.                                                                   | string                                                                                                              | FALSE                 |
| maxValue          | max-value          | For multiple selections, the component's upper value.                                                                                                                       | number                                                                                                              | FALSE                 |
| min               | min                | The component's minimum selectable value.                                                                                                                                   | number                                                                                                              | TRUE                  |
| minLabel          | min-label          | Accessible name for first (or only) handle, such as `"Temperature, lower bound"`.                                                                                           | string                                                                                                              | FALSE                 |
| minValue          | min-value          | For multiple selections, the component's lower value.                                                                                                                       | number                                                                                                              | FALSE                 |
| mirrored          | mirrored           | When `true`, the slider will display values from high to low. Note that this value will be ignored if the slider has an associated histogram.                               | boolean                                                                                                             | TRUE                  |
| name              | name               | Specifies the name of the component. Required to pass the component's `value` on form submission.                                                                           | string                                                                                                              | TRUE                  |
| numberingSystem   | numbering-system   | Specifies the Unicode numeral system used by the component for localization.                                                                                                | "arab" \| "arabext" \| "latn"                                                                                       | FALSE                 |
| pageStep          | page-step          | Specifies the interval to move with the page up, or page down keys.                                                                                                         | number                                                                                                              | TRUE                  |
| precise           | precise            | When `true`, sets a finer point for handles.                                                                                                                                | boolean                                                                                                             | TRUE                  |
| required          | required           | When `true` and the component resides in a form, the component must have a value in order for the form to submit.                                                           | boolean                                                                                                             | TRUE                  |
| scale             | scale              | Specifies the size of the component.                                                                                                                                        | "l" \| "m" \| "s"                                                                                                   | TRUE                  |
| snap              | snap               | When `true`, enables snap selection in coordination with `step` via a mouse.                                                                                                | boolean                                                                                                             | TRUE                  |
| status            | status             | Specifies the status of the input field, which determines message and icons.                                                                                                | "idle" \| "invalid" \| "valid"                                                                                      | TRUE                  |
| step              | step               | Specifies the interval to move with the up, or down keys.                                                                                                                   | number                                                                                                              | TRUE                  |
| ticks             | ticks              | Displays tick marks on the number line at a specified interval.                                                                                                             | number                                                                                                              | TRUE                  |
| validationIcon    | validation-icon    | Specifies the validation icon to display under the component.                                                                                                               | boolean \| string                                                                                                   | TRUE                  |
| validationMessage | validation-message | Specifies the validation message to display under the component.                                                                                                            | string                                                                                                              | FALSE                 |
| validity          | NA                 | The current validation state of the component.                                                                                                                              | Check API reference                                                                                                 | FALSE                 |
| value             | value              | The component's value.                                                                                                                                                      | Check API reference                                                                                                 | TRUE                  |

### Events

The following events are observed by shiny:

|                     |                                                                                                                                                                                       |
|---------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Event               | Description                                                                                                                                                                           |
| calciteSliderChange | Fires when the thumb is released on the component. Note: To constantly listen to the drag event, use `calciteSliderInput` instead.                                                    |
| calciteSliderInput  | Fires on all updates to the component. Note: Fires frequently during drag. To perform expensive operations consider using a debounce or throttle to avoid locking up the main thread. |

## References

[Official
Documentation](https://developers.arcgis.com/calcite-design-system/components/slider/)

## Examples

``` r
calcite_slider()
#> <calcite-slider></calcite-slider>
```
