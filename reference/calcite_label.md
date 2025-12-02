# Create a Label component

Create a Label component

## Usage

``` r
calcite_label(...)
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

|           |           |                                                                                                                                               |                                                 |                       |
|-----------|-----------|-----------------------------------------------------------------------------------------------------------------------------------------------|-------------------------------------------------|-----------------------|
| Name      | Attribute | Description                                                                                                                                   | Values                                          | Reflects to Attribute |
| alignment | alignment | Specifies the text alignment of the component.                                                                                                | "center" \| "end" \| "start"                    | TRUE                  |
| for       | for       | Specifies the `id` of the component the label is bound to. Use when the component the label is bound to does not reside within the component. | string                                          | TRUE                  |
| layout    | layout    | Defines the layout of the label in relation to the component. Use `"inline"` positions to wrap the label and component on the same line.      | "default" \| "inline" \| "inline-space-between" | TRUE                  |
| scale     | scale     | Specifies the size of the component.                                                                                                          | "l" \| "m" \| "s"                               | TRUE                  |

### Slots

The following slots are provided by this component:

|                   |                                                             |
|-------------------|-------------------------------------------------------------|
| Slot              | Description                                                 |
| Default (unnamed) | A slot for adding text and a component that can be labeled. |

## References

[Official
Documentation](https://developers.arcgis.com/calcite-design-system/components/label/)

## Examples

``` r
calcite_label()
#> <calcite-label></calcite-label>
```
