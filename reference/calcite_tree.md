# Create a Tree component

Create a Tree component

## Usage

``` r
calcite_tree(...)
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

|               |                |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |                                                                                                      |                       |
|---------------|----------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|------------------------------------------------------------------------------------------------------|-----------------------|
| Name          | Attribute      | Description                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             | Values                                                                                               | Reflects to Attribute |
| lines         | lines          | When `true`, displays indentation guide lines.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          | boolean                                                                                              | TRUE                  |
| scale         | scale          | Specifies the size of the component.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    | "l" \| "m" \| "s"                                                                                    | TRUE                  |
| selectedItems | NA             | Specifies the component's selected items.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               | Check API reference                                                                                  | FALSE                 |
| selectionMode | selection-mode | Specifies the selection mode of the component, where: `"ancestors"` displays with a checkbox and allows any number of selections from corresponding parent and child selections, `"children"` allows any number of selections from one parent from corresponding parent and child selections, `"multichildren"` allows any number of selections from corresponding parent and child selections, `"multiple"` allows any number of selections, `"none"` allows no selections, `"single"` allows one selection, and `"single-persist"` allows and requires one selection. | "ancestors" \| "children" \| "multichildren" \| "multiple" \| "none" \| "single" \| "single-persist" | TRUE                  |

### Events

The following events are observed by shiny:

|                   |                                                             |
|-------------------|-------------------------------------------------------------|
| Event             | Description                                                 |
| calciteTreeSelect | Fires when the user selects/deselects `calcite-tree-items`. |

### Slots

The following slots are provided by this component:

|                   |                                          |
|-------------------|------------------------------------------|
| Slot              | Description                              |
| Default (unnamed) | A slot for `calcite-tree-item` elements. |

## References

[Official
Documentation](https://developers.arcgis.com/calcite-design-system/components/tree/)

## Examples

``` r
calcite_tree()
#> <calcite-tree></calcite-tree>
```
