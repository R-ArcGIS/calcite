# Create a BlockSection component

Create a BlockSection component

## Usage

``` r
calcite_block_section(...)
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

|                  |                |                                                                                                                                                          |                                |                       |
|------------------|----------------|----------------------------------------------------------------------------------------------------------------------------------------------------------|--------------------------------|-----------------------|
| Name             | Attribute      | Description                                                                                                                                              | Values                         | Reflects to Attribute |
| iconEnd          | icon-end       | Specifies an icon to display at the end of the component.                                                                                                | string                         | TRUE                  |
| iconFlipRtl      | icon-flip-rtl  | Displays the `iconStart` and/or `iconEnd` as flipped when the element direction is right-to-left (`"rtl"`).                                              | "both" \| "end" \| "start"     | TRUE                  |
| iconStart        | icon-start     | Specifies an icon to display at the start of the component.                                                                                              | string                         | TRUE                  |
| messageOverrides | NA             | Use this property to override individual strings used by the component.                                                                                  | Check API reference            | FALSE                 |
| open             | open           | When `true`, expands the component and its contents.                                                                                                     | boolean                        | TRUE                  |
| status           | status         | Displays a status-related indicator icon.                                                                                                                | "idle" \| "invalid" \| "valid" | TRUE                  |
| text             | text           | The component header text.                                                                                                                               | string                         | FALSE                 |
| toggleDisplay    | toggle-display | Specifies how the component's toggle is displayed, where: `"button"` sets the toggle to a selectable header, and `"switch"` sets the toggle to a switch. | "button" \| "switch"           | TRUE                  |

### Events

The following events are observed by shiny:

|                           |                                         |
|---------------------------|-----------------------------------------|
| Event                     | Description                             |
| calciteBlockSectionToggle | Fires when the header has been clicked. |

### Slots

The following slots are provided by this component:

|                   |                                   |
|-------------------|-----------------------------------|
| Slot              | Description                       |
| Default (unnamed) | A slot for adding custom content. |

## References

[Official
Documentation](https://developers.arcgis.com/calcite-design-system/components/block-section/)

## Examples

``` r
calcite_block_section()
#> <calcite-block-section></calcite-block-section>
```
