# Create a FlowItem component

Create a FlowItem component

## Usage

``` r
calcite_flow_item(...)
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

|                    |                     |                                                                                                                                                                                                                                                                                                                                                                             |                            |                       |
|--------------------|---------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|----------------------------|-----------------------|
| Name               | Attribute           | Description                                                                                                                                                                                                                                                                                                                                                                 | Values                     | Reflects to Attribute |
| beforeBack         | NA                  | When provided, the method will be called before it is removed from its parent `calcite-flow`.                                                                                                                                                                                                                                                                               | Check API reference        | FALSE                 |
| beforeClose        | NA                  | Passes a function to run before the component closes.                                                                                                                                                                                                                                                                                                                       | Check API reference        | FALSE                 |
| closable           | closable            | When `true`, displays a close button in the trailing side of the component's header.                                                                                                                                                                                                                                                                                        | boolean                    | TRUE                  |
| closed             | closed              | When `true`, the component will be hidden.                                                                                                                                                                                                                                                                                                                                  | boolean                    | TRUE                  |
| collapsed          | collapsed           | When `true`, hides the component's content area.                                                                                                                                                                                                                                                                                                                            | boolean                    | TRUE                  |
| collapsible        | collapsible         | When `true`, the component is collapsible.                                                                                                                                                                                                                                                                                                                                  | boolean                    | TRUE                  |
| description        | description         | A description for the component.                                                                                                                                                                                                                                                                                                                                            | string                     | FALSE                 |
| disabled           | disabled            | When `true`, interaction is prevented and the component is displayed with lower opacity.                                                                                                                                                                                                                                                                                    | boolean                    | TRUE                  |
| heading            | heading             | The component header text.                                                                                                                                                                                                                                                                                                                                                  | string                     | FALSE                 |
| headingLevel       | heading-level       | Specifies the heading level of the component's `heading` for proper document structure, without affecting visual styling.                                                                                                                                                                                                                                                   | 1 \| 2 \| 3 \| 4 \| 5 \| 6 | TRUE                  |
| loading            | loading             | When `true`, a busy indicator is displayed.                                                                                                                                                                                                                                                                                                                                 | boolean                    | TRUE                  |
| menuOpen           | menu-open           | When `true`, the action menu items in the `header-menu-actions` slot are open.                                                                                                                                                                                                                                                                                              | boolean                    | TRUE                  |
| messageOverrides   | NA                  | Use this property to override individual strings used by the component.                                                                                                                                                                                                                                                                                                     | Check API reference        | FALSE                 |
| overlayPositioning | overlay-positioning | Determines the type of positioning to use for the overlaid content. Using `"absolute"` will work for most cases. The component will be positioned inside of overflowing parent containers and will affect the container's layout. `"fixed"` should be used to escape an overflowing parent container, or when the reference element's `position` CSS property is `"fixed"`. | "absolute" \| "fixed"      | TRUE                  |
| scale              | scale               | Specifies the size of the component.                                                                                                                                                                                                                                                                                                                                        | "l" \| "m" \| "s"          | TRUE                  |
| selected           | selected            | When true, flow-item is displayed within a parent flow.                                                                                                                                                                                                                                                                                                                     | boolean                    | TRUE                  |
| showBackButton     | show-back-button    | When `true`, displays a back button in the component's header.                                                                                                                                                                                                                                                                                                              | boolean                    | FALSE                 |

### Events

The following events are observed by shiny:

|                       |                                            |
|-----------------------|--------------------------------------------|
| Event                 | Description                                |
| calciteFlowItemBack   | Fires when the back button is clicked.     |
| calciteFlowItemClose  | Fires when the close button is clicked.    |
| calciteFlowItemScroll | Fires when the content is scrolled.        |
| calciteFlowItemToggle | Fires when the collapse button is clicked. |

### Slots

The following slots are provided by this component:

|                      |                                                                                                                                                      |
|----------------------|------------------------------------------------------------------------------------------------------------------------------------------------------|
| Slot                 | Description                                                                                                                                          |
| Default (unnamed)    | A slot for adding custom content.                                                                                                                    |
| action-bar           | A slot for adding a `calcite-action-bar` to the component.                                                                                           |
| alerts               | A slot for adding `calcite-alert`s to the component.                                                                                                 |
| content-top          | A slot for adding content above the unnamed (default) slot and below the action-bar slot (if populated).                                             |
| content-bottom       | A slot for adding content below the unnamed (default) slot and above the footer slot (if populated)                                                  |
| header-actions-start | A slot for adding `calcite-action`s or content to the start side of the component's header.                                                          |
| header-actions-end   | A slot for adding `calcite-action`s or content to the end side of the component's header.                                                            |
| header-content       | A slot for adding custom content to the component's header.                                                                                          |
| header-menu-actions  | A slot for adding an overflow menu with `calcite-action`s inside a `calcite-dropdown`.                                                               |
| fab                  | A slot for adding a `calcite-fab` (floating action button) to perform an action.                                                                     |
| footer               | A slot for adding custom content to the component's footer. Should not be used with the `"footer-start"` or `"footer-end"` slots.                    |
| footer-actions       | [Deprecated](https://rdrr.io/r/base/Deprecated.html) Use the `"footer"` slot instead. A slot for adding `calcite-button`s to the component's footer. |
| footer-end           | A slot for adding a trailing footer custom content. Should not be used with the `"footer"` slot.                                                     |
| footer-start         | A slot for adding a leading footer custom content. Should not be used with the `"footer"` slot.                                                      |

## References

[Official
Documentation](https://developers.arcgis.com/calcite-design-system/components/flow-item/)

## Examples

``` r
calcite_flow_item()
#> <calcite-flow-item></calcite-flow-item>
```
