# Create a StepperItem component

Create a StepperItem component

## Usage

``` r
calcite_stepper_item(...)
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

|                  |               |                                                                                              |                     |                       |
|------------------|---------------|----------------------------------------------------------------------------------------------|---------------------|-----------------------|
| Name             | Attribute     | Description                                                                                  | Values              | Reflects to Attribute |
| complete         | complete      | When `true`, the step has been completed.                                                    | boolean             | TRUE                  |
| description      | description   | A description for the component. Displays below the header text.                             | string              | FALSE                 |
| disabled         | disabled      | When `true`, interaction is prevented and the component is displayed with lower opacity.     | boolean             | TRUE                  |
| error            | error         | When `true`, the component contains an error that requires resolution from the user.         | boolean             | TRUE                  |
| heading          | heading       | The component header text.                                                                   | string              | FALSE                 |
| iconFlipRtl      | icon-flip-rtl | When `true`, the icon will be flipped when the element direction is right-to-left (`"rtl"`). | boolean             | TRUE                  |
| messageOverrides | NA            | Use this property to override individual strings used by the component.                      | Check API reference | FALSE                 |
| selected         | selected      | When `true`, the component is selected.                                                      | boolean             | TRUE                  |

### Events

The following events are observed by shiny:

|                          |                                                       |
|--------------------------|-------------------------------------------------------|
| Event                    | Description                                           |
| calciteStepperItemSelect | Fires when the active `calcite-stepper-item` changes. |

### Slots

The following slots are provided by this component:

|                   |                                   |
|-------------------|-----------------------------------|
| Slot              | Description                       |
| Default (unnamed) | A slot for adding custom content. |

## References

[Official
Documentation](https://developers.arcgis.com/calcite-design-system/components/stepper-item/)

## Examples

``` r
calcite_stepper_item()
#> <calcite-stepper-item></calcite-stepper-item>
```
