# Create a DropdownItem component

Create a DropdownItem component

## Usage

``` r
calcite_dropdown_item(...)
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

|             |               |                                                                                                                                                   |                            |                       |
|-------------|---------------|---------------------------------------------------------------------------------------------------------------------------------------------------|----------------------------|-----------------------|
| Name        | Attribute     | Description                                                                                                                                       | Values                     | Reflects to Attribute |
| disabled    | disabled      | When `true`, interaction is prevented and the component is displayed with lower opacity.                                                          | boolean                    | TRUE                  |
| href        | href          | Specifies the URL of the linked resource, which can be set as an absolute or relative path. Determines if the component will render as an anchor. | string                     | TRUE                  |
| iconEnd     | icon-end      | Specifies an icon to display at the end of the component.                                                                                         | string                     | TRUE                  |
| iconFlipRtl | icon-flip-rtl | Displays the `iconStart` and/or `iconEnd` as flipped when the element direction is right-to-left (`"rtl"`).                                       | "both" \| "end" \| "start" | TRUE                  |
| iconStart   | icon-start    | Specifies an icon to display at the start of the component.                                                                                       | string                     | TRUE                  |
| label       | label         | Accessible name for the component.                                                                                                                | string                     | FALSE                 |
| rel         | rel           | Specifies the relationship to the linked document defined in `href`.                                                                              | string                     | TRUE                  |
| selected    | selected      | When `true`, the component is selected.                                                                                                           | boolean                    | TRUE                  |
| target      | target        | Specifies the frame or window to open the linked document.                                                                                        | string                     | TRUE                  |

### Events

The following events are observed by shiny:

|                           |                                       |
|---------------------------|---------------------------------------|
| Event                     | Description                           |
| calciteDropdownItemSelect | Fires when the component is selected. |

### Slots

The following slots are provided by this component:

|                   |                         |
|-------------------|-------------------------|
| Slot              | Description             |
| Default (unnamed) | A slot for adding text. |

## References

[Official
Documentation](https://developers.arcgis.com/calcite-design-system/components/dropdown-item/)

## Examples

``` r
calcite_dropdown_item()
#> <calcite-dropdown-item></calcite-dropdown-item>
```
