# Create a ShellPanel component

Create a ShellPanel component

## Usage

``` r
calcite_shell_panel(...)
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

|                  |              |                                                                                                             |                                                                  |                       |
|------------------|--------------|-------------------------------------------------------------------------------------------------------------|------------------------------------------------------------------|-----------------------|
| Name             | Attribute    | Description                                                                                                 | Values                                                           | Reflects to Attribute |
| collapsed        | collapsed    | When `true`, hides the component's content area.                                                            | boolean                                                          | TRUE                  |
| displayMode      | display-mode | Check API reference                                                                                         | "dock" \| "float" \| "float-all" \| "float-content" \| "overlay" | TRUE                  |
| height           | height       | Specifies the height of the component.                                                                      | "l" \| "m" \| "s"                                                | TRUE                  |
| heightScale      | height-scale | When `layout` is `horizontal`, specifies the maximum height of the component.                               | "l" \| "m" \| "s"                                                | TRUE                  |
| layout           | layout       | The direction of the component.                                                                             | "horizontal" \| "vertical"                                       | TRUE                  |
| messageOverrides | NA           | Use this property to override individual strings used by the component.                                     | Check API reference                                              | FALSE                 |
| position         | position     | Specifies the component's position. Will be flipped when the element direction is right-to-left (`"rtl"`).  | "end" \| "start"                                                 | TRUE                  |
| resizable        | resizable    | When `true` and `displayMode` is not `float-content` or `float`, the component's content area is resizable. | boolean                                                          | TRUE                  |
| width            | width        | Specifies the width of the component.                                                                       | "l" \| "m" \| "s"                                                | TRUE                  |
| widthScale       | width-scale  | When `layout` is `vertical`, specifies the width of the component.                                          | "l" \| "m" \| "s"                                                | TRUE                  |

### Slots

The following slots are provided by this component:

|                   |                                                            |
|-------------------|------------------------------------------------------------|
| Slot              | Description                                                |
| Default (unnamed) | A slot for adding custom content.                          |
| action-bar        | A slot for adding a `calcite-action-bar` to the component. |

## References

[Official
Documentation](https://developers.arcgis.com/calcite-design-system/components/shell-panel/)

## Examples

``` r
calcite_shell_panel()
#> <calcite-shell-panel></calcite-shell-panel>
```
