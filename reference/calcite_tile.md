# Create a Tile component

Create a Tile component

## Usage

``` r
calcite_tile(...)
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

|             |               |                                                                                                                              |                     |                       |
|-------------|---------------|------------------------------------------------------------------------------------------------------------------------------|---------------------|-----------------------|
| Name        | Attribute     | Description                                                                                                                  | Values              | Reflects to Attribute |
| active      | active        | When `true`, the component is active.                                                                                        | boolean             | TRUE                  |
| alignment   | alignment     | Specifies the alignment of the Tile's content.                                                                               | "center" \| "start" | TRUE                  |
| description | description   | A description for the component, which displays below the heading.                                                           | string              | TRUE                  |
| disabled    | disabled      | When `true`, interaction is prevented and the component is displayed with lower opacity.                                     | boolean             | TRUE                  |
| embed       | embed         | The component's embed mode. When `true`, renders without a border and padding for use by other components.                   | boolean             | TRUE                  |
| heading     | heading       | The component header text, which displays between the icon and description.                                                  | string              | TRUE                  |
| href        | href          | When embed is `"false"`, the URL for the component.                                                                          | string              | TRUE                  |
| icon        | icon          | Specifies an icon to display.                                                                                                | string              | TRUE                  |
| iconFlipRtl | icon-flip-rtl | When `true`, the icon will be flipped when the element direction is right-to-left (`"rtl"`).                                 | boolean             | TRUE                  |
| label       | label         | Accessible name for the component.                                                                                           | string              | FALSE                 |
| scale       | scale         | Specifies the size of the component.                                                                                         | "l" \| "m" \| "s"   | TRUE                  |
| selected    | selected      | When `true` and the parent's `selectionMode` is `"single"`, `"single-persist"', or `"multiple"\`, the component is selected. | boolean             | TRUE                  |

### Events

The following events are observed by shiny:

|                   |                                                         |
|-------------------|---------------------------------------------------------|
| Event             | Description                                             |
| calciteTileSelect | Fires when the selected state of the component changes. |

### Slots

The following slots are provided by this component:

|                |                                                                                                                                                                  |
|----------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Slot           | Description                                                                                                                                                      |
| content-top    | A slot for adding non-actionable elements above the component's content. Content slotted here will render in place of the `icon` property.                       |
| content-bottom | A slot for adding non-actionable elements below the component's content.                                                                                         |
| content-start  | [Deprecated](https://rdrr.io/r/base/Deprecated.html) use `content-top` slot instead. A slot for adding non-actionable elements before the component's content.   |
| content-end    | [Deprecated](https://rdrr.io/r/base/Deprecated.html) use `content-bottom` slot instead. A slot for adding non-actionable elements after the component's content. |

## References

[Official
Documentation](https://developers.arcgis.com/calcite-design-system/components/tile/)

## Examples

``` r
calcite_tile()
#> <calcite-tile></calcite-tile>
```
