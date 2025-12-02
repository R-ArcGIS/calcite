# Create a Switch component

Create a Switch component

## Usage

``` r
calcite_switch(...)
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

|          |           |                                                                                                                                                         |                   |                       |
|----------|-----------|---------------------------------------------------------------------------------------------------------------------------------------------------------|-------------------|-----------------------|
| Name     | Attribute | Description                                                                                                                                             | Values            | Reflects to Attribute |
| checked  | checked   | When `true`, the component is checked.                                                                                                                  | boolean           | TRUE                  |
| disabled | disabled  | When `true`, interaction is prevented and the component is displayed with lower opacity.                                                                | boolean           | TRUE                  |
| form     | form      | The `id` of the form that will be associated with the component. When not set, the component will be associated with its ancestor form element, if any. | string            | TRUE                  |
| label    | label     | Accessible name for the component.                                                                                                                      | string            | FALSE                 |
| name     | name      | Specifies the name of the component. Required to pass the component's `value` on form submission.                                                       | string            | TRUE                  |
| scale    | scale     | Specifies the size of the component.                                                                                                                    | "l" \| "m" \| "s" | TRUE                  |
| value    | value     | The component's value.                                                                                                                                  | any               | FALSE                 |

### Events

The following events are observed by shiny:

|                     |                                             |
|---------------------|---------------------------------------------|
| Event               | Description                                 |
| calciteSwitchChange | Fires when the `checked` value has changed. |

## References

[Official
Documentation](https://developers.arcgis.com/calcite-design-system/components/switch/)

## Examples

``` r
calcite_switch()
#> <calcite-switch></calcite-switch>
```
