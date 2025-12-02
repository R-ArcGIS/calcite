# Create a Tooltip component

Create a Tooltip component

## Usage

``` r
calcite_tooltip(...)
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

|                    |                     |                                                                                                                                                                                                                                                                                                                                                                                       |                                                                                                                                                                                                                                                                                                                 |                       |
|--------------------|---------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|-----------------------|
| Name               | Attribute           | Description                                                                                                                                                                                                                                                                                                                                                                           | Values                                                                                                                                                                                                                                                                                                          | Reflects to Attribute |
| closeOnClick       | close-on-click      | Closes the component when the `referenceElement` is clicked.                                                                                                                                                                                                                                                                                                                          | boolean                                                                                                                                                                                                                                                                                                         | TRUE                  |
| label              | label               | Accessible name for the component.                                                                                                                                                                                                                                                                                                                                                    | string                                                                                                                                                                                                                                                                                                          | FALSE                 |
| offsetDistance     | offset-distance     | Offset the position of the component away from the `referenceElement`.                                                                                                                                                                                                                                                                                                                | number                                                                                                                                                                                                                                                                                                          | TRUE                  |
| offsetSkidding     | offset-skidding     | Offset the position of the component along the `referenceElement`.                                                                                                                                                                                                                                                                                                                    | number                                                                                                                                                                                                                                                                                                          | TRUE                  |
| open               | open                | When `true`, the component is open.                                                                                                                                                                                                                                                                                                                                                   | boolean                                                                                                                                                                                                                                                                                                         | TRUE                  |
| overlayPositioning | overlay-positioning | Determines the type of positioning to use for the overlaid content. Using `"absolute"` will work for most cases. The component will be positioned inside of overflowing parent containers and will affect the container's layout. The `"fixed"` value should be used to escape an overflowing parent container, or when the reference element's `position` CSS property is `"fixed"`. | "absolute" \| "fixed"                                                                                                                                                                                                                                                                                           | TRUE                  |
| placement          | placement           | Determines where the component will be positioned relative to the `referenceElement`.                                                                                                                                                                                                                                                                                                 | "auto" \| "auto-end" \| "auto-start" \| "bottom" \| "bottom-end" \| "bottom-start" \| "leading" \| "leading-end" \| "leading-start" \| "left" \| "left-end" \| "left-start" \| "right" \| "right-end" \| "right-start" \| "top" \| "top-end" \| "top-start" \| "trailing" \| "trailing-end" \| "trailing-start" | TRUE                  |
| referenceElement   | reference-element   | The `referenceElement` to position the component according to its `"placement"` value. Setting to the `HTMLElement` is preferred so the component does not need to query the DOM for the `referenceElement`. However, a string ID of the reference element can be used.                                                                                                               | Element \| VirtualElement \| string                                                                                                                                                                                                                                                                             | FALSE                 |

### Events

The following events are observed by shiny:

|                           |                                                                                                          |
|---------------------------|----------------------------------------------------------------------------------------------------------|
| Event                     | Description                                                                                              |
| calciteTooltipBeforeClose | Fires when the component is requested to be closed and before the closing transition begins.             |
| calciteTooltipBeforeOpen  | Fires when the component is added to the DOM but not rendered, and before the opening transition begins. |
| calciteTooltipClose       | Fires when the component is closed and animation is complete.                                            |
| calciteTooltipOpen        | Fires when the component is open and animation is complete.                                              |

### Slots

The following slots are provided by this component:

|                   |                         |
|-------------------|-------------------------|
| Slot              | Description             |
| Default (unnamed) | A slot for adding text. |

## References

[Official
Documentation](https://developers.arcgis.com/calcite-design-system/components/tooltip/)

## Examples

``` r
calcite_tooltip()
#> <calcite-tooltip></calcite-tooltip>
```
