# Create a ShellCenterRow component

Use the `calcite-shell-panel` component instead.

## Usage

``` r
calcite_shell_center_row(...)
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

|             |              |                                                                                                            |                   |                       |
|-------------|--------------|------------------------------------------------------------------------------------------------------------|-------------------|-----------------------|
| Name        | Attribute    | Description                                                                                                | Values            | Reflects to Attribute |
| detached    | detached     | When `true`, the content area displays like a floating panel.                                              | boolean           | TRUE                  |
| heightScale | height-scale | Specifies the maximum height of the component.                                                             | "l" \| "m" \| "s" | TRUE                  |
| position    | position     | Specifies the component's position. Will be flipped when the element direction is right-to-left (`"rtl"`). | "end" \| "start"  | TRUE                  |

### Slots

The following slots are provided by this component:

|                   |                                                                        |
|-------------------|------------------------------------------------------------------------|
| Slot              | Description                                                            |
| Default (unnamed) | A slot for adding content to the `calcite-shell-panel`.                |
| action-bar        | A slot for adding a `calcite-action-bar` to the `calcite-shell-panel`. |

## References

[Official
Documentation](https://developers.arcgis.com/calcite-design-system/components/shell-center-row/)

## Examples

``` r
calcite_shell_center_row()
#> <calcite-shell-center-row></calcite-shell-center-row>
```
