# Create a Action component

Create a Action component

## Usage

``` r
calcite_action(...)
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

|                  |               |                                                                                                                        |                              |                       |
|------------------|---------------|------------------------------------------------------------------------------------------------------------------------|------------------------------|-----------------------|
| Name             | Attribute     | Description                                                                                                            | Values                       | Reflects to Attribute |
| active           | active        | When `true`, the component is highlighted.                                                                             | boolean                      | TRUE                  |
| alignment        | alignment     | Specifies the horizontal alignment of button elements with text content.                                               | "center" \| "end" \| "start" | TRUE                  |
| appearance       | appearance    | Specifies the appearance of the component.                                                                             | "solid" \| "transparent"     | TRUE                  |
| compact          | compact       | When `true`, the side padding of the component is reduced.                                                             | boolean                      | TRUE                  |
| disabled         | disabled      | When `true`, interaction is prevented and the component is displayed with lower opacity.                               | boolean                      | TRUE                  |
| icon             | icon          | Specifies an icon to display.                                                                                          | string                       | TRUE                  |
| iconFlipRtl      | icon-flip-rtl | When `true`, the icon will be flipped when the element direction is right-to-left (`"rtl"`).                           | boolean                      | TRUE                  |
| indicator        | indicator     | When `true`, displays a visual indicator.                                                                              | boolean                      | TRUE                  |
| label            | label         | Specifies the label of the component. If no label is provided, the label inherits what's provided for the `text` prop. | string                       | FALSE                 |
| loading          | loading       | When `true`, a busy indicator is displayed.                                                                            | boolean                      | TRUE                  |
| messageOverrides | NA            | Use this property to override individual strings used by the component.                                                | Check API reference          | FALSE                 |
| scale            | scale         | Specifies the size of the component.                                                                                   | "l" \| "m" \| "s"            | TRUE                  |
| text             | text          | Specifies text that accompanies the icon.                                                                              | string                       | FALSE                 |
| textEnabled      | text-enabled  | Indicates whether the text is displayed.                                                                               | boolean                      | TRUE                  |

### Slots

The following slots are provided by this component:

|                   |                                                                                                   |
|-------------------|---------------------------------------------------------------------------------------------------|
| Slot              | Description                                                                                       |
| Default (unnamed) | A slot for adding a `calcite-icon`.                                                               |
| tooltip           | [Deprecated](https://rdrr.io/r/base/Deprecated.html) Use the `calcite-tooltip` component instead. |

## References

[Official
Documentation](https://developers.arcgis.com/calcite-design-system/components/action/)

## Examples

``` r
calcite_action()
#> <calcite-action></calcite-action>
```
