# Create a ActionBar component

Create a ActionBar component

## Usage

``` r
calcite_action_bar(...)
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

|                         |                           |                                                                                                                                                                                                                                                                                                                                                                             |                            |                       |
|-------------------------|---------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|----------------------------|-----------------------|
| Name                    | Attribute                 | Description                                                                                                                                                                                                                                                                                                                                                                 | Values                     | Reflects to Attribute |
| actionsEndGroupLabel    | actions-end-group-label   | Specifies the accessible label for the last `calcite-action-group`.                                                                                                                                                                                                                                                                                                         | string                     | FALSE                 |
| expandDisabled          | expand-disabled           | When `true`, the expand-toggling behavior is disabled.                                                                                                                                                                                                                                                                                                                      | boolean                    | TRUE                  |
| expanded                | expanded                  | When `true`, the component is expanded.                                                                                                                                                                                                                                                                                                                                     | boolean                    | TRUE                  |
| layout                  | layout                    | Specifies the layout direction of the actions.                                                                                                                                                                                                                                                                                                                              | "horizontal" \| "vertical" | TRUE                  |
| messageOverrides        | NA                        | Use this property to override individual strings used by the component.                                                                                                                                                                                                                                                                                                     | Check API reference        | FALSE                 |
| overflowActionsDisabled | overflow-actions-disabled | Disables automatically overflowing `calcite-action`s that won't fit into menus.                                                                                                                                                                                                                                                                                             | boolean                    | TRUE                  |
| overlayPositioning      | overlay-positioning       | Determines the type of positioning to use for the overlaid content. Using `"absolute"` will work for most cases. The component will be positioned inside of overflowing parent containers and will affect the container's layout. `"fixed"` should be used to escape an overflowing parent container, or when the reference element's `position` CSS property is `"fixed"`. | "absolute" \| "fixed"      | TRUE                  |
| position                | position                  | Arranges the component depending on the element's `dir` property.                                                                                                                                                                                                                                                                                                           | "end" \| "start"           | TRUE                  |
| scale                   | scale                     | Specifies the size of the expand `calcite-action`.                                                                                                                                                                                                                                                                                                                          | "l" \| "m" \| "s"          | TRUE                  |

### Events

The following events are observed by shiny:

|                        |                                                |
|------------------------|------------------------------------------------|
| Event                  | Description                                    |
| calciteActionBarToggle | Fires when the `expanded` property is toggled. |

### Slots

The following slots are provided by this component:

|                   |                                                                                                                                                                                                                   |
|-------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Slot              | Description                                                                                                                                                                                                       |
| Default (unnamed) | A slot for adding `calcite-action`s that will appear at the top of the component.                                                                                                                                 |
| bottom-actions    | [Deprecated](https://rdrr.io/r/base/Deprecated.html) Use the `"actions-end"` slot instead. A slot for adding `calcite-action`s that will appear at the bottom of the component, above the collapse/expand button. |
| actions-end       | A slot for adding `calcite-action`s that will appear at the end of the component, prior to the collapse/expand button.                                                                                            |
| expand-tooltip    | A slot to set the `calcite-tooltip` for the expand toggle.                                                                                                                                                        |

## References

[Official
Documentation](https://developers.arcgis.com/calcite-design-system/components/action-bar/)

## Examples

``` r
calcite_action_bar()
#> <calcite-action-bar></calcite-action-bar>
```
