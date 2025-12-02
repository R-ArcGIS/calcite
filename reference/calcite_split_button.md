# Create a SplitButton component

Create a SplitButton component

## Usage

``` r
calcite_split_button(...)
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

|                    |                       |                                                                                                                                                                                                                                                                                                                                                                             |                                                                                 |                       |
|--------------------|-----------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|---------------------------------------------------------------------------------|-----------------------|
| Name               | Attribute             | Description                                                                                                                                                                                                                                                                                                                                                                 | Values                                                                          | Reflects to Attribute |
| appearance         | appearance            | Specifies the appearance style of the component.                                                                                                                                                                                                                                                                                                                            | "outline" \| "outline-fill" \| "solid" \| "transparent"                         | TRUE                  |
| disabled           | disabled              | When `true`, interaction is prevented and the component is displayed with lower opacity.                                                                                                                                                                                                                                                                                    | boolean                                                                         | TRUE                  |
| dropdownIconType   | dropdown-icon-type    | Specifies the icon used for the dropdown menu.                                                                                                                                                                                                                                                                                                                              | "caret" \| "chevron" \| "ellipsis" \| "overflow"                                | TRUE                  |
| dropdownLabel      | dropdown-label        | Accessible name for the dropdown menu.                                                                                                                                                                                                                                                                                                                                      | string                                                                          | TRUE                  |
| flipPlacements     | NA                    | Specifies the component's fallback slotted content `placement` when it's initial or specified `placement` has insufficient space available.                                                                                                                                                                                                                                 | Check API reference                                                             | FALSE                 |
| kind               | kind                  | Specifies the kind of the component, which will apply to border and background, if applicable.                                                                                                                                                                                                                                                                              | "brand" \| "danger" \| "inverse" \| "neutral"                                   | TRUE                  |
| loading            | loading               | When `true`, a busy indicator is displayed on the primary button.                                                                                                                                                                                                                                                                                                           | boolean                                                                         | TRUE                  |
| overlayPositioning | overlay-positioning   | Determines the type of positioning to use for the overlaid content. Using `"absolute"` will work for most cases. The component will be positioned inside of overflowing parent containers and will affect the container's layout. `"fixed"` should be used to escape an overflowing parent container, or when the reference element's `position` CSS property is `"fixed"`. | "absolute" \| "fixed"                                                           | TRUE                  |
| placement          | placement             | Determines where the component will be positioned relative to the container element.                                                                                                                                                                                                                                                                                        | "bottom" \| "bottom-end" \| "bottom-start" \| "top" \| "top-end" \| "top-start" | TRUE                  |
| primaryIconEnd     | primary-icon-end      | Specifies an icon to display at the end of the primary button.                                                                                                                                                                                                                                                                                                              | string                                                                          | TRUE                  |
| primaryIconFlipRtl | primary-icon-flip-rtl | Displays the `primaryIconStart` and/or `primaryIconEnd` as flipped when the element direction is right-to-left (`"rtl"`).                                                                                                                                                                                                                                                   | "both" \| "end" \| "start"                                                      | TRUE                  |
| primaryIconStart   | primary-icon-start    | Specifies an icon to display at the start of the primary button.                                                                                                                                                                                                                                                                                                            | string                                                                          | TRUE                  |
| primaryLabel       | primary-label         | Accessible name for the primary button.                                                                                                                                                                                                                                                                                                                                     | string                                                                          | TRUE                  |
| primaryText        | primary-text          | Text displayed in the primary button.                                                                                                                                                                                                                                                                                                                                       | string                                                                          | TRUE                  |
| scale              | scale                 | Specifies the size of the component.                                                                                                                                                                                                                                                                                                                                        | "l" \| "m" \| "s"                                                               | TRUE                  |
| width              | width                 | Check API reference                                                                                                                                                                                                                                                                                                                                                         | "auto" \| "full" \| "half"                                                      | TRUE                  |

### Events

The following events are observed by shiny:

|                                  |                                           |
|----------------------------------|-------------------------------------------|
| Event                            | Description                               |
| calciteSplitButtonPrimaryClick   | Fires when the primary button is clicked. |
| calciteSplitButtonSecondaryClick | Fires when the dropdown menu is clicked.  |

### Slots

The following slots are provided by this component:

|                   |                                               |
|-------------------|-----------------------------------------------|
| Slot              | Description                                   |
| Default (unnamed) | A slot for adding `calcite-dropdown` content. |

## References

[Official
Documentation](https://developers.arcgis.com/calcite-design-system/components/split-button/)

## Examples

``` r
calcite_split_button()
#> <calcite-split-button></calcite-split-button>
```
