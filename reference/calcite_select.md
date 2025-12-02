# Create a Select component

Create a Select component

## Usage

``` r
calcite_select(...)
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
| disabled          | disabled           | When `true`, interaction is prevented and the component is displayed with lower opacity.                                                                | boolean                        | TRUE                  |
| form              | form               | The `id` of the form that will be associated with the component. When not set, the component will be associated with its ancestor form element, if any. | string                         | TRUE                  |
| label             | label              | Accessible name for the component.                                                                                                                      | string                         | FALSE                 |
| name              | name               | Specifies the name of the component. Required to pass the component's `value` on form submission.                                                       | string                         | TRUE                  |
| required          | required           | When `true` and the component resides in a form, the component must have a value in order for the form to submit.                                       | boolean                        | TRUE                  |
| scale             | scale              | Specifies the size of the component.                                                                                                                    | "l" \| "m" \| "s"              | TRUE                  |
| selectedOption    | NA                 | The component's selected option `HTMLElement`.                                                                                                          | HTMLCalciteOptionElement       | FALSE                 |
| status            | status             | Specifies the status of the input field, which determines message and icons.                                                                            | "idle" \| "invalid" \| "valid" | TRUE                  |
| validationIcon    | validation-icon    | Specifies the validation icon to display under the component.                                                                                           | boolean \| string              | TRUE                  |
| validationMessage | validation-message | Specifies the validation message to display under the component.                                                                                        | string                         | FALSE                 |
| validity          | NA                 | The current validation state of the component.                                                                                                          | Check API reference            | FALSE                 |
| value             | value              | The component's `selectedOption` value.                                                                                                                 | string                         | FALSE                 |
| width             | width              | Check API reference                                                                                                                                     | "auto" \| "full" \| "half"     | TRUE                  |

### Events

The following events are observed by shiny:

|                     |                                          |
|---------------------|------------------------------------------|
| Event               | Description                              |
| calciteSelectChange | Fires when the `selectedOption` changes. |

### Slots

The following slots are provided by this component:

|                   |                                      |
|-------------------|--------------------------------------|
| Slot              | Description                          |
| Default (unnamed) | A slot for adding `calcite-option`s. |

## References

[Official
Documentation](https://developers.arcgis.com/calcite-design-system/components/select/)

## Examples

``` r
calcite_select()
#> <calcite-select></calcite-select>
```
