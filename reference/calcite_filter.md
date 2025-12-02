# Create a Filter component

Create a Filter component

## Usage

``` r
calcite_filter(...)
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

|                  |             |                                                                                                                                                                                                                                             |                     |                       |
|------------------|-------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|---------------------|-----------------------|
| Name             | Attribute   | Description                                                                                                                                                                                                                                 | Values              | Reflects to Attribute |
| disabled         | disabled    | When `true`, interaction is prevented and the component is displayed with lower opacity.                                                                                                                                                    | boolean             | TRUE                  |
| filteredItems    | NA          | The component's resulting items after filtering.                                                                                                                                                                                            | Check API reference | FALSE                 |
| filterProps      | NA          | Specifies the properties to match against when filtering. This will only apply when `value` is an object. If not set, all properties will be matched.                                                                                       | Check API reference | FALSE                 |
| items            | NA          | Defines the items to filter. The component uses the values as the starting point, and returns items that contain the string entered in the input, using a partial match and recursive search. This property is needed to conduct filtering. | Check API reference | FALSE                 |
| label            | label       | Specifies an accessible name for the component.                                                                                                                                                                                             | string              | FALSE                 |
| messageOverrides | NA          | Use this property to override individual strings used by the component.                                                                                                                                                                     | Check API reference | FALSE                 |
| placeholder      | placeholder | Specifies placeholder text for the input element.                                                                                                                                                                                           | string              | FALSE                 |
| scale            | scale       | Specifies the size of the component.                                                                                                                                                                                                        | "l" \| "m" \| "s"   | TRUE                  |
| value            | value       | The component's value.                                                                                                                                                                                                                      | string              | FALSE                 |

### Events

The following events are observed by shiny:

|                     |                                     |
|---------------------|-------------------------------------|
| Event               | Description                         |
| calciteFilterChange | Fires when the filter text changes. |

## References

[Official
Documentation](https://developers.arcgis.com/calcite-design-system/components/filter/)

## Examples

``` r
calcite_filter()
#> <calcite-filter></calcite-filter>
```
