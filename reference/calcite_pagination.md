# Create a Pagination component

Create a Pagination component

## Usage

``` r
calcite_pagination(...)
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

|                  |                  |                                                                                                                   |                               |                       |
|------------------|------------------|-------------------------------------------------------------------------------------------------------------------|-------------------------------|-----------------------|
| Name             | Attribute        | Description                                                                                                       | Values                        | Reflects to Attribute |
| groupSeparator   | group-separator  | When `true`, number values are displayed with a group separator corresponding to the language and country format. | boolean                       | TRUE                  |
| messageOverrides | NA               | Use this property to override individual strings used by the component.                                           | Check API reference           | FALSE                 |
| numberingSystem  | numbering-system | Specifies the Unicode numeral system used by the component for localization.                                      | "arab" \| "arabext" \| "latn" | FALSE                 |
| pageSize         | page-size        | Specifies the number of items per page.                                                                           | number                        | TRUE                  |
| scale            | scale            | Specifies the size of the component.                                                                              | "l" \| "m" \| "s"             | TRUE                  |
| startItem        | start-item       | Specifies the starting item number.                                                                               | number                        | TRUE                  |
| totalItems       | total-items      | Specifies the total number of items.                                                                              | number                        | TRUE                  |

### Events

The following events are observed by shiny:

|                         |                                       |
|-------------------------|---------------------------------------|
| Event                   | Description                           |
| calcitePaginationChange | Emits when the selected page changes. |

## References

[Official
Documentation](https://developers.arcgis.com/calcite-design-system/components/pagination/)

## Examples

``` r
calcite_pagination()
#> <calcite-pagination></calcite-pagination>
```
