# Create a ListItem component

Create a ListItem component

## Usage

``` r
calcite_list_item(...)
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

|                  |                  |                                                                                                                                             |                            |                       |
|------------------|------------------|---------------------------------------------------------------------------------------------------------------------------------------------|----------------------------|-----------------------|
| Name             | Attribute        | Description                                                                                                                                 | Values                     | Reflects to Attribute |
| closable         | closable         | When `true`, a close button is added to the component.                                                                                      | boolean                    | TRUE                  |
| closed           | closed           | When `true`, hides the component.                                                                                                           | boolean                    | TRUE                  |
| description      | description      | A description for the component. Displays below the label text.                                                                             | string                     | FALSE                 |
| disabled         | disabled         | When `true`, interaction is prevented and the component is displayed with lower opacity.                                                    | boolean                    | TRUE                  |
| dragDisabled     | drag-disabled    | When `true`, the item is not draggable.                                                                                                     | boolean                    | TRUE                  |
| iconEnd          | icon-end         | Specifies an icon to display at the end of the component.                                                                                   | string                     | TRUE                  |
| iconFlipRtl      | icon-flip-rtl    | Displays the `iconStart` and/or `iconEnd` as flipped when the element direction is right-to-left (`"rtl"`).                                 | "both" \| "end" \| "start" | TRUE                  |
| iconStart        | icon-start       | Specifies an icon to display at the start of the component.                                                                                 | string                     | TRUE                  |
| label            | label            | The label text of the component. Displays above the description text.                                                                       | string                     | FALSE                 |
| messageOverrides | NA               | Use this property to override individual strings used by the component.                                                                     | Check API reference        | FALSE                 |
| metadata         | NA               | Provides additional metadata to the component. Primary use is for a filter on the parent `calcite-list`.                                    | Check API reference        | FALSE                 |
| open             | open             | When `true`, the item is open to show child components.                                                                                     | boolean                    | TRUE                  |
| scale            | scale            | Specifies the size of the component.                                                                                                        | "l" \| "m" \| "s"          | TRUE                  |
| selected         | selected         | When `true` and the parent `calcite-list`'s `selectionMode` is `"single"`, `"single-persist"', or `"multiple"\`, the component is selected. | boolean                    | TRUE                  |
| sortHandleOpen   | sort-handle-open | When `true`, displays and positions the sort handle.                                                                                        | boolean                    | TRUE                  |
| unavailable      | unavailable      | When `true`, the component's content appears inactive.                                                                                      | boolean                    | TRUE                  |
| value            | value            | The component's value.                                                                                                                      | any                        | FALSE                 |

### Events

The following events are observed by shiny:

|                                      |                                                                                                            |
|--------------------------------------|------------------------------------------------------------------------------------------------------------|
| Event                                | Description                                                                                                |
| calciteListItemClose                 | Fires when the close button is clicked.                                                                    |
| calciteListItemSelect                | Fires when the component is selected.                                                                      |
| calciteListItemSortHandleBeforeClose | Fires when the sort handle is requested to be closed and before the closing transition begins.             |
| calciteListItemSortHandleBeforeOpen  | Fires when the sort handle is added to the DOM but not rendered, and before the opening transition begins. |
| calciteListItemSortHandleClose       | Fires when the sort handle is closed and animation is complete.                                            |
| calciteListItemSortHandleOpen        | Fires when the sort handle is open and animation is complete.                                              |
| calciteListItemToggle                | Fires when the open button is clicked.                                                                     |

### Slots

The following slots are provided by this component:

|                   |                                                                                                                |
|-------------------|----------------------------------------------------------------------------------------------------------------|
| Slot              | Description                                                                                                    |
| Default (unnamed) | A slot for adding `calcite-list`, `calcite-list-item` and `calcite-list-item-group` elements.                  |
| actions-start     | A slot for adding actionable `calcite-action` elements before the content of the component.                    |
| content-start     | A slot for adding non-actionable elements before the label and description of the component.                   |
| content           | A slot for adding non-actionable, centered content in place of the `label` and `description` of the component. |
| content-end       | A slot for adding non-actionable elements after the label and description of the component.                    |
| actions-end       | A slot for adding actionable `calcite-action` elements after the content of the component.                     |
| content-bottom    | A slot for adding content below the component's `label` and `description`.                                     |

## References

[Official
Documentation](https://developers.arcgis.com/calcite-design-system/components/list-item/)

## Examples

``` r
calcite_list_item()
#> <calcite-list-item></calcite-list-item>
```
