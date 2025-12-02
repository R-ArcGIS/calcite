# Create a ChipGroup component

Create a ChipGroup component

## Usage

``` r
calcite_chip_group(...)
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

|               |                |                                                                                                                                                                                                                                                          |                                                      |                       |
|---------------|----------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|------------------------------------------------------|-----------------------|
| Name          | Attribute      | Description                                                                                                                                                                                                                                              | Values                                               | Reflects to Attribute |
| disabled      | disabled       | When `true`, interaction is prevented and the component is displayed with lower opacity.                                                                                                                                                                 | boolean                                              | TRUE                  |
| label         | label          | Accessible name for the component.                                                                                                                                                                                                                       | string                                               | FALSE                 |
| scale         | scale          | Specifies the size of the component. Child `calcite-chip`s inherit the component's value.                                                                                                                                                                | "l" \| "m" \| "s"                                    | TRUE                  |
| selectedItems | NA             | Specifies the component's selected items.                                                                                                                                                                                                                | Check API reference                                  | FALSE                 |
| selectionMode | selection-mode | Specifies the selection mode of the component, where: `"multiple"` allows any number of selections, `"single"` allows only one selection, `"single-persist"` allows one selection and prevents de-selection, and `"none"` does not allow any selections. | "multiple" \| "none" \| "single" \| "single-persist" | TRUE                  |

### Events

The following events are observed by shiny:

|                        |                                               |
|------------------------|-----------------------------------------------|
| Event                  | Description                                   |
| calciteChipGroupSelect | Fires when the component's selection changes. |

### Slots

The following slots are provided by this component:

|                   |                                                |
|-------------------|------------------------------------------------|
| Slot              | Description                                    |
| Default (unnamed) | A slot for adding one or more `calcite-chip`s. |

## References

[Official
Documentation](https://developers.arcgis.com/calcite-design-system/components/chip-group/)

## Examples

``` r
calcite_chip_group()
#> <calcite-chip-group></calcite-chip-group>
```
