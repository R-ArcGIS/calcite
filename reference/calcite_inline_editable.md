# Create a InlineEditable component

Create a InlineEditable component

## Usage

``` r
calcite_inline_editable(...)
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

|                  |                 |                                                                                                                                                              |                     |                       |
|------------------|-----------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------|---------------------|-----------------------|
| Name             | Attribute       | Description                                                                                                                                                  | Values              | Reflects to Attribute |
| afterConfirm     | NA              | Specifies a callback to be executed prior to disabling editing via the controls. When provided, the component's loading state will be handled automatically. | Check API reference | FALSE                 |
| controls         | controls        | When `true` and `editingEnabled` is `true`, displays save and cancel controls on the component.                                                              | boolean             | TRUE                  |
| disabled         | disabled        | When `true`, interaction is prevented and the component is displayed with lower opacity.                                                                     | boolean             | TRUE                  |
| editingEnabled   | editing-enabled | When `true`, inline editing is enabled on the component.                                                                                                     | boolean             | TRUE                  |
| loading          | loading         | When `true`, a busy indicator is displayed.                                                                                                                  | boolean             | TRUE                  |
| messageOverrides | NA              | Use this property to override individual strings used by the component.                                                                                      | Check API reference | FALSE                 |
| scale            | scale           | Specifies the size of the component. Defaults to the scale of the wrapped `calcite-input` or the scale of the closest wrapping component with a set scale.   | "l" \| "m" \| "s"   | TRUE                  |

### Events

The following events are observed by shiny:

|                                  |                                                                |
|----------------------------------|----------------------------------------------------------------|
| Event                            | Description                                                    |
| calciteInlineEditableEditCancel  | Emits when the component's "cancel editing" button is pressed. |
| calciteInlineEditableEditConfirm | Emits when the component's "confirm edits" button is pressed.  |

### Slots

The following slots are provided by this component:

|                   |                                      |
|-------------------|--------------------------------------|
| Slot              | Description                          |
| Default (unnamed) | A slot for adding a `calcite-input`. |

## References

[Official
Documentation](https://developers.arcgis.com/calcite-design-system/components/inline-editable/)

## Examples

``` r
calcite_inline_editable()
#> <calcite-inline-editable></calcite-inline-editable>
```
