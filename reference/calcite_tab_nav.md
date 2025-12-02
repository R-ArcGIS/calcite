# Create a TabNav component

Create a TabNav component

## Usage

``` r
calcite_tab_nav(...)
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

|                  |            |                                                                                                                                                                                |                            |                       |
|------------------|------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|----------------------------|-----------------------|
| Name             | Attribute  | Description                                                                                                                                                                    | Values                     | Reflects to Attribute |
| messageOverrides | NA         | Use this property to override individual strings used by the component.                                                                                                        | Check API reference        | FALSE                 |
| position         | position   | Specifies the position of `calcite-tab-nav` and `calcite-tab-title` components in relation to, and is inherited from the parent `calcite-tabs`, defaults to `top`. `@internal` | "bottom" \| "top"          | FALSE                 |
| selectedTitle    | NA         | Specifies the component's selected `calcite-tab-title`.                                                                                                                        | HTMLCalciteTabTitleElement | FALSE                 |
| storageId        | storage-id | Specifies the name when saving selected `calcite-tab` data to `localStorage`.                                                                                                  | string                     | TRUE                  |
| syncId           | sync-id    | Specifies text to update multiple components to keep in sync if one changes.                                                                                                   | string                     | TRUE                  |

### Events

The following events are observed by shiny:

|                  |                                                |
|------------------|------------------------------------------------|
| Event            | Description                                    |
| calciteTabChange | Emits when the selected `calcite-tab` changes. |

### Slots

The following slots are provided by this component:

|                   |                                         |
|-------------------|-----------------------------------------|
| Slot              | Description                             |
| Default (unnamed) | A slot for adding `calcite-tab-title`s. |

## References

[Official
Documentation](https://developers.arcgis.com/calcite-design-system/components/tab-nav/)

## Examples

``` r
calcite_tab_nav()
#> <calcite-tab-nav></calcite-tab-nav>
```
