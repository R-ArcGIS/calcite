# Create a Input component

Create a Input component

## Usage

``` r
calcite_input(...)
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

|                   |                    |                                                                                                                                                                                                                           |                                                                                                                                                                                      |                       |
|-------------------|--------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|-----------------------|
| Name              | Attribute          | Description                                                                                                                                                                                                               | Values                                                                                                                                                                               | Reflects to Attribute |
| accept            | accept             | Specifies a comma separated list of unique file type specifiers for limiting accepted file types. This property only has an effect when `type` is "file". Read the native attribute's documentation on MDN for more info. | string                                                                                                                                                                               | FALSE                 |
| alignment         | alignment          | Specifies the text alignment of the component's value.                                                                                                                                                                    | "end" \| "start"                                                                                                                                                                     | TRUE                  |
| autocomplete      | NA                 | Specifies the type of content to autocomplete, for use in forms. Read the native attribute's documentation on MDN for more info.                                                                                          | AutoFill                                                                                                                                                                             | FALSE                 |
| clearable         | clearable          | When `true`, a clear button is displayed when the component has a value. The clear button shows by default for `"search"`, `"time"`, and `"date"` types, and will not display for the `"textarea"` type.                  | boolean                                                                                                                                                                              | TRUE                  |
| disabled          | disabled           | When `true`, interaction is prevented and the component is displayed with lower opacity.                                                                                                                                  | boolean                                                                                                                                                                              | TRUE                  |
| files             | NA                 | When `type` is `"file"`, specifies the component's selected files.                                                                                                                                                        | FileList                                                                                                                                                                             | FALSE                 |
| form              | form               | The `id` of the form that will be associated with the component. When not set, the component will be associated with its ancestor form element, if any.                                                                   | string                                                                                                                                                                               | TRUE                  |
| groupSeparator    | group-separator    | When `true`, number values are displayed with a group separator corresponding to the language and country format.                                                                                                         | boolean                                                                                                                                                                              | TRUE                  |
| icon              | icon               | When `true`, shows a default recommended icon. Alternatively, pass a Calcite UI Icon name to display a specific icon.                                                                                                     | boolean \| string                                                                                                                                                                    | TRUE                  |
| iconFlipRtl       | icon-flip-rtl      | When `true`, the icon will be flipped when the element direction is right-to-left (`"rtl"`).                                                                                                                              | boolean                                                                                                                                                                              | TRUE                  |
| label             | label              | Accessible name for the component.                                                                                                                                                                                        | string                                                                                                                                                                               | FALSE                 |
| loading           | loading            | When `true`, a busy indicator is displayed.                                                                                                                                                                               | boolean                                                                                                                                                                              | TRUE                  |
| max               | max                | When the component resides in a form, specifies the maximum value for `type="number"`.                                                                                                                                    | number                                                                                                                                                                               | TRUE                  |
| maxLength         | max-length         | When the component resides in a form, specifies the maximum length of text for the component's value.                                                                                                                     | number                                                                                                                                                                               | TRUE                  |
| messageOverrides  | NA                 | Use this property to override individual strings used by the component.                                                                                                                                                   | Check API reference                                                                                                                                                                  | FALSE                 |
| min               | min                | When the component resides in a form, specifies the minimum value for `type="number"`.                                                                                                                                    | number                                                                                                                                                                               | TRUE                  |
| minLength         | min-length         | When the component resides in a form, specifies the minimum length of text for the component's value.                                                                                                                     | number                                                                                                                                                                               | TRUE                  |
| multiple          | multiple           | When `true`, the component can accept more than one value. This property only has an effect when `type` is "email" or "file". Read the native attribute's documentation on MDN for more info.                             | boolean                                                                                                                                                                              | FALSE                 |
| name              | name               | Specifies the name of the component. Required to pass the component's `value` on form submission.                                                                                                                         | string                                                                                                                                                                               | TRUE                  |
| numberButtonType  | number-button-type | Specifies the placement of the buttons for `type="number"`.                                                                                                                                                               | "horizontal" \| "none" \| "vertical"                                                                                                                                                 | TRUE                  |
| numberingSystem   | numbering-system   | Specifies the Unicode numeral system used by the component for localization.                                                                                                                                              | "arab" \| "arabext" \| "latn"                                                                                                                                                        | TRUE                  |
| pattern           | pattern            | When the component resides in a form, specifies a regular expression (regex) pattern the component's `value` must match for validation. Read the native attribute's documentation on MDN for more info.                   | string                                                                                                                                                                               | FALSE                 |
| placeholder       | placeholder        | Specifies placeholder text for the component.                                                                                                                                                                             | string                                                                                                                                                                               | FALSE                 |
| prefixText        | prefix-text        | Adds text to the start of the component.                                                                                                                                                                                  | string                                                                                                                                                                               | FALSE                 |
| readOnly          | read-only          | When `true`, the component's value can be read, but cannot be modified.                                                                                                                                                   | boolean                                                                                                                                                                              | TRUE                  |
| required          | required           | When `true` and the component resides in a form, the component must have a value in order for the form to submit.                                                                                                         | boolean                                                                                                                                                                              | TRUE                  |
| scale             | scale              | Specifies the size of the component.                                                                                                                                                                                      | "l" \| "m" \| "s"                                                                                                                                                                    | TRUE                  |
| status            | status             | Specifies the status of the input field, which determines message and icons.                                                                                                                                              | "idle" \| "invalid" \| "valid"                                                                                                                                                       | TRUE                  |
| step              | step               | Specifies the granularity the component's `value` must adhere to.                                                                                                                                                         | "any" \| number                                                                                                                                                                      | TRUE                  |
| suffixText        | suffix-text        | Adds text to the end of the component.                                                                                                                                                                                    | string                                                                                                                                                                               | FALSE                 |
| type              | type               | Check API reference                                                                                                                                                                                                       | "color" \| "date" \| "datetime-local" \| "email" \| "file" \| "image" \| "month" \| "number" \| "password" \| "search" \| "tel" \| "text" \| "textarea" \| "time" \| "url" \| "week" | TRUE                  |
| validationIcon    | validation-icon    | Specifies the validation icon to display under the component.                                                                                                                                                             | boolean \| string                                                                                                                                                                    | TRUE                  |
| validationMessage | validation-message | Specifies the validation message to display under the component.                                                                                                                                                          | string                                                                                                                                                                               | FALSE                 |
| validity          | NA                 | The current validation state of the component.                                                                                                                                                                            | Check API reference                                                                                                                                                                  | FALSE                 |
| value             | value              | The component's value.                                                                                                                                                                                                    | string                                                                                                                                                                               | FALSE                 |

### Events

The following events are observed by shiny:

|                    |                                                       |
|--------------------|-------------------------------------------------------|
| Event              | Description                                           |
| calciteInputChange | Fires each time a new `value` is typed and committed. |
| calciteInputInput  | Fires each time a new `value` is typed.               |

### Slots

The following slots are provided by this component:

|        |                                                                  |
|--------|------------------------------------------------------------------|
| Slot   | Description                                                      |
| action | A slot for positioning a `calcite-button` next to the component. |

## References

[Official
Documentation](https://developers.arcgis.com/calcite-design-system/components/input/)

## Examples

``` r
calcite_input()
#> <calcite-input></calcite-input>
```
