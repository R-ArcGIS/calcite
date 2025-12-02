# Create a DropdownGroup component

Create a DropdownGroup component

## Usage

``` r
calcite_dropdown_group(...)
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

|               |                |                                                                                                                                                                                       |                                  |                       |
|---------------|----------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|----------------------------------|-----------------------|
| Name          | Attribute      | Description                                                                                                                                                                           | Values                           | Reflects to Attribute |
| groupTitle    | group-title    | Specifies and displays a group title.                                                                                                                                                 | string                           | TRUE                  |
| selectionMode | selection-mode | Specifies the selection mode of the component, where: `"multiple"` allows any number of selections, `"single"` allows only one selection, and `"none"` does not allow any selections. | "multiple" \| "none" \| "single" | TRUE                  |

### Slots

The following slots are provided by this component:

|                   |                                             |
|-------------------|---------------------------------------------|
| Slot              | Description                                 |
| Default (unnamed) | A slot for adding `calcite-dropdown-item`s. |

## References

[Official
Documentation](https://developers.arcgis.com/calcite-design-system/components/dropdown-group/)

## Examples

``` r
calcite_dropdown_group()
#> <calcite-dropdown-group></calcite-dropdown-group>
```
