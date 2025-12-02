# Create a Tabs component

Create a Tabs component

## Usage

``` r
calcite_tabs(...)
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

|          |           |                                                                                                                                                    |                      |                       |
|----------|-----------|----------------------------------------------------------------------------------------------------------------------------------------------------|----------------------|-----------------------|
| Name     | Attribute | Description                                                                                                                                        | Values               | Reflects to Attribute |
| bordered | bordered  | When `true`, the component will display with a folder style menu.                                                                                  | boolean              | FALSE                 |
| layout   | layout    | Specifies the layout of the `calcite-tab-nav`, justifying the `calcite-tab-title`s to the start (`"inline"`), or across and centered (`"center"`). | "center" \| "inline" | TRUE                  |
| position | position  | Specifies the position of `calcite-tab-nav` and `calcite-tab-title` components in relation to the `calcite-tabs`.                                  | "bottom" \| "top"    | TRUE                  |
| scale    | scale     | Specifies the size of the component.                                                                                                               | "l" \| "m" \| "s"    | TRUE                  |

### Slots

The following slots are provided by this component:

|                   |                                        |
|-------------------|----------------------------------------|
| Slot              | Description                            |
| Default (unnamed) | A slot for adding `calcite-tab`s.      |
| title-group       | A slot for adding a `calcite-tab-nav`. |

## References

[Official
Documentation](https://developers.arcgis.com/calcite-design-system/components/tabs/)

## Examples

``` r
calcite_tabs()
#> <calcite-tabs></calcite-tabs>
```
