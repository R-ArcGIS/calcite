# Create a CarouselItem component

Create a CarouselItem component

## Usage

``` r
calcite_carousel_item(...)
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

|          |           |                                         |         |                       |
|----------|-----------|-----------------------------------------|---------|-----------------------|
| Name     | Attribute | Description                             | Values  | Reflects to Attribute |
| label    | label     | Accessible name for the component.      | string  | FALSE                 |
| selected | selected  | When `true`, the component is selected. | boolean | TRUE                  |

### Slots

The following slots are provided by this component:

|                   |                            |
|-------------------|----------------------------|
| Slot              | Description                |
| Default (unnamed) | A slot for adding content. |

## References

[Official
Documentation](https://developers.arcgis.com/calcite-design-system/components/carousel-item/)

## Examples

``` r
calcite_carousel_item()
#> <calcite-carousel-item></calcite-carousel-item>
```
