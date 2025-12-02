# Create a TipManager component

Use the `calcite-carousel` and `calcite-carousel-item` components
instead.

## Usage

``` r
calcite_tip_manager(...)
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

|                  |               |                                                                                                                           |                            |                       |
|------------------|---------------|---------------------------------------------------------------------------------------------------------------------------|----------------------------|-----------------------|
| Name             | Attribute     | Description                                                                                                               | Values                     | Reflects to Attribute |
| closed           | closed        | When `true`, does not display or position the component.                                                                  | boolean                    | TRUE                  |
| headingLevel     | heading-level | Specifies the heading level of the component's `heading` for proper document structure, without affecting visual styling. | 1 \| 2 \| 3 \| 4 \| 5 \| 6 | TRUE                  |
| messageOverrides | NA            | Use this property to override individual strings used by the component.                                                   | Check API reference        | FALSE                 |

### Events

The following events are observed by shiny:

|                        |                                           |
|------------------------|-------------------------------------------|
| Event                  | Description                               |
| calciteTipManagerClose | Emits when the component has been closed. |

### Slots

The following slots are provided by this component:

|                   |                                   |
|-------------------|-----------------------------------|
| Slot              | Description                       |
| Default (unnamed) | A slot for adding `calcite-tip`s. |

## References

[Official
Documentation](https://developers.arcgis.com/calcite-design-system/components/tip-manager/)

## Examples

``` r
calcite_tip_manager()
#> <calcite-tip-manager></calcite-tip-manager>
```
