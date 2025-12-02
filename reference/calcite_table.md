# Create a Table component

Create a Table component

## Usage

``` r
calcite_table(...)
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

|                  |                   |                                                                                                                                                                                                                                                                                                                            |                                  |                       |
|------------------|-------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|----------------------------------|-----------------------|
| Name             | Attribute         | Description                                                                                                                                                                                                                                                                                                                | Values                           | Reflects to Attribute |
| bordered         | bordered          | When `true`, displays borders in the component.                                                                                                                                                                                                                                                                            | boolean                          | TRUE                  |
| caption          | caption           | Specifies an accessible title for the component.                                                                                                                                                                                                                                                                           | string                           | FALSE                 |
| groupSeparator   | group-separator   | When `true`, number values are displayed with a group separator corresponding to the language and country format.                                                                                                                                                                                                          | boolean                          | TRUE                  |
| interactionMode  | interaction-mode  | When `"interactive"`, allows focus and keyboard navigation of `table-header`s and `table-cell`s. When `"static"`, prevents focus and keyboard navigation of `table-header`s and `table-cell`s when assistive technologies are not active. Selection affordances and slotted content within `table-cell`s remain focusable. | "interactive" \| "static"        | TRUE                  |
| layout           | layout            | Specifies the layout of the component.                                                                                                                                                                                                                                                                                     | "auto" \| "fixed"                | TRUE                  |
| messageOverrides | NA                | Use this property to override individual strings used by the component.                                                                                                                                                                                                                                                    | Check API reference              | FALSE                 |
| numbered         | numbered          | When `true`, displays the position of the row in numeric form.                                                                                                                                                                                                                                                             | boolean                          | TRUE                  |
| numberingSystem  | numbering-system  | Specifies the Unicode numeral system used by the component for localization.                                                                                                                                                                                                                                               | "arab" \| "arabext" \| "latn"    | TRUE                  |
| pageSize         | page-size         | Specifies the page size of the component. When `true`, renders `calcite-pagination`.                                                                                                                                                                                                                                       | number                           | TRUE                  |
| scale            | scale             | Specifies the size of the component.                                                                                                                                                                                                                                                                                       | "l" \| "m" \| "s"                | TRUE                  |
| selectedItems    | NA                | Specifies the component's selected items.                                                                                                                                                                                                                                                                                  | Check API reference              | FALSE                 |
| selectionDisplay | selection-display | Specifies the display of the selection interface when `selection-mode` is not `"none"`. When `"none"`, content slotted the `selection-actions` slot will not be displayed.                                                                                                                                                 | "none" \| "top"                  | TRUE                  |
| selectionMode    | selection-mode    | Specifies the selection mode of the component, where: `"multiple"` allows any number of selections, `"single"` allows only one selection, and `"none"` does not allow any selections.                                                                                                                                      | "multiple" \| "none" \| "single" | TRUE                  |
| striped          | striped           | When `true`, displays striped styling in the component.                                                                                                                                                                                                                                                                    | boolean                          | TRUE                  |

### Events

The following events are observed by shiny:

|                        |                                                    |
|------------------------|----------------------------------------------------|
| Event                  | Description                                        |
| calciteTablePageChange | Emits when the component's page selection changes. |
| calciteTableSelect     | Emits when the component's selected rows change.   |

### Slots

The following slots are provided by this component:

|                   |                                                                                                                                               |
|-------------------|-----------------------------------------------------------------------------------------------------------------------------------------------|
| Slot              | Description                                                                                                                                   |
| Default (unnamed) | A slot for adding `calcite-table-row` elements containing `calcite-table-cell` and/or `calcite-table-header` elements.                        |
| table-header      | A slot for adding `calcite-table-row` elements containing `calcite-table-header` elements.                                                    |
| table-footer      | A slot for adding `calcite-table-row` elements containing `calcite-table-cell` and/or `calcite-table-header` elements.                        |
| selection-actions | A slot for adding `calcite-actions` or other elements to display when `selectionMode` is not `"none"` and `selectionDisplay` is not `"none"`. |

## References

[Official
Documentation](https://developers.arcgis.com/calcite-design-system/components/table/)

## Examples

``` r
calcite_table()
#> <calcite-table></calcite-table>
```
