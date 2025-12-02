# Create a Navigation component

Create a Navigation component

## Usage

``` r
calcite_navigation(...)
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

|                  |                   |                                                                                                          |         |                       |
|------------------|-------------------|----------------------------------------------------------------------------------------------------------|---------|-----------------------|
| Name             | Attribute         | Description                                                                                              | Values  | Reflects to Attribute |
| label            | label             | When `navigationAction` is `true`, specifies the label of the `calcite-action`.                          | string  | FALSE                 |
| navigationAction | navigation-action | When `true`, displays a `calcite-action` and emits a `calciteNavActionSelect` event on selection change. | boolean | TRUE                  |

### Events

The following events are observed by shiny:

|                               |                                                                                       |
|-------------------------------|---------------------------------------------------------------------------------------|
| Event                         | Description                                                                           |
| calciteNavigationActionSelect | When `navigationAction` is `true`, emits when the displayed action selection changes. |

### Slots

The following slots are provided by this component:

|                      |                                                                                                                                                                                                    |
|----------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Slot                 | Description                                                                                                                                                                                        |
| logo                 | A slot for adding a `calcite-logo` component to the primary navigation level.                                                                                                                      |
| user                 | A slot for adding a `calcite-user` component to the primary navigation level.                                                                                                                      |
| progress             | A slot for adding a `calcite-progress` component to the primary navigation level.                                                                                                                  |
| navigation-action    | A slot for adding a `calcite-action` component to the primary navigation level.                                                                                                                    |
| content-start        | A slot for adding a `calcite-menu`, `calcite-action`, or other interactive elements in the start position of any navigation level.                                                                 |
| content-center       | A slot for adding a `calcite-menu`, `calcite-action`, or other interactive elements in the center position of the primary navigation level.                                                        |
| content-end          | A slot for adding a `calcite-menu`, `calcite-action`, or other interactive elements in the end position of any navigation level.                                                                   |
| navigation-secondary | A slot for adding a `calcite-navigation` component in the secondary navigation level. Components rendered here will not display `calcite-navigation-logo` or `calcite-navigation-user` components. |
| navigation-tertiary  | A slot for adding a `calcite-navigation` component in the tertiary navigation level. Components rendered here will not display `calcite-navigation-logo` or `calcite-navigation-user` components.  |

## References

[Official
Documentation](https://developers.arcgis.com/calcite-design-system/components/navigation/)

## Examples

``` r
calcite_navigation()
#> <calcite-navigation></calcite-navigation>
```
