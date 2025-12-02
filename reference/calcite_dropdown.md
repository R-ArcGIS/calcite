# Create a Dropdown component

Create a Dropdown component

## Usage

``` r
calcite_dropdown(...)
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

|                       |                          |                                                                                                                                                                                                                                                                                                                                                                             |                                                                                 |                       |
|-----------------------|--------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|---------------------------------------------------------------------------------|-----------------------|
| Name                  | Attribute                | Description                                                                                                                                                                                                                                                                                                                                                                 | Values                                                                          | Reflects to Attribute |
| closeOnSelectDisabled | close-on-select-disabled | When `true`, the component will remain open after a selection is made. If the `selectionMode` of the selected `calcite-dropdown-item`'s containing `calcite-dropdown-group` is `"none"`, the component will always close.                                                                                                                                                   | boolean                                                                         | TRUE                  |
| disabled              | disabled                 | When `true`, interaction is prevented and the component is displayed with lower opacity.                                                                                                                                                                                                                                                                                    | boolean                                                                         | TRUE                  |
| flipPlacements        | NA                       | Specifies the component's fallback `calcite-dropdown-item` `placement` when it's initial or specified `placement` has insufficient space available.                                                                                                                                                                                                                         | Check API reference                                                             | FALSE                 |
| maxItems              | max-items                | Specifies the maximum number of `calcite-dropdown-item`s to display before showing a scroller. Value must be greater than `0`, and does not include `groupTitle`'s from `calcite-dropdown-group`.                                                                                                                                                                           | number                                                                          | TRUE                  |
| open                  | open                     | When `true`, displays and positions the component.                                                                                                                                                                                                                                                                                                                          | boolean                                                                         | TRUE                  |
| overlayPositioning    | overlay-positioning      | Determines the type of positioning to use for the overlaid content. Using `"absolute"` will work for most cases. The component will be positioned inside of overflowing parent containers and will affect the container's layout. `"fixed"` should be used to escape an overflowing parent container, or when the reference element's `position` CSS property is `"fixed"`. | "absolute" \| "fixed"                                                           | TRUE                  |
| placement             | placement                | Determines where the component will be positioned relative to the container element.                                                                                                                                                                                                                                                                                        | "bottom" \| "bottom-end" \| "bottom-start" \| "top" \| "top-end" \| "top-start" | TRUE                  |
| scale                 | scale                    | Specifies the size of the component.                                                                                                                                                                                                                                                                                                                                        | "l" \| "m" \| "s"                                                               | TRUE                  |
| selectedItems         | NA                       | Specifies the component's selected items.                                                                                                                                                                                                                                                                                                                                   | Check API reference                                                             | FALSE                 |
| type                  | type                     | Specifies the action to open the component from the container element.                                                                                                                                                                                                                                                                                                      | "click" \| "hover"                                                              | TRUE                  |
| width                 | width                    | Specifies the width of the component.                                                                                                                                                                                                                                                                                                                                       | "l" \| "m" \| "s"                                                               | TRUE                  |
| widthScale            | width-scale              | Specifies the width of the component.                                                                                                                                                                                                                                                                                                                                       | "l" \| "m" \| "s"                                                               | TRUE                  |

### Events

The following events are observed by shiny:

|                            |                                                                                                          |
|----------------------------|----------------------------------------------------------------------------------------------------------|
| Event                      | Description                                                                                              |
| calciteDropdownBeforeClose | Fires when the component is requested to be closed and before the closing transition begins.             |
| calciteDropdownBeforeOpen  | Fires when the component is added to the DOM but not rendered, and before the opening transition begins. |
| calciteDropdownClose       | Fires when the component is closed and animation is complete.                                            |
| calciteDropdownOpen        | Fires when the component is open and animation is complete.                                              |
| calciteDropdownSelect      | Fires when a `calcite-dropdown-item`'s selection changes.                                                |

### Slots

The following slots are provided by this component:

|                   |                                                                                                                                                                               |
|-------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Slot              | Description                                                                                                                                                                   |
| Default (unnamed) | A slot for adding `calcite-dropdown-group` elements. Every `calcite-dropdown-item` must have a parent `calcite-dropdown-group`, even if the `groupTitle` property is not set. |
| trigger           | A slot for the element that triggers the `calcite-dropdown`.                                                                                                                  |

## References

[Official
Documentation](https://developers.arcgis.com/calcite-design-system/components/dropdown/)

## Examples

``` r
calcite_dropdown()
#> <calcite-dropdown></calcite-dropdown>
```
