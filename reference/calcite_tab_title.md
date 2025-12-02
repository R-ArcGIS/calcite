# Create a TabTitle component

Create a TabTitle component

## Usage

``` r
calcite_tab_title(...)
```

## Arguments

- ...:

  named attributes passed to
  [`htmltools::tag()`](https://rstudio.github.io/htmltools/reference/builder.html)

## Value

an object of class `calcite_component` which is a subclass of
`shiny.tag`

## Details

Tab-titles are optionally individually closable.

### Properties

The following properties are provided by this component:

|                  |               |                                                                                                                                                                                |                            |                       |
|------------------|---------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|----------------------------|-----------------------|
| Name             | Attribute     | Description                                                                                                                                                                    | Values                     | Reflects to Attribute |
| closable         | closable      | When `true`, a close button is added to the component.                                                                                                                         | boolean                    | TRUE                  |
| closed           | closed        | When `true`, does not display or position the component.                                                                                                                       | boolean                    | TRUE                  |
| disabled         | disabled      | When `true`, interaction is prevented and the component is displayed with lower opacity.                                                                                       | boolean                    | TRUE                  |
| iconEnd          | icon-end      | Specifies an icon to display at the end of the component.                                                                                                                      | string                     | TRUE                  |
| iconFlipRtl      | icon-flip-rtl | Displays the `iconStart` and/or `iconEnd` as flipped when the element direction is right-to-left (`"rtl"`).                                                                    | "both" \| "end" \| "start" | TRUE                  |
| iconStart        | icon-start    | Specifies an icon to display at the start of the component.                                                                                                                    | string                     | TRUE                  |
| messageOverrides | NA            | Use this property to override individual strings used by the component.                                                                                                        | Check API reference        | FALSE                 |
| position         | position      | Specifies the position of `calcite-tab-nav` and `calcite-tab-title` components in relation to, and is inherited from the parent `calcite-tabs`, defaults to `top`. `@internal` | "bottom" \| "top"          | FALSE                 |
| selected         | selected      | When `true`, the component and its respective `calcite-tab` contents are selected. Only one tab can be selected within the `calcite-tabs` parent.                              | boolean                    | TRUE                  |
| tab              | tab           | Specifies a unique name for the component. When specified, use the same value on the `calcite-tab`.                                                                            | string                     | TRUE                  |

### Events

The following events are observed by shiny:

|                     |                                         |
|---------------------|-----------------------------------------|
| Event               | Description                             |
| calciteTabsActivate | Fires when a `calcite-tab` is selected. |
| calciteTabsClose    | Fires when a `calcite-tab` is closed.   |

### Slots

The following slots are provided by this component:

|                   |                         |
|-------------------|-------------------------|
| Slot              | Description             |
| Default (unnamed) | A slot for adding text. |

## References

[Official
Documentation](https://developers.arcgis.com/calcite-design-system/components/tab-title/)

## Examples

``` r
calcite_tab_title()
#> <calcite-tab-title></calcite-tab-title>
```
