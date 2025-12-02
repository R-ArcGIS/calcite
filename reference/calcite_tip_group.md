# Create a TipGroup component

Use the `calcite-carousel` and `calcite-carousel-item` components
instead.

## Usage

``` r
calcite_tip_group(...)
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

|            |             |                                                          |        |                       |
|------------|-------------|----------------------------------------------------------|--------|-----------------------|
| Name       | Attribute   | Description                                              | Values | Reflects to Attribute |
| groupTitle | group-title | The component header text for all nested `calcite-tip`s. | string | FALSE                 |

### Slots

The following slots are provided by this component:

|                   |                                   |
|-------------------|-----------------------------------|
| Slot              | Description                       |
| Default (unnamed) | A slot for adding `calcite-tip`s. |

## References

[Official
Documentation](https://developers.arcgis.com/calcite-design-system/components/tip-group/)

## Examples

``` r
calcite_tip_group()
#> <calcite-tip-group></calcite-tip-group>
```
