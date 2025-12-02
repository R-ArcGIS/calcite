# Create a Tip component

Use the `calcite-card`, `calcite-notice`, `calcite-panel`, or
`calcite-tile` component instead.

## Usage

``` r
calcite_tip(...)
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

|                  |                |                                                                                                                                                        |                            |                       |
|------------------|----------------|--------------------------------------------------------------------------------------------------------------------------------------------------------|----------------------------|-----------------------|
| Name             | Attribute      | Description                                                                                                                                            | Values                     | Reflects to Attribute |
| closed           | closed         | When `true`, the component does not display.                                                                                                           | boolean                    | TRUE                  |
| closeDisabled    | close-disabled | When `true`, the close button is not present on the component.                                                                                         | boolean                    | TRUE                  |
| heading          | heading        | The component header text.                                                                                                                             | string                     | FALSE                 |
| headingLevel     | heading-level  | Specifies the heading level of the component's `heading` for proper document structure, without affecting visual styling.                              | 1 \| 2 \| 3 \| 4 \| 5 \| 6 | TRUE                  |
| messageOverrides | NA             | Use this property to override individual strings used by the component.                                                                                | Check API reference        | FALSE                 |
| selected         | selected       | When `true`, the component is selected if it has a parent `calcite-tip-manager`. Only one tip can be selected within the `calcite-tip-manager` parent. | boolean                    | TRUE                  |

### Events

The following events are observed by shiny:

|                   |                                           |
|-------------------|-------------------------------------------|
| Event             | Description                               |
| calciteTipDismiss | Emits when the component has been closed. |

### Slots

The following slots are provided by this component:

|                   |                                          |
|-------------------|------------------------------------------|
| Slot              | Description                              |
| Default (unnamed) | A slot for adding text and a hyperlink.  |
| thumbnail         | A slot for adding an HTML image element. |

## References

[Official
Documentation](https://developers.arcgis.com/calcite-design-system/components/tip/)

## Examples

``` r
calcite_tip()
#> <calcite-tip></calcite-tip>
```
