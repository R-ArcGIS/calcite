# Create a Card component

Create a Card component

## Usage

``` r
calcite_card(...)
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

|                   |                    |                                                                                          |                                                                |                       |
|-------------------|--------------------|------------------------------------------------------------------------------------------|----------------------------------------------------------------|-----------------------|
| Name              | Attribute          | Description                                                                              | Values                                                         | Reflects to Attribute |
| disabled          | disabled           | When `true`, interaction is prevented and the component is displayed with lower opacity. | boolean                                                        | TRUE                  |
| label             | label              | Accessible name for the component.                                                       | string                                                         | FALSE                 |
| loading           | loading            | When `true`, a busy indicator is displayed.                                              | boolean                                                        | TRUE                  |
| messageOverrides  | NA                 | Use this property to override individual strings used by the component.                  | Check API reference                                            | FALSE                 |
| selectable        | selectable         | When `true`, the component is selectable.                                                | boolean                                                        | TRUE                  |
| selected          | selected           | When `true`, the component is selected.                                                  | boolean                                                        | TRUE                  |
| thumbnailPosition | thumbnail-position | Sets the placement of the thumbnail defined in the `thumbnail` slot.                     | "block-end" \| "block-start" \| "inline-end" \| "inline-start" | TRUE                  |

### Events

The following events are observed by shiny:

|                   |                                                                                                                                                    |
|-------------------|----------------------------------------------------------------------------------------------------------------------------------------------------|
| Event             | Description                                                                                                                                        |
| calciteCardSelect | Fires when the deprecated `selectable` is true, or `selectionMode` set on parent `calcite-card-group` is not `none` and the component is selected. |

### Slots

The following slots are provided by this component:

|                   |                                                                                                                  |
|-------------------|------------------------------------------------------------------------------------------------------------------|
| Slot              | Description                                                                                                      |
| Default (unnamed) | A slot for adding content.                                                                                       |
| title             | [Deprecated](https://rdrr.io/r/base/Deprecated.html) use `heading` instead. A slot for adding a heading.         |
| subtitle          | [Deprecated](https://rdrr.io/r/base/Deprecated.html) use `description` instead. A slot for adding a description. |
| thumbnail         | A slot for adding a thumbnail.                                                                                   |
| heading           | A slot for adding a heading.                                                                                     |
| description       | A slot for adding a description.                                                                                 |
| footer-start      | A slot for adding a leading footer.                                                                              |
| footer-end        | A slot for adding a trailing footer.                                                                             |

## References

[Official
Documentation](https://developers.arcgis.com/calcite-design-system/components/card/)

## Examples

``` r
calcite_card()
#> <calcite-card></calcite-card>
```
