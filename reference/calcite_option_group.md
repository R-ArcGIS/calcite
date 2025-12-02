# Create a OptionGroup component

Create a OptionGroup component

## Usage

``` r
calcite_option_group(...)
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

|          |           |                                                                                          |         |                       |
|----------|-----------|------------------------------------------------------------------------------------------|---------|-----------------------|
| Name     | Attribute | Description                                                                              | Values  | Reflects to Attribute |
| disabled | disabled  | When `true`, interaction is prevented and the component is displayed with lower opacity. | boolean | TRUE                  |
| label    | label     | Accessible name for the component.                                                       | string  | FALSE                 |

### Slots

The following slots are provided by this component:

|                   |                                      |
|-------------------|--------------------------------------|
| Slot              | Description                          |
| Default (unnamed) | A slot for adding `calcite-option`s. |

## References

[Official
Documentation](https://developers.arcgis.com/calcite-design-system/components/option-group/)

## Examples

``` r
calcite_option_group()
#> <calcite-option-group></calcite-option-group>
```
