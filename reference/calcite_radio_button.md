# Create a RadioButton component

Create a RadioButton component

## Usage

``` r
calcite_radio_button(...)
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

|          |           |                                                                                                                                                                  |                   |                       |
|----------|-----------|------------------------------------------------------------------------------------------------------------------------------------------------------------------|-------------------|-----------------------|
| Name     | Attribute | Description                                                                                                                                                      | Values            | Reflects to Attribute |
| checked  | checked   | When `true`, the component is checked.                                                                                                                           | boolean           | TRUE                  |
| disabled | disabled  | When `true`, interaction is prevented and the component is displayed with lower opacity.                                                                         | boolean           | TRUE                  |
| form     | form      | The `id` of the form that will be associated with the component. When not set, the component will be associated with its ancestor form element, if any.          | string            | TRUE                  |
| name     | name      | Specifies the name of the component. Can be inherited from `calcite-radio-button-group`. Required to pass the component's `value` on form submission.            | string            | TRUE                  |
| required | required  | When `true` and the component resides in a form, the component must have a value selected from the `calcite-radio-button-group` in order for the form to submit. | boolean           | TRUE                  |
| scale    | scale     | Specifies the size of the component inherited from the `calcite-radio-button-group`.                                                                             | "l" \| "m" \| "s" | TRUE                  |
| value    | value     | The component's value.                                                                                                                                           | any               | FALSE                 |

### Events

The following events are observed by shiny:

|                          |                                                                                                                                                                                                                                                                                                                                                                                                                                                             |
|--------------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Event                    | Description                                                                                                                                                                                                                                                                                                                                                                                                                                                 |
| calciteRadioButtonChange | Fires only when the radio button is checked. This behavior is identical to the native HTML input element. Since this event does not fire when the radio button is unchecked, it's not recommended to attach a listener for this event directly on the element, but instead either attach it to a node that contains all of the radio buttons in the group or use the `calciteRadioButtonGroupChange` event if using this with `calcite-radio-button-group`. |

## References

[Official
Documentation](https://developers.arcgis.com/calcite-design-system/components/radio-button/)

## Examples

``` r
calcite_radio_button()
#> <calcite-radio-button></calcite-radio-button>
```
