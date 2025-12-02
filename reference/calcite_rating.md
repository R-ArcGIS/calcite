# Create a Rating component

Create a Rating component

## Usage

``` r
calcite_rating(...)
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

|                   |                    |                                                                                                                                                         |                                |                       |
|-------------------|--------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------|--------------------------------|-----------------------|
| Name              | Attribute          | Description                                                                                                                                             | Values                         | Reflects to Attribute |
| average           | average            | Specifies a cumulative average from previous ratings to display.                                                                                        | number                         | TRUE                  |
| count             | count              | Specifies the number of previous ratings to display.                                                                                                    | number                         | TRUE                  |
| disabled          | disabled           | When `true`, interaction is prevented and the component is displayed with lower opacity.                                                                | boolean                        | TRUE                  |
| form              | form               | The `id` of the form that will be associated with the component. When not set, the component will be associated with its ancestor form element, if any. | string                         | TRUE                  |
| messageOverrides  | NA                 | Use this property to override individual strings used by the component.                                                                                 | Check API reference            | FALSE                 |
| name              | name               | Specifies the name of the component. Required to pass the component's `value` on form submission.                                                       | string                         | TRUE                  |
| readOnly          | read-only          | When `true`, the component's value can be read, but cannot be modified.                                                                                 | boolean                        | TRUE                  |
| scale             | scale              | Specifies the size of the component.                                                                                                                    | "l" \| "m" \| "s"              | TRUE                  |
| showChip          | show-chip          | When `true`, and if available, displays the `average` and/or `count` data summary in a `calcite-chip`.                                                  | boolean                        | TRUE                  |
| status            | status             | Specifies the status of the input field, which determines message and icons.                                                                            | "idle" \| "invalid" \| "valid" | TRUE                  |
| validationIcon    | validation-icon    | Specifies the validation icon to display under the component.                                                                                           | boolean \| string              | TRUE                  |
| validationMessage | validation-message | Specifies the validation message to display under the component.                                                                                        | string                         | FALSE                 |
| validity          | NA                 | The current validation state of the component.                                                                                                          | Check API reference            | FALSE                 |
| value             | value              | The component's value.                                                                                                                                  | number                         | TRUE                  |

### Events

The following events are observed by shiny:

|                     |                                           |
|---------------------|-------------------------------------------|
| Event               | Description                               |
| calciteRatingChange | Fires when the component's value changes. |

## References

[Official
Documentation](https://developers.arcgis.com/calcite-design-system/components/rating/)

## Examples

``` r
calcite_rating()
#> <calcite-rating></calcite-rating>
```
