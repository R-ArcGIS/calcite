# Create a InputMessage component

Create a InputMessage component

## Usage

``` r
calcite_input_message(...)
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

|             |               |                                                                                              |                                |                       |
|-------------|---------------|----------------------------------------------------------------------------------------------|--------------------------------|-----------------------|
| Name        | Attribute     | Description                                                                                  | Values                         | Reflects to Attribute |
| icon        | icon          | Specifies an icon to display.                                                                | boolean \| string              | TRUE                  |
| iconFlipRtl | icon-flip-rtl | When `true`, the icon will be flipped when the element direction is right-to-left (`"rtl"`). | boolean                        | TRUE                  |
| scale       | scale         | Specifies the size of the component.                                                         | "l" \| "m" \| "s"              | TRUE                  |
| status      | status        | Specifies the status of the input field, which determines message and icons.                 | "idle" \| "invalid" \| "valid" | TRUE                  |

### Slots

The following slots are provided by this component:

|                   |                         |
|-------------------|-------------------------|
| Slot              | Description             |
| Default (unnamed) | A slot for adding text. |

## References

[Official
Documentation](https://developers.arcgis.com/calcite-design-system/components/input-message/)

## Examples

``` r
calcite_input_message()
#> <calcite-input-message></calcite-input-message>
```
