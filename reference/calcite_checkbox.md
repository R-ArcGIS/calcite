# Create a Checkbox component

Create a Checkbox component

## Usage

``` r
calcite_checkbox(...)
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

|               |               |                                                                                                                                                                         |                                |                       |
|---------------|---------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------|--------------------------------|-----------------------|
| Name          | Attribute     | Description                                                                                                                                                             | Values                         | Reflects to Attribute |
| checked       | checked       | When `true`, the component is checked.                                                                                                                                  | boolean                        | TRUE                  |
| disabled      | disabled      | When `true`, interaction is prevented and the component is displayed with lower opacity.                                                                                | boolean                        | TRUE                  |
| form          | form          | The `id` of the form that will be associated with the component. When not set, the component will be associated with its ancestor form element, if any.                 | string                         | TRUE                  |
| indeterminate | indeterminate | When `true`, the component is initially indeterminate, which is independent from its `checked` value. The state is visual only, and can look different across browsers. | boolean                        | TRUE                  |
| label         | label         | Accessible name for the component.                                                                                                                                      | string                         | FALSE                 |
| name          | name          | Specifies the name of the component. Required to pass the component's `value` on form submission.                                                                       | string                         | TRUE                  |
| required      | required      | When `true` and the component resides in a form, the component must have a value in order for the form to submit.                                                       | boolean                        | TRUE                  |
| scale         | scale         | Specifies the size of the component.                                                                                                                                    | "l" \| "m" \| "s"              | TRUE                  |
| status        | status        | Specifies the status of the input field, which determines message and icons.                                                                                            | "idle" \| "invalid" \| "valid" | TRUE                  |
| validity      | NA            | The current validation state of the component.                                                                                                                          | Check API reference            | FALSE                 |
| value         | value         | The component's value.                                                                                                                                                  | any                            | FALSE                 |

### Events

The following events are observed by shiny:

|                       |                                                      |
|-----------------------|------------------------------------------------------|
| Event                 | Description                                          |
| calciteCheckboxChange | Fires when the component's `checked` status changes. |

## References

[Official
Documentation](https://developers.arcgis.com/calcite-design-system/components/checkbox/)

## Examples

``` r
calcite_checkbox()
#> <calcite-checkbox></calcite-checkbox>
```
