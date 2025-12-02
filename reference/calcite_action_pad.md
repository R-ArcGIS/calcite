# Create a ActionPad component

Create a ActionPad component

## Usage

``` r
calcite_action_pad(...)
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

|                      |                         |                                                                                                                                                                                                                                                                                                                                                                             |                                      |                       |
|----------------------|-------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|--------------------------------------|-----------------------|
| Name                 | Attribute               | Description                                                                                                                                                                                                                                                                                                                                                                 | Values                               | Reflects to Attribute |
| actionsEndGroupLabel | actions-end-group-label | Specifies the accessible label for the last `calcite-action-group`.                                                                                                                                                                                                                                                                                                         | string                               | FALSE                 |
| expandDisabled       | expand-disabled         | When `true`, the expand-toggling behavior is disabled.                                                                                                                                                                                                                                                                                                                      | boolean                              | TRUE                  |
| expanded             | expanded                | When `true`, the component is expanded.                                                                                                                                                                                                                                                                                                                                     | boolean                              | TRUE                  |
| layout               | layout                  | Indicates the layout of the component.                                                                                                                                                                                                                                                                                                                                      | "grid" \| "horizontal" \| "vertical" | TRUE                  |
| messageOverrides     | NA                      | Use this property to override individual strings used by the component.                                                                                                                                                                                                                                                                                                     | Check API reference                  | FALSE                 |
| overlayPositioning   | overlay-positioning     | Determines the type of positioning to use for the overlaid content. Using `"absolute"` will work for most cases. The component will be positioned inside of overflowing parent containers and will affect the container's layout. `"fixed"` should be used to escape an overflowing parent container, or when the reference element's `position` CSS property is `"fixed"`. | "absolute" \| "fixed"                | TRUE                  |
| position             | position                | Arranges the component depending on the element's `dir` property.                                                                                                                                                                                                                                                                                                           | "end" \| "start"                     | TRUE                  |
| scale                | scale                   | Specifies the size of the expand `calcite-action`.                                                                                                                                                                                                                                                                                                                          | "l" \| "m" \| "s"                    | TRUE                  |

### Events

The following events are observed by shiny:

|                        |                                                |
|------------------------|------------------------------------------------|
| Event                  | Description                                    |
| calciteActionPadToggle | Fires when the `expanded` property is toggled. |

### Slots

The following slots are provided by this component:

|                   |                                                            |
|-------------------|------------------------------------------------------------|
| Slot              | Description                                                |
| Default (unnamed) | A slot for adding `calcite-action`s to the component.      |
| expand-tooltip    | A slot to set the `calcite-tooltip` for the expand toggle. |

## References

[Official
Documentation](https://developers.arcgis.com/calcite-design-system/components/action-pad/)

## Examples

``` r
calcite_action_pad()
#> <calcite-action-pad></calcite-action-pad>
```
