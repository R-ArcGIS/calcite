# Create a Fab component

Create a Fab component

## Usage

``` r
calcite_fab(...)
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

|             |               |                                                                                              |                                               |                       |
|-------------|---------------|----------------------------------------------------------------------------------------------|-----------------------------------------------|-----------------------|
| Name        | Attribute     | Description                                                                                  | Values                                        | Reflects to Attribute |
| appearance  | appearance    | Specifies the appearance style of the component.                                             | "outline-fill" \| "solid"                     | TRUE                  |
| disabled    | disabled      | When `true`, interaction is prevented and the component is displayed with lower opacity.     | boolean                                       | TRUE                  |
| icon        | icon          | Specifies an icon to display.                                                                | string                                        | TRUE                  |
| iconFlipRtl | icon-flip-rtl | When `true`, the icon will be flipped when the element direction is right-to-left (`"rtl"`). | boolean                                       | TRUE                  |
| kind        | kind          | Specifies the kind of the component, which will apply to border and background.              | "brand" \| "danger" \| "inverse" \| "neutral" | TRUE                  |
| label       | label         | Accessible name for the component.                                                           | string                                        | FALSE                 |
| loading     | loading       | When `true`, a busy indicator is displayed.                                                  | boolean                                       | TRUE                  |
| scale       | scale         | Specifies the size of the component.                                                         | "l" \| "m" \| "s"                             | TRUE                  |
| text        | text          | Specifies text to accompany the component's icon.                                            | string                                        | FALSE                 |
| textEnabled | text-enabled  | When `true`, displays the `text` value in the component.                                     | boolean                                       | TRUE                  |

## References

[Official
Documentation](https://developers.arcgis.com/calcite-design-system/components/fab/)

## Examples

``` r
calcite_fab()
#> <calcite-fab></calcite-fab>
```
