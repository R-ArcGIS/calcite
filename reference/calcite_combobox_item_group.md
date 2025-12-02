# Create a ComboboxItemGroup component

Create a ComboboxItemGroup component

## Usage

``` r
calcite_combobox_item_group(...)
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

|           |           |                                                                                                     |                     |                       |
|-----------|-----------|-----------------------------------------------------------------------------------------------------|---------------------|-----------------------|
| Name      | Attribute | Description                                                                                         | Values              | Reflects to Attribute |
| ancestors | NA        | Specifies the parent and grandparent `calcite-combobox-item`s, which are set on `calcite-combobox`. | Check API reference | FALSE                 |
| label     | label     | Specifies the title of the component.                                                               | string              | FALSE                 |

### Slots

The following slots are provided by this component:

|                   |                                             |
|-------------------|---------------------------------------------|
| Slot              | Description                                 |
| Default (unnamed) | A slot for adding `calcite-combobox-item`s. |

## References

[Official
Documentation](https://developers.arcgis.com/calcite-design-system/components/combobox-item-group/)

## Examples

``` r
calcite_combobox_item_group()
#> <calcite-combobox-item-group></calcite-combobox-item-group>
```
