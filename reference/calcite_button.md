# Create a Button component

Create a Button component

## Usage

``` r
calcite_button(...)
```

## Arguments

- ...:

  named attributes passed to
  [`htmltools::tag()`](https://rstudio.github.io/htmltools/reference/builder.html)

## Value

an object of class `calcite_component` which is a subclass of
`shiny.tag`

## Details

Passing a 'href' will render an anchor link, instead of a button. Role
will be set to link, or button, depending on this. It is the consumers
responsibility to add aria information, rel, target, for links, and any
button attributes for form submission

### Properties

The following properties are provided by this component:

|                  |               |                                                                                                                                                                           |                                                                                                           |                       |
|------------------|---------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------|-----------------------------------------------------------------------------------------------------------|-----------------------|
| Name             | Attribute     | Description                                                                                                                                                               | Values                                                                                                    | Reflects to Attribute |
| alignment        | alignment     | Specifies the alignment of the component's elements.                                                                                                                      | "center" \| "end" \| "icon-end-space-between" \| "icon-start-space-between" \| "space-between" \| "start" | TRUE                  |
| appearance       | appearance    | Specifies the appearance style of the component.                                                                                                                          | "outline" \| "outline-fill" \| "solid" \| "transparent"                                                   | TRUE                  |
| disabled         | disabled      | When `true`, interaction is prevented and the component is displayed with lower opacity.                                                                                  | boolean                                                                                                   | TRUE                  |
| download         | download      | Prompts the user to save the linked URL instead of navigating to it. Can be used with or without a value: Without a value, the browser will suggest a filename/extension. | boolean \| string                                                                                         | TRUE                  |
| form             | form          | The `id` of the form that will be associated with the component. When not set, the component will be associated with its ancestor form element, if any.                   | string                                                                                                    | TRUE                  |
| href             | href          | Specifies the URL of the linked resource, which can be set as an absolute or relative path.                                                                               | string                                                                                                    | TRUE                  |
| iconEnd          | icon-end      | Specifies an icon to display at the end of the component.                                                                                                                 | string                                                                                                    | TRUE                  |
| iconFlipRtl      | icon-flip-rtl | Displays the `iconStart` and/or `iconEnd` as flipped when the element direction is right-to-left (`"rtl"`).                                                               | "both" \| "end" \| "start"                                                                                | TRUE                  |
| iconStart        | icon-start    | Specifies an icon to display at the start of the component.                                                                                                               | string                                                                                                    | TRUE                  |
| kind             | kind          | Specifies the kind of the component, which will apply to the border and background if applicable.                                                                         | "brand" \| "danger" \| "inverse" \| "neutral"                                                             | TRUE                  |
| label            | label         | Accessible name for the component.                                                                                                                                        | string                                                                                                    | FALSE                 |
| loading          | loading       | When `true`, a busy indicator is displayed and interaction is disabled.                                                                                                   | boolean                                                                                                   | TRUE                  |
| messageOverrides | NA            | Use this property to override individual strings used by the component.                                                                                                   | Check API reference                                                                                       | FALSE                 |
| name             | name          | Specifies the name of the component on form submission.                                                                                                                   | string                                                                                                    | TRUE                  |
| rel              | rel           | Defines the relationship between the `href` value and the current document.                                                                                               | string                                                                                                    | TRUE                  |
| round            | round         | When `true`, adds a round style to the component.                                                                                                                         | boolean                                                                                                   | TRUE                  |
| scale            | scale         | Specifies the size of the component.                                                                                                                                      | "l" \| "m" \| "s"                                                                                         | TRUE                  |
| splitChild       | split-child   | Specifies if the component is a child of a `calcite-split-button`.                                                                                                        | "primary" \| "secondary" \| boolean                                                                       | TRUE                  |
| target           | target        | Specifies where to open the linked document defined in the `href` property.                                                                                               | string                                                                                                    | TRUE                  |
| type             | type          | Specifies the default behavior of the component.                                                                                                                          | string                                                                                                    | TRUE                  |
| width            | width         | Check API reference                                                                                                                                                       | "auto" \| "full" \| "half"                                                                                | TRUE                  |

### Slots

The following slots are provided by this component:

|                   |                         |
|-------------------|-------------------------|
| Slot              | Description             |
| Default (unnamed) | A slot for adding text. |

## References

[Official
Documentation](https://developers.arcgis.com/calcite-design-system/components/button/)

## Examples

``` r
calcite_button()
#> <calcite-button></calcite-button>
```
