# Create a ColorPicker component

Create a ColorPicker component

## Usage

``` r
calcite_color_picker(...)
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

|                  |                   |                                                                                                                                                                                     |                                                                                                                                          |                       |
|------------------|-------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|------------------------------------------------------------------------------------------------------------------------------------------|-----------------------|
| Name             | Attribute         | Description                                                                                                                                                                         | Values                                                                                                                                   | Reflects to Attribute |
| allowEmpty       | allow-empty       | When `true`, an empty color (`null`) will be allowed as a `value`. When `false`, a color value is enforced, and clearing the input or blurring will restore the last valid `value`. | boolean                                                                                                                                  | TRUE                  |
| alphaChannel     | alpha-channel     | When `true`, the component will allow updates to the color's alpha value.                                                                                                           | boolean                                                                                                                                  | FALSE                 |
| channelsDisabled | channels-disabled | When `true`, hides the RGB/HSV channel inputs.                                                                                                                                      | boolean                                                                                                                                  | FALSE                 |
| clearable        | clearable         | When `true`, an empty color (`null`) will be allowed as a `value`. When `false`, a color value is enforced, and clearing the input or blurring will restore the last valid `value`. | boolean                                                                                                                                  | TRUE                  |
| disabled         | disabled          | When `true`, interaction is prevented and the component is displayed with lower opacity.                                                                                            | boolean                                                                                                                                  | TRUE                  |
| format           | format            | The format of `value`. When `"auto"`, the format will be inferred from `value` when set.                                                                                            | "auto" \| "hex" \| "hexa" \| "hsl" \| "hsl-css" \| "hsla" \| "hsla-css" \| "hsv" \| "hsva" \| "rgb" \| "rgb-css" \| "rgba" \| "rgba-css" | TRUE                  |
| hexDisabled      | hex-disabled      | When `true`, hides the hex input.                                                                                                                                                   | boolean                                                                                                                                  | FALSE                 |
| messageOverrides | NA                | Use this property to override individual strings used by the component.                                                                                                             | Check API reference                                                                                                                      | FALSE                 |
| numberingSystem  | numbering-system  | Specifies the Unicode numeral system used by the component for localization.                                                                                                        | "arab" \| "arabext" \| "latn"                                                                                                            | TRUE                  |
| savedDisabled    | saved-disabled    | When `true`, hides the saved colors section.                                                                                                                                        | boolean                                                                                                                                  | TRUE                  |
| scale            | scale             | Specifies the size of the component.                                                                                                                                                | "l" \| "m" \| "s"                                                                                                                        | TRUE                  |
| storageId        | storage-id        | Specifies the storage ID for colors.                                                                                                                                                | string                                                                                                                                   | TRUE                  |
| value            | value             | The component's value, where the value can be a CSS color string, or a RGB, HSL or HSV object. The type will be preserved as the color is updated.                                  | (HSL & ObjectWithAlpha) \| (HSV & ObjectWithAlpha) \| (RGB & ObjectWithAlpha) \| HSL \| HSV \| RGB \| string                             | FALSE                 |

### Events

The following events are observed by shiny:

|                          |                                                                                                                                                                                                              |
|--------------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Event                    | Description                                                                                                                                                                                                  |
| calciteColorPickerChange | Fires when the color value has changed.                                                                                                                                                                      |
| calciteColorPickerInput  | Fires as the color value changes. Similar to the `calciteColorPickerChange` event with the exception of dragging. When dragging the color field or hue slider thumb, this event fires as the thumb is moved. |

## References

[Official
Documentation](https://developers.arcgis.com/calcite-design-system/components/color-picker/)

## Examples

``` r
calcite_color_picker()
#> <calcite-color-picker></calcite-color-picker>
```
