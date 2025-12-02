# Create a TileSelect component

Use the `calcite-tile` component instead.

## Usage

``` r
calcite_tile_select(...)
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

|                |                 |                                                                                                                                       |                       |                       |
|----------------|-----------------|---------------------------------------------------------------------------------------------------------------------------------------|-----------------------|-----------------------|
| Name           | Attribute       | Description                                                                                                                           | Values                | Reflects to Attribute |
| checked        | checked         | When `true`, the component is checked.                                                                                                | boolean               | TRUE                  |
| description    | description     | A description for the component, which displays below the heading.                                                                    | string                | TRUE                  |
| disabled       | disabled        | When `true`, interaction is prevented and the component is displayed with lower opacity.                                              | boolean               | TRUE                  |
| heading        | heading         | The component header text, which displays between the icon and description.                                                           | string                | TRUE                  |
| icon           | icon            | Specifies an icon to display.                                                                                                         | string                | TRUE                  |
| iconFlipRtl    | icon-flip-rtl   | When `true`, the icon will be flipped when the element direction is right-to-left (`"rtl"`).                                          | boolean               | TRUE                  |
| inputAlignment | input-alignment | When `inputEnabled` is `true`, specifies the placement of the interactive input on the component.                                     | "end" \| "start"      | TRUE                  |
| inputEnabled   | input-enabled   | When `true`, displays an interactive input based on the `type` property.                                                              | boolean               | TRUE                  |
| name           | name            | Specifies the name of the component on form submission.                                                                               | any                   | TRUE                  |
| type           | type            | Specifies the selection mode of the component, where: `"radio"` is for single selection, and `"checkbox"` is for multiple selections. | "checkbox" \| "radio" | TRUE                  |
| value          | value           | The component's value.                                                                                                                | any                   | FALSE                 |
| width          | width           | Specifies the width of the component.                                                                                                 | "auto" \| "full"      | TRUE                  |

### Events

The following events are observed by shiny:

|                         |                                                                                                                        |
|-------------------------|------------------------------------------------------------------------------------------------------------------------|
| Event                   | Description                                                                                                            |
| calciteTileSelectChange | Emits a custom change event. For checkboxes it emits when checked or unchecked. For radios it only emits when checked. |

### Slots

The following slots are provided by this component:

|                   |                                   |
|-------------------|-----------------------------------|
| Slot              | Description                       |
| Default (unnamed) | A slot for adding custom content. |

## References

[Official
Documentation](https://developers.arcgis.com/calcite-design-system/components/tile-select/)

## Examples

``` r
calcite_tile_select()
#> <calcite-tile-select></calcite-tile-select>
```
