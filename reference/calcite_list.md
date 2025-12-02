# Create a List component

Create a List component

## Usage

``` r
calcite_list(...)
```

## Arguments

- ...:

  named attributes passed to
  [`htmltools::tag()`](https://rstudio.github.io/htmltools/reference/builder.html)

## Value

an object of class `calcite_component` which is a subclass of
`shiny.tag`

## Details

A general purpose list that enables users to construct list items that
conform to Calcite styling.

### Properties

The following properties are provided by this component:

|                     |                      |                                                                                                                                                                                                                                                                                |                                                      |                       |
|---------------------|----------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|------------------------------------------------------|-----------------------|
| Name                | Attribute            | Description                                                                                                                                                                                                                                                                    | Values                                               | Reflects to Attribute |
| canPull             | NA                   | When provided, the method will be called to determine whether the element can move from the list.                                                                                                                                                                              | (detail: ListDragDetail) =\> boolean                 | FALSE                 |
| canPut              | NA                   | When provided, the method will be called to determine whether the element can be added from another list.                                                                                                                                                                      | (detail: ListDragDetail) =\> boolean                 | FALSE                 |
| disabled            | disabled             | When `true`, interaction is prevented and the component is displayed with lower opacity.                                                                                                                                                                                       | boolean                                              | TRUE                  |
| displayMode         | display-mode         | Specifies the nesting behavior of `calcite-list-item`s, where `"flat"` displays `calcite-list-item`s in a uniform list, and `"nested"` displays `calcite-list-item`s under their parent element. The parent component's behavior should follow throughout its child elements.  | "flat" \| "nested"                                   | TRUE                  |
| dragEnabled         | drag-enabled         | When `true`, `calcite-list-item`s are sortable via a draggable button.                                                                                                                                                                                                         | boolean                                              | TRUE                  |
| filteredData        | NA                   | The currently filtered `calcite-list-item` data.                                                                                                                                                                                                                               | Check API reference                                  | FALSE                 |
| filteredItems       | NA                   | The currently filtered `calcite-list-item`s.                                                                                                                                                                                                                                   | Check API reference                                  | FALSE                 |
| filterEnabled       | filter-enabled       | When `true`, an input appears at the top of the component that can be used by end users to filter `calcite-list-item`s.                                                                                                                                                        | boolean                                              | TRUE                  |
| filterLabel         | filter-label         | Specifies an accessible name for the filter input field.                                                                                                                                                                                                                       | string                                               | TRUE                  |
| filterPlaceholder   | filter-placeholder   | Placeholder text for the component's filter input field.                                                                                                                                                                                                                       | string                                               | TRUE                  |
| filterPredicate     | NA                   | Specifies a function to handle filtering.                                                                                                                                                                                                                                      | (item: HTMLCalciteListItemElement) =\> boolean       | FALSE                 |
| filterProps         | NA                   | Specifies the properties to match against when filtering. If not set, all properties will be matched (label, description, metadata, value, group heading).                                                                                                                     | Check API reference                                  | FALSE                 |
| filterText          | filter-text          | Text for the component's filter input field.                                                                                                                                                                                                                                   | string                                               | TRUE                  |
| group               | group                | The list's group identifier. To drag elements from one list into another, both lists must have the same group value.                                                                                                                                                           | string                                               | TRUE                  |
| interactionMode     | interaction-mode     | Specifies the interaction mode of the component. `"interactive"` allows interaction styling and pointer changes on hover `"static"` does not allow interaction styling and pointer changes on hover The `"static"` value should only be used when `selectionMode` is `"none"`. | "interactive" \| "static"                            | TRUE                  |
| label               | label                | Specifies an accessible name for the component. When `dragEnabled` is `true` and multiple list sorting is enabled with `group`, specifies the component's name for dragging between lists.                                                                                     | string                                               | FALSE                 |
| loading             | loading              | When `true`, a busy indicator is displayed.                                                                                                                                                                                                                                    | boolean                                              | TRUE                  |
| messageOverrides    | NA                   | Use this property to override individual strings used by the component.                                                                                                                                                                                                        | Check API reference                                  | FALSE                 |
| numberingSystem     | numbering-system     | Specifies the Unicode numeral system used by the component for localization.                                                                                                                                                                                                   | "arab" \| "arabext" \| "latn"                        | FALSE                 |
| scale               | scale                | Specifies the size of the component.                                                                                                                                                                                                                                           | "l" \| "m" \| "s"                                    | TRUE                  |
| selectedItems       | NA                   | The currently selected items.                                                                                                                                                                                                                                                  | Check API reference                                  | FALSE                 |
| selectionAppearance | selection-appearance | Specifies the selection appearance - `"icon"` (displays a checkmark or dot) or `"border"` (displays a border).                                                                                                                                                                 | "border" \| "icon"                                   | TRUE                  |
| selectionMode       | selection-mode       | Specifies the selection mode of the component, where: `"multiple"` allows any number of selections, `"single"` allows only one selection, `"single-persist"` allows one selection and prevents de-selection, and `"none"` does not allow any selections.                       | "multiple" \| "none" \| "single" \| "single-persist" | TRUE                  |

### Events

The following events are observed by shiny:

|                        |                                                         |
|------------------------|---------------------------------------------------------|
| Event                  | Description                                             |
| calciteListChange      | Fires when the component's selected items have changed. |
| calciteListDragEnd     | Fires when the component's dragging has ended.          |
| calciteListDragStart   | Fires when the component's dragging has started.        |
| calciteListFilter      | Fires when the component's filter has changed.          |
| calciteListOrderChange | Fires when the component's item order changes.          |

### Slots

The following slots are provided by this component:

|                      |                                                                                                 |
|----------------------|-------------------------------------------------------------------------------------------------|
| Slot                 | Description                                                                                     |
| Default (unnamed)    | A slot for adding `calcite-list-item` and `calcite-list-item-group` elements.                   |
| filter-actions-start | A slot for adding actionable `calcite-action` elements before the filter component.             |
| filter-actions-end   | A slot for adding actionable `calcite-action` elements after the filter component.              |
| filter-no-results    | When `filterEnabled` is `true`, a slot for adding content to display when no results are found. |

## References

[Official
Documentation](https://developers.arcgis.com/calcite-design-system/components/list/)

## Examples

``` r
calcite_list()
#> <calcite-list></calcite-list>
```
