# Create a Shell component

Create a Shell component

## Usage

``` r
calcite_shell(...)
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

|               |                |                                                                 |         |                       |
|---------------|----------------|-----------------------------------------------------------------|---------|-----------------------|
| Name          | Attribute      | Description                                                     | Values  | Reflects to Attribute |
| contentBehind | content-behind | Positions the center content behind any `calcite-shell-panel`s. | boolean | TRUE                  |

### Slots

The following slots are provided by this component:

|                   |                                                                                                                                                        |
|-------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------|
| Slot              | Description                                                                                                                                            |
| Default (unnamed) | A slot for adding custom content. This content will appear between any leading and trailing panels added to the component, such as a map.              |
| header            | A slot for adding header content. This content will be positioned at the top of the component.                                                         |
| footer            | A slot for adding footer content. This content will be positioned at the bottom of the component.                                                      |
| panel-start       | A slot for adding the starting `calcite-shell-panel`.                                                                                                  |
| panel-end         | A slot for adding the ending `calcite-shell-panel`.                                                                                                    |
| panel-top         | A slot for adding the top `calcite-shell-panel`.                                                                                                       |
| panel-bottom      | A slot for adding the bottom `calcite-shell-panel`.                                                                                                    |
| center-row        | [Deprecated](https://rdrr.io/r/base/Deprecated.html) Use the `"panel-bottom"` slot instead. A slot for adding the bottom `calcite-shell-center-row`.   |
| modals            | A slot for adding `calcite-modal` components. When placed in this slot, the modal position will be constrained to the extent of the `calcite-shell`.   |
| dialogs           | A slot for adding `calcite-dialog` components. When placed in this slot, the dialog position will be constrained to the extent of the `calcite-shell`. |
| alerts            | A slot for adding `calcite-alert` components. When placed in this slot, the alert position will be constrained to the extent of the `calcite-shell`.   |
| sheets            | A slot for adding `calcite-sheet` components. When placed in this slot, the sheet position will be constrained to the extent of the `calcite-shell`.   |

## References

[Official
Documentation](https://developers.arcgis.com/calcite-design-system/components/shell/)

## Examples

``` r
calcite_shell()
#> <calcite-shell></calcite-shell>
```
