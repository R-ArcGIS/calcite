# Create a TableHeader component

Create a TableHeader component

## Usage

``` r
calcite_table_header(...)
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

|                  |             |                                                                         |                              |                       |
|------------------|-------------|-------------------------------------------------------------------------|------------------------------|-----------------------|
| Name             | Attribute   | Description                                                             | Values                       | Reflects to Attribute |
| alignment        | alignment   | Specifies the alignment of the component.                               | "center" \| "end" \| "start" | TRUE                  |
| colSpan          | col-span    | Specifies the number of columns the component should span.              | number                       | TRUE                  |
| description      | description | A description to display beneath heading content.                       | string                       | TRUE                  |
| heading          | heading     | A heading to display above description content.                         | string                       | TRUE                  |
| messageOverrides | NA          | Use this property to override individual strings used by the component. | Check API reference          | FALSE                 |
| rowSpan          | row-span    | Specifies the number of rows the component should span.                 | number                       | TRUE                  |

## References

[Official
Documentation](https://developers.arcgis.com/calcite-design-system/components/table-header/)

## Examples

``` r
calcite_table_header()
#> Error in calcite_table_header(): argument "heading" is missing, with no default
```
