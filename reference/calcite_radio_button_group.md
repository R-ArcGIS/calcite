# Create a RadioButtonGroup component

Create a RadioButtonGroup component

## Usage

``` r
calcite_radio_button_group(...)
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

|                   |                    |                                                                                                                   |                                      |                       |
|-------------------|--------------------|-------------------------------------------------------------------------------------------------------------------|--------------------------------------|-----------------------|
| Name              | Attribute          | Description                                                                                                       | Values                               | Reflects to Attribute |
| disabled          | disabled           | When `true`, interaction is prevented and the component is displayed with lower opacity.                          | boolean                              | TRUE                  |
| layout            | layout             | Defines the layout of the component.                                                                              | "grid" \| "horizontal" \| "vertical" | TRUE                  |
| name              | name               | Specifies the name of the component on form submission. Must be unique to other component instances.              | string                               | TRUE                  |
| required          | required           | When `true` and the component resides in a form, the component must have a value in order for the form to submit. | boolean                              | TRUE                  |
| scale             | scale              | Specifies the size of the component.                                                                              | "l" \| "m" \| "s"                    | TRUE                  |
| selectedItem      | NA                 | Specifies the component's selected item.                                                                          | HTMLCalciteRadioButtonElement        | FALSE                 |
| status            | status             | Specifies the status of the validation message.                                                                   | "idle" \| "invalid" \| "valid"       | TRUE                  |
| validationIcon    | validation-icon    | Specifies the validation icon to display under the component.                                                     | boolean \| string                    | TRUE                  |
| validationMessage | validation-message | Specifies the validation message to display under the component.                                                  | string                               | FALSE                 |

### Events

The following events are observed by shiny:

|                               |                                       |
|-------------------------------|---------------------------------------|
| Event                         | Description                           |
| calciteRadioButtonGroupChange | Fires when the component has changed. |

### Slots

The following slots are provided by this component:

|                   |                                            |
|-------------------|--------------------------------------------|
| Slot              | Description                                |
| Default (unnamed) | A slot for adding `calcite-radio-button`s. |

## References

[Official
Documentation](https://developers.arcgis.com/calcite-design-system/components/radio-button-group/)

## Examples

``` r
calcite_radio_button_group()
#> <calcite-radio-button-group></calcite-radio-button-group>
```
