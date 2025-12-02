# Create a ComboboxItem component

Create a ComboboxItem component

## Usage

``` r
calcite_combobox_item(...)
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

|                |                 |                                                                                                                                                                 |                     |                       |
|----------------|-----------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------|---------------------|-----------------------|
| Name           | Attribute       | Description                                                                                                                                                     | Values              | Reflects to Attribute |
| active         | active          | When `true`, the component is active.                                                                                                                           | boolean             | TRUE                  |
| ancestors      | NA              | Specifies the parent and grandparent items, which are set on `calcite-combobox`.                                                                                | Check API reference | FALSE                 |
| description    | description     | A description for the component, which displays below the heading.                                                                                              | string              | FALSE                 |
| disabled       | disabled        | When `true`, interaction is prevented and the component is displayed with lower opacity.                                                                        | boolean             | TRUE                  |
| filterDisabled | filter-disabled | When `true`, omits the component from the `calcite-combobox` filtered search results.                                                                           | boolean             | TRUE                  |
| guid           | guid            | The `id` attribute of the component. When omitted, a globally unique identifier is used.                                                                        | string              | TRUE                  |
| heading        | heading         | The component's text.                                                                                                                                           | string              | FALSE                 |
| icon           | icon            | Specifies an icon to display.                                                                                                                                   | string              | TRUE                  |
| iconFlipRtl    | icon-flip-rtl   | When `true`, the icon will be flipped when the element direction is right-to-left (`"rtl"`).                                                                    | boolean             | TRUE                  |
| label          | label           | The component's label.                                                                                                                                          | any                 | FALSE                 |
| metadata       | NA              | Provides additional metadata to the component used in filtering.                                                                                                | Check API reference | FALSE                 |
| selected       | selected        | When `true`, the component is selected.                                                                                                                         | boolean             | TRUE                  |
| shortHeading   | short-heading   | The component's short heading. When provided, the short heading will be displayed in the component's selection. It is recommended to use 5 characters or fewer. | string              | FALSE                 |
| textLabel      | text-label      | The component's text.                                                                                                                                           | string              | TRUE                  |
| value          | value           | The component's value.                                                                                                                                          | any                 | FALSE                 |

### Events

The following events are observed by shiny:

|                           |                                                         |
|---------------------------|---------------------------------------------------------|
| Event                     | Description                                             |
| calciteComboboxItemChange | Fires whenever the component is selected or unselected. |

### Slots

The following slots are provided by this component:

|                   |                                                                           |
|-------------------|---------------------------------------------------------------------------|
| Slot              | Description                                                               |
| Default (unnamed) | A slot for adding nested `calcite-combobox-item`s.                        |
| content-end       | A slot for adding non-actionable elements after the component's content.  |
| content-start     | A slot for adding non-actionable elements before the component's content. |

## References

[Official
Documentation](https://developers.arcgis.com/calcite-design-system/components/combobox-item/)

## Examples

``` r
calcite_combobox_item()
#> <calcite-combobox-item></calcite-combobox-item>
```
