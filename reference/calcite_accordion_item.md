# Create a AccordionItem component

Create a AccordionItem component

## Usage

``` r
calcite_accordion_item(...)
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

|             |               |                                                                                                             |                            |                       |
|-------------|---------------|-------------------------------------------------------------------------------------------------------------|----------------------------|-----------------------|
| Name        | Attribute     | Description                                                                                                 | Values                     | Reflects to Attribute |
| description | description   | Specifies a description for the component.                                                                  | string                     | FALSE                 |
| expanded    | expanded      | When `true`, the component is expanded.                                                                     | boolean                    | TRUE                  |
| heading     | heading       | Specifies heading text for the component.                                                                   | string                     | FALSE                 |
| iconEnd     | icon-end      | Specifies an icon to display at the end of the component.                                                   | string                     | TRUE                  |
| iconFlipRtl | icon-flip-rtl | Displays the `iconStart` and/or `iconEnd` as flipped when the element direction is right-to-left (`"rtl"`). | "both" \| "end" \| "start" | TRUE                  |
| iconStart   | icon-start    | Specifies an icon to display at the start of the component.                                                 | string                     | TRUE                  |

### Slots

The following slots are provided by this component:

|                   |                                                                                             |
|-------------------|---------------------------------------------------------------------------------------------|
| Slot              | Description                                                                                 |
| Default (unnamed) | A slot for adding custom content, including nested `calcite-accordion-item`s.               |
| actions-end       | A slot for adding `calcite-action`s or content to the end side of the component's header.   |
| actions-start     | A slot for adding `calcite-action`s or content to the start side of the component's header. |

## References

[Official
Documentation](https://developers.arcgis.com/calcite-design-system/components/accordion-item/)

## Examples

``` r
calcite_accordion_item()
#> <calcite-accordion-item></calcite-accordion-item>
```
