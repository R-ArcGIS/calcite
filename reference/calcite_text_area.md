# Create a TextArea component

Create a TextArea component

## Usage

``` r
calcite_text_area(...)
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

|                   |                    |                                                                                                                                                         |                                                |                       |
|-------------------|--------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------|------------------------------------------------|-----------------------|
| Name              | Attribute          | Description                                                                                                                                             | Values                                         | Reflects to Attribute |
| columns           | columns            | Specifies the component's number of columns.                                                                                                            | number                                         | TRUE                  |
| disabled          | disabled           | When `true`, interaction is prevented and the component is displayed with lower opacity.                                                                | boolean                                        | TRUE                  |
| form              | form               | The `id` of the form that will be associated with the component. When not set, the component will be associated with its ancestor form element, if any. | string                                         | TRUE                  |
| groupSeparator    | group-separator    | When `true`, number values are displayed with a group separator corresponding to the language and country format.                                       | boolean                                        | TRUE                  |
| label             | label              | Accessible name for the component.                                                                                                                      | string                                         | FALSE                 |
| limitText         | limit-text         | Check API reference                                                                                                                                     | boolean                                        | TRUE                  |
| maxLength         | max-length         | When the component resides in a form, specifies the maximum number of characters allowed.                                                               | number                                         | TRUE                  |
| messageOverrides  | NA                 | Use this property to override individual strings used by the component.                                                                                 | Check API reference                            | FALSE                 |
| minLength         | min-length         | When the component resides in a form, specifies the minimum number of characters allowed.                                                               | number                                         | TRUE                  |
| name              | name               | Specifies the name of the component.                                                                                                                    | string                                         | TRUE                  |
| numberingSystem   | numbering-system   | Specifies the Unicode numeral system used by the component for localization.                                                                            | "arab" \| "arabext" \| "latn"                  | FALSE                 |
| placeholder       | placeholder        | Specifies the placeholder text for the component.                                                                                                       | string                                         | FALSE                 |
| readOnly          | read-only          | When `true`, the component's `value` can be read, but cannot be modified.                                                                               | boolean                                        | TRUE                  |
| required          | required           | When `true` and the component resides in a form, the component must have a value in order for the form to submit.                                       | boolean                                        | TRUE                  |
| resize            | resize             | Specifies if the component is resizable.                                                                                                                | "both" \| "horizontal" \| "none" \| "vertical" | TRUE                  |
| rows              | rows               | Specifies the component's number of rows.                                                                                                               | number                                         | TRUE                  |
| scale             | scale              | Specifies the size of the component.                                                                                                                    | "l" \| "m" \| "s"                              | TRUE                  |
| status            | status             | Specifies the status of the input field, which determines message and icons.                                                                            | "idle" \| "invalid" \| "valid"                 | TRUE                  |
| validationIcon    | validation-icon    | Specifies the validation icon to display under the component.                                                                                           | boolean \| string                              | TRUE                  |
| validationMessage | validation-message | Specifies the validation message to display under the component.                                                                                        | string                                         | FALSE                 |
| validity          | NA                 | The current validation state of the component.                                                                                                          | Check API reference                            | FALSE                 |
| value             | value              | The component's value.                                                                                                                                  | string                                         | FALSE                 |
| wrap              | wrap               | Specifies the wrapping mechanism for the text.                                                                                                          | "hard" \| "soft"                               | TRUE                  |

### Events

The following events are observed by shiny:

|                       |                                                       |
|-----------------------|-------------------------------------------------------|
| Event                 | Description                                           |
| calciteTextAreaChange | Fires each time a new `value` is typed and committed. |
| calciteTextAreaInput  | Fires each time a new `value` is typed.               |

### Slots

The following slots are provided by this component:

|                   |                                                                   |
|-------------------|-------------------------------------------------------------------|
| Slot              | Description                                                       |
| Default (unnamed) | A slot for adding text.                                           |
| footer-start      | A slot for adding content to the start of the component's footer. |
| footer-end        | A slot for adding content to the end of the component's footer.   |

## References

[Official
Documentation](https://developers.arcgis.com/calcite-design-system/components/text-area/)

## Examples

``` r
calcite_text_area()
#> <calcite-text-area></calcite-text-area>
```
