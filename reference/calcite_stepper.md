# Create a Stepper component

Create a Stepper component

## Usage

``` r
calcite_stepper(...)
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

|                  |                  |                                                                              |                                                   |                       |
|------------------|------------------|------------------------------------------------------------------------------|---------------------------------------------------|-----------------------|
| Name             | Attribute        | Description                                                                  | Values                                            | Reflects to Attribute |
| icon             | icon             | When `true`, displays a status icon in the `calcite-stepper-item` heading.   | boolean                                           | TRUE                  |
| layout           | layout           | Defines the layout of the component.                                         | "horizontal" \| "horizontal-single" \| "vertical" | TRUE                  |
| messageOverrides | NA               | Use this property to override individual strings used by the component.      | Check API reference                               | FALSE                 |
| numbered         | numbered         | When `true`, displays the step number in the `calcite-stepper-item` heading. | boolean                                           | TRUE                  |
| numberingSystem  | numbering-system | Specifies the Unicode numeral system used by the component for localization. | "arab" \| "arabext" \| "latn"                     | TRUE                  |
| scale            | scale            | Specifies the size of the component.                                         | "l" \| "m" \| "s"                                 | TRUE                  |
| selectedItem     | NA               | Specifies the component's selected item.                                     | HTMLCalciteStepperItemElement                     | FALSE                 |

### Events

The following events are observed by shiny:

|                          |                                                       |
|--------------------------|-------------------------------------------------------|
| Event                    | Description                                           |
| calciteStepperChange     | Fires when the active `calcite-stepper-item` changes. |
| calciteStepperItemChange | Fires when the active `calcite-stepper-item` changes. |

### Slots

The following slots are provided by this component:

|                   |                                                    |
|-------------------|----------------------------------------------------|
| Slot              | Description                                        |
| Default (unnamed) | A slot for adding `calcite-stepper-item` elements. |

## References

[Official
Documentation](https://developers.arcgis.com/calcite-design-system/components/stepper/)

## Examples

``` r
calcite_stepper()
#> <calcite-stepper></calcite-stepper>
```
