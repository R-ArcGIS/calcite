# Create a Accordion component

Create a Accordion component

## Usage

``` r
calcite_accordion(...)
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

|               |                |                                                                                                                                                                                                                  |                                            |                       |
|---------------|----------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|--------------------------------------------|-----------------------|
| Name          | Attribute      | Description                                                                                                                                                                                                      | Values                                     | Reflects to Attribute |
| appearance    | appearance     | Specifies the appearance of the component.                                                                                                                                                                       | "solid" \| "transparent"                   | TRUE                  |
| iconPosition  | icon-position  | Specifies the placement of the icon in the header.                                                                                                                                                               | "end" \| "start"                           | TRUE                  |
| iconType      | icon-type      | Specifies the type of the icon in the header.                                                                                                                                                                    | "caret" \| "chevron" \| "plus-minus"       | TRUE                  |
| scale         | scale          | Specifies the size of the component.                                                                                                                                                                             | "l" \| "m" \| "s"                          | TRUE                  |
| selectionMode | selection-mode | Specifies the selection mode of the component, where: `"multiple"` allows any number of selections, `"single"` allows only one selection, and `"single-persist"` allows one selection and prevents de-selection. | "multiple" \| "single" \| "single-persist" | TRUE                  |

### Slots

The following slots are provided by this component:

|                   |                                                                                                                           |
|-------------------|---------------------------------------------------------------------------------------------------------------------------|
| Slot              | Description                                                                                                               |
| Default (unnamed) | A slot for adding `calcite-accordion-item`s. `calcite-accordion` cannot be nested, however `calcite-accordion-item`s can. |

## References

[Official
Documentation](https://developers.arcgis.com/calcite-design-system/components/accordion/)

## Examples

``` r
calcite_accordion()
#> <calcite-accordion></calcite-accordion>
```
