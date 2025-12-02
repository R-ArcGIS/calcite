# Create a InputTimeZone component

Create a InputTimeZone component

## Usage

``` r
calcite_input_time_zone(...)
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

|                    |                     |                                                                                                                                                                                                                                                                                                                                                                             |                                |                       |
|--------------------|---------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|--------------------------------|-----------------------|
| Name               | Attribute           | Description                                                                                                                                                                                                                                                                                                                                                                 | Values                         | Reflects to Attribute |
| clearable          | clearable           | When `true`, an empty value (`null`) will be allowed as a `value`. When `false`, an offset or name value is enforced, and clearing the input or blurring will restore the last valid `value`.                                                                                                                                                                               | boolean                        | TRUE                  |
| disabled           | disabled            | When `true`, interaction is prevented and the component is displayed with lower opacity.                                                                                                                                                                                                                                                                                    | boolean                        | TRUE                  |
| form               | form                | The `id` of the form that will be associated with the component. When not set, the component will be associated with its ancestor form element, if any.                                                                                                                                                                                                                     | string                         | TRUE                  |
| maxItems           | max-items           | Specifies the component's maximum number of options to display before displaying a scrollbar.                                                                                                                                                                                                                                                                               | number                         | TRUE                  |
| messageOverrides   | NA                  | Use this property to override individual strings used by the component.                                                                                                                                                                                                                                                                                                     | Check API reference            | FALSE                 |
| mode               | mode                | This specifies the type of `value` and the associated options presented to the user: Using `"offset"` will provide options that show timezone offsets. Using `"name"` will provide options that show the IANA time zone names.                                                                                                                                              | "name" \| "offset" \| "region" | TRUE                  |
| name               | name                | Specifies the name of the component. Required to pass the component's `value` on form submission.                                                                                                                                                                                                                                                                           | string                         | TRUE                  |
| offsetStyle        | offset-style        | Specifies how the offset will be displayed, where `"user"` uses `UTC` or `GMT` depending on the user's locale, `"gmt"` always uses `GMT`, and `"utc"` always uses `UTC`. This only applies to the `offset` mode.                                                                                                                                                            | "gmt" \| "user" \| "utc"       | TRUE                  |
| open               | open                | When `true`, displays and positions the component.                                                                                                                                                                                                                                                                                                                          | boolean                        | TRUE                  |
| overlayPositioning | overlay-positioning | Determines the type of positioning to use for the overlaid content. Using `"absolute"` will work for most cases. The component will be positioned inside of overflowing parent containers and will affect the container's layout. `"fixed"` should be used to escape an overflowing parent container, or when the reference element's `position` CSS property is `"fixed"`. | "absolute" \| "fixed"          | TRUE                  |
| readOnly           | read-only           | When `true`, the component's value can be read, but controls are not accessible and the value cannot be modified.                                                                                                                                                                                                                                                           | boolean                        | TRUE                  |
| referenceDate      | reference-date      | This `date` will be used as a reference to Daylight Savings Time when creating time zone item groups. It can be either a Date instance or a string in ISO format (`"YYYY-MM-DD"`, `"YYYY-MM-DDTHH:MM:SS.SSSZ"`).                                                                                                                                                            | Date \| string                 | FALSE                 |
| scale              | scale               | Specifies the size of the component.                                                                                                                                                                                                                                                                                                                                        | "l" \| "m" \| "s"              | TRUE                  |
| status             | status              | Specifies the status of the input field, which determines message and icons.                                                                                                                                                                                                                                                                                                | "idle" \| "invalid" \| "valid" | TRUE                  |
| validationIcon     | validation-icon     | Specifies the validation icon to display under the component.                                                                                                                                                                                                                                                                                                               | boolean \| string              | TRUE                  |
| validationMessage  | validation-message  | Specifies the validation message to display under the component.                                                                                                                                                                                                                                                                                                            | string                         | FALSE                 |
| validity           | NA                  | The current validation state of the component.                                                                                                                                                                                                                                                                                                                              | Check API reference            | FALSE                 |
| value              | value               | The component's value, where the value is the time zone offset or the difference, in minutes, between the selected time zone and UTC. If no value is provided, the user's time zone offset will be selected by default.                                                                                                                                                     | string                         | FALSE                 |

### Events

The following events are observed by shiny:

|                                 |                                                                                                          |
|---------------------------------|----------------------------------------------------------------------------------------------------------|
| Event                           | Description                                                                                              |
| calciteInputTimeZoneBeforeClose | Fires when the component is requested to be closed and before the closing transition begins.             |
| calciteInputTimeZoneBeforeOpen  | Fires when the component is added to the DOM but not rendered, and before the opening transition begins. |
| calciteInputTimeZoneChange      | Fires when the component's `value` changes.                                                              |
| calciteInputTimeZoneClose       | Fires after the component is closed and animation is complete.                                           |
| calciteInputTimeZoneOpen        | Fires after the component is opened and animation is complete.                                           |

## References

[Official
Documentation](https://developers.arcgis.com/calcite-design-system/components/input-time-zone/)

## Examples

``` r
calcite_input_time_zone()
#> <calcite-input-time-zone></calcite-input-time-zone>
```
