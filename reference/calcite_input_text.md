# Create a InputText component

Create a InputText component

## Usage

``` r
calcite_input_text(...)
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

|                   |                    |                                                                                                                                                                                                         |                                |                       |
|-------------------|--------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|--------------------------------|-----------------------|
| Name              | Attribute          | Description                                                                                                                                                                                             | Values                         | Reflects to Attribute |
| alignment         | alignment          | Specifies the text alignment of the component's value.                                                                                                                                                  | "end" \| "start"               | TRUE                  |
| autocomplete      | NA                 | Specifies the type of content to autocomplete, for use in forms. Read the native attribute's documentation on MDN for more info.                                                                        | AutoFill                       | FALSE                 |
| clearable         | clearable          | When `true`, a clear button is displayed when the component has a value.                                                                                                                                | boolean                        | TRUE                  |
| disabled          | disabled           | When `true`, interaction is prevented and the component is displayed with lower opacity.                                                                                                                | boolean                        | TRUE                  |
| form              | form               | The `id` of the form that will be associated with the component. When not set, the component will be associated with its ancestor form element, if any.                                                 | string                         | TRUE                  |
| icon              | icon               | Specifies an icon to display.                                                                                                                                                                           | boolean \| string              | TRUE                  |
| iconFlipRtl       | icon-flip-rtl      | When `true`, the icon will be flipped when the element direction is right-to-left (`"rtl"`).                                                                                                            | boolean                        | TRUE                  |
| label             | label              | Accessible name for the component's button or hyperlink.                                                                                                                                                | string                         | FALSE                 |
| loading           | loading            | When `true`, the component is in the loading state and `calcite-progress` is displayed.                                                                                                                 | boolean                        | TRUE                  |
| maxLength         | max-length         | When the component resides in a form, specifies the maximum length of text for the component's value.                                                                                                   | number                         | TRUE                  |
| messageOverrides  | NA                 | Use this property to override individual strings used by the component.                                                                                                                                 | Check API reference            | FALSE                 |
| minLength         | min-length         | When the component resides in a form, specifies the minimum length of text for the component's value.                                                                                                   | number                         | TRUE                  |
| name              | name               | Specifies the name of the component. Required to pass the component's `value` on form submission.                                                                                                       | string                         | TRUE                  |
| pattern           | pattern            | When the component resides in a form, specifies a regular expression (regex) pattern the component's `value` must match for validation. Read the native attribute's documentation on MDN for more info. | string                         | FALSE                 |
| placeholder       | placeholder        | Specifies placeholder text for the component.                                                                                                                                                           | string                         | FALSE                 |
| prefixText        | prefix-text        | Adds text to the start of the component.                                                                                                                                                                | string                         | FALSE                 |
| readOnly          | read-only          | When `true`, the component's value can be read, but cannot be modified.                                                                                                                                 | boolean                        | TRUE                  |
| required          | required           | When `true` and the component resides in a form, the component must have a value in order for the form to submit.                                                                                       | boolean                        | TRUE                  |
| scale             | scale              | Specifies the size of the component.                                                                                                                                                                    | "l" \| "m" \| "s"              | TRUE                  |
| status            | status             | Specifies the status of the input field, which determines message and icons.                                                                                                                            | "idle" \| "invalid" \| "valid" | TRUE                  |
| suffixText        | suffix-text        | Adds text to the end of the component.                                                                                                                                                                  | string                         | FALSE                 |
| validationIcon    | validation-icon    | Specifies the validation icon to display under the component.                                                                                                                                           | boolean \| string              | TRUE                  |
| validationMessage | validation-message | Specifies the validation message to display under the component.                                                                                                                                        | string                         | FALSE                 |
| validity          | NA                 | The current validation state of the component.                                                                                                                                                          | Check API reference            | FALSE                 |
| value             | value              | The component's value.                                                                                                                                                                                  | string                         | FALSE                 |

### Events

The following events are observed by shiny:

|                        |                                                     |
|------------------------|-----------------------------------------------------|
| Event                  | Description                                         |
| calciteInputTextChange | Fires each time a new value is typed and committed. |
| calciteInputTextInput  | Fires each time a new value is typed.               |

### Slots

The following slots are provided by this component:

|        |                                                        |
|--------|--------------------------------------------------------|
| Slot   | Description                                            |
| action | A slot for positioning a button next to the component. |

## References

[Official
Documentation](https://developers.arcgis.com/calcite-design-system/components/input-text/)

## Examples

``` r
calcite_input_text()
#> <calcite-input-text></calcite-input-text>
```
