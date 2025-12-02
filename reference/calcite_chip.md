# Create a Chip component

Create a Chip component

## Usage

``` r
calcite_chip(...)
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

|                  |                 |                                                                                                                           |                                        |                       |
|------------------|-----------------|---------------------------------------------------------------------------------------------------------------------------|----------------------------------------|-----------------------|
| Name             | Attribute       | Description                                                                                                               | Values                                 | Reflects to Attribute |
| appearance       | appearance      | Specifies the appearance style of the component.                                                                          | "outline" \| "outline-fill" \| "solid" | TRUE                  |
| closable         | closable        | When `true`, a close button is added to the component.                                                                    | boolean                                | TRUE                  |
| closed           | closed          | When `true`, hides the component.                                                                                         | boolean                                | TRUE                  |
| closeOnDelete    | close-on-delete | When `true`, the component closes when the Delete or Backspace key is pressed while focused.                              | boolean                                | TRUE                  |
| disabled         | disabled        | When `true`, interaction is prevented and the component is displayed with lower opacity.                                  | boolean                                | TRUE                  |
| icon             | icon            | Specifies an icon to display.                                                                                             | string                                 | TRUE                  |
| iconFlipRtl      | icon-flip-rtl   | When `true`, the icon will be flipped when the element direction is right-to-left (`"rtl"`).                              | boolean                                | TRUE                  |
| kind             | kind            | Specifies the kind of the component, which will apply to border and background if applicable.                             | "brand" \| "inverse" \| "neutral"      | TRUE                  |
| label            | label           | Accessible name for the component.                                                                                        | string                                 | FALSE                 |
| messageOverrides | NA              | Use this property to override individual strings used by the component.                                                   | Check API reference                    | FALSE                 |
| scale            | scale           | Specifies the size of the component. When contained in a parent `calcite-chip-group` inherits the parent's `scale` value. | "l" \| "m" \| "s"                      | TRUE                  |
| selected         | selected        | When `true`, the component is selected.                                                                                   | boolean                                | TRUE                  |
| value            | value           | The component's value.                                                                                                    | any                                    | FALSE                 |

### Events

The following events are observed by shiny:

|                   |                                                         |
|-------------------|---------------------------------------------------------|
| Event             | Description                                             |
| calciteChipClose  | Fires when the component's close button is selected.    |
| calciteChipSelect | Fires when the selected state of the component changes. |

### Slots

The following slots are provided by this component:

|                   |                             |
|-------------------|-----------------------------|
| Slot              | Description                 |
| Default (unnamed) | A slot for adding text.     |
| image             | A slot for adding an image. |

## References

[Official
Documentation](https://developers.arcgis.com/calcite-design-system/components/chip/)

## Examples

``` r
calcite_chip()
#> <calcite-chip></calcite-chip>
```
