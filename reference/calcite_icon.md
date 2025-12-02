# Create a Icon component

Create a Icon component

## Usage

``` r
calcite_icon(...)
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

|           |            |                                                                                                  |                   |                       |
|-----------|------------|--------------------------------------------------------------------------------------------------|-------------------|-----------------------|
| Name      | Attribute  | Description                                                                                      | Values            | Reflects to Attribute |
| flipRtl   | flip-rtl   | When `true`, the icon will be flipped when the element direction is right-to-left (`"rtl"`).     | boolean           | TRUE                  |
| icon      | icon       | Displays a specific icon.                                                                        | string            | TRUE                  |
| preload   | preload    | When true, it loads preloads the icon data.                                                      | boolean           | TRUE                  |
| scale     | scale      | Specifies the size of the component.                                                             | "l" \| "m" \| "s" | TRUE                  |
| textLabel | text-label | Accessible name for the component. It is recommended to set this value if your icon is semantic. | string            | FALSE                 |

## References

[Official
Documentation](https://developers.arcgis.com/calcite-design-system/components/icon/)

## Examples

``` r
calcite_icon()
#> <calcite-icon></calcite-icon>
```
