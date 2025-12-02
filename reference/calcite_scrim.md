# Create a Scrim component

Create a Scrim component

## Usage

``` r
calcite_scrim(...)
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

|                  |           |                                                                         |                     |                       |
|------------------|-----------|-------------------------------------------------------------------------|---------------------|-----------------------|
| Name             | Attribute | Description                                                             | Values              | Reflects to Attribute |
| loading          | loading   | When `true`, a busy indicator is displayed.                             | boolean             | TRUE                  |
| messageOverrides | NA        | Use this property to override individual strings used by the component. | Check API reference | FALSE                 |

### Slots

The following slots are provided by this component:

|                   |                                                                  |
|-------------------|------------------------------------------------------------------|
| Slot              | Description                                                      |
| Default (unnamed) | A slot for adding custom content, primarily loading information. |

## References

[Official
Documentation](https://developers.arcgis.com/calcite-design-system/components/scrim/)

## Examples

``` r
calcite_scrim()
#> <calcite-scrim></calcite-scrim>
```
