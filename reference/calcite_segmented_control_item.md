# Create a SegmentedControlItem component

Create a SegmentedControlItem component

## Usage

``` r
calcite_segmented_control_item(...)
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

|             |               |                                                                                              |         |                       |
|-------------|---------------|----------------------------------------------------------------------------------------------|---------|-----------------------|
| Name        | Attribute     | Description                                                                                  | Values  | Reflects to Attribute |
| checked     | checked       | When `true`, the component is checked.                                                       | boolean | TRUE                  |
| iconEnd     | icon-end      | Specifies an icon to display at the end of the component.                                    | string  | TRUE                  |
| iconFlipRtl | icon-flip-rtl | When `true`, the icon will be flipped when the element direction is right-to-left (`"rtl"`). | boolean | TRUE                  |
| iconStart   | icon-start    | Specifies an icon to display at the start of the component.                                  | string  | TRUE                  |
| value       | value         | The component's value.                                                                       | any     | FALSE                 |

## References

[Official
Documentation](https://developers.arcgis.com/calcite-design-system/components/segmented-control-item/)

## Examples

``` r
calcite_segmented_control_item()
#> <calcite-segmented-control-item></calcite-segmented-control-item>
```
