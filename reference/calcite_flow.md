# Create a Flow component

Create a Flow component

## Usage

``` r
calcite_flow(...)
```

## Arguments

- ...:

  named attributes passed to
  [`htmltools::tag()`](https://rstudio.github.io/htmltools/reference/builder.html)

## Value

an object of class `calcite_component` which is a subclass of
`shiny.tag`

## Details

### Slots

The following slots are provided by this component:

|                   |                                                                  |
|-------------------|------------------------------------------------------------------|
| Slot              | Description                                                      |
| Default (unnamed) | A slot for adding `calcite-flow-item` elements to the component. |

## References

[Official
Documentation](https://developers.arcgis.com/calcite-design-system/components/flow/)

## Examples

``` r
calcite_flow()
#> <calcite-flow></calcite-flow>
```
