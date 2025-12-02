# Create a Tab component

Create a Tab component

## Usage

``` r
calcite_tab(...)
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

|          |           |                                                                                                                    |         |                       |
|----------|-----------|--------------------------------------------------------------------------------------------------------------------|---------|-----------------------|
| Name     | Attribute | Description                                                                                                        | Values  | Reflects to Attribute |
| selected | selected  | When `true`, the component's contents are selected. Only one tab can be selected within the `calcite-tabs` parent. | boolean | TRUE                  |
| tab      | tab       | Specifies a unique name for the component. When specified, use the same value on the `calcite-tab-title`.          | string  | TRUE                  |

### Slots

The following slots are provided by this component:

|                   |                                   |
|-------------------|-----------------------------------|
| Slot              | Description                       |
| Default (unnamed) | A slot for adding custom content. |

## References

[Official
Documentation](https://developers.arcgis.com/calcite-design-system/components/tab/)

## Examples

``` r
calcite_tab()
#> <calcite-tab></calcite-tab>
```
