# Create a Menu component

Create a Menu component

## Usage

``` r
calcite_menu(...)
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

|                  |           |                                                                         |                            |                       |
|------------------|-----------|-------------------------------------------------------------------------|----------------------------|-----------------------|
| Name             | Attribute | Description                                                             | Values                     | Reflects to Attribute |
| label            | label     | Accessible name for the component.                                      | string                     | FALSE                 |
| layout           | layout    | Specifies the layout of the component.                                  | "horizontal" \| "vertical" | TRUE                  |
| messageOverrides | NA        | Use this property to override individual strings used by the component. | Check API reference        | FALSE                 |

## References

[Official
Documentation](https://developers.arcgis.com/calcite-design-system/components/menu/)

## Examples

``` r
calcite_menu()
#> <calcite-menu></calcite-menu>
```
