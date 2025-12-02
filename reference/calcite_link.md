# Create a Link component

Create a Link component

## Usage

``` r
calcite_link(...)
```

## Arguments

- ...:

  named attributes passed to
  [`htmltools::tag()`](https://rstudio.github.io/htmltools/reference/builder.html)

## Value

an object of class `calcite_component` which is a subclass of
`shiny.tag`

## Details

Any attributes placed on `<calcite-link>` component will propagate to
the rendered child Passing a 'href' will render an anchor link, instead
of a span. Role will be set to link, or link, depending on this. It is
the consumers responsibility to add aria information, rel, target, for
links, and any link attributes for form submission

### Properties

The following properties are provided by this component:

|             |               |                                                                                                                                                                           |                            |                       |
|-------------|---------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------|----------------------------|-----------------------|
| Name        | Attribute     | Description                                                                                                                                                               | Values                     | Reflects to Attribute |
| disabled    | disabled      | When `true`, interaction is prevented and the component is displayed with lower opacity.                                                                                  | boolean                    | TRUE                  |
| download    | download      | Prompts the user to save the linked URL instead of navigating to it. Can be used with or without a value: Without a value, the browser will suggest a filename/extension. | boolean \| string          | TRUE                  |
| href        | href          | Specifies the URL of the linked resource, which can be set as an absolute or relative path.                                                                               | string                     | TRUE                  |
| iconEnd     | icon-end      | Specifies an icon to display at the end of the component.                                                                                                                 | string                     | TRUE                  |
| iconFlipRtl | icon-flip-rtl | Displays the `iconStart` and/or `iconEnd` as flipped when the element direction is right-to-left (`"rtl"`).                                                               | "both" \| "end" \| "start" | TRUE                  |
| iconStart   | icon-start    | Specifies an icon to display at the start of the component.                                                                                                               | string                     | TRUE                  |
| rel         | rel           | Specifies the relationship to the linked document defined in `href`.                                                                                                      | string                     | FALSE                 |
| target      | target        | Specifies the frame or window to open the linked document.                                                                                                                | string                     | FALSE                 |

### Slots

The following slots are provided by this component:

|                   |                         |
|-------------------|-------------------------|
| Slot              | Description             |
| Default (unnamed) | A slot for adding text. |

## References

[Official
Documentation](https://developers.arcgis.com/calcite-design-system/components/link/)

## Examples

``` r
calcite_link()
#> <calcite-link></calcite-link>
```
