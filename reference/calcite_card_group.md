# Create a CardGroup component

Create a CardGroup component

## Usage

``` r
calcite_card_group(...)
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

|               |                |                                                                                          |                                                      |                       |
|---------------|----------------|------------------------------------------------------------------------------------------|------------------------------------------------------|-----------------------|
| Name          | Attribute      | Description                                                                              | Values                                               | Reflects to Attribute |
| disabled      | disabled       | When `true`, interaction is prevented and the component is displayed with lower opacity. | boolean                                              | TRUE                  |
| label         | label          | Accessible name for the component.                                                       | string                                               | FALSE                 |
| selectedItems | NA             | Specifies the component's selected items.                                                | Check API reference                                  | FALSE                 |
| selectionMode | selection-mode | Specifies the selection mode of the component.                                           | "multiple" \| "none" \| "single" \| "single-persist" | TRUE                  |

### Events

The following events are observed by shiny:

|                        |                                                                                     |
|------------------------|-------------------------------------------------------------------------------------|
| Event                  | Description                                                                         |
| calciteCardGroupSelect | Emits when the component's selection changes and the `selectionMode` is not `none`. |

### Slots

The following slots are provided by this component:

|                   |                                                |
|-------------------|------------------------------------------------|
| Slot              | Description                                    |
| Default (unnamed) | A slot for adding one or more `calcite-card`s. |

## References

[Official
Documentation](https://developers.arcgis.com/calcite-design-system/components/card-group/)

## Examples

``` r
calcite_card_group()
#> <calcite-card-group></calcite-card-group>
```
