# Create a Alert component

Create a Alert component

## Usage

``` r
calcite_alert(...)
```

## Arguments

- ...:

  named attributes passed to
  [`htmltools::tag()`](https://rstudio.github.io/htmltools/reference/builder.html)

## Value

an object of class `calcite_component` which is a subclass of
`shiny.tag`

## Details

Alerts are meant to provide a way to communicate urgent or important
information to users, frequently as a result of an action they took in
your app. Alerts are positioned at the bottom of the page. Multiple
opened alerts will be added to a queue, allowing users to dismiss them
in the order they are provided.

### Properties

The following properties are provided by this component:

|                   |                     |                                                                                                                       |                                                                                 |                       |
|-------------------|---------------------|-----------------------------------------------------------------------------------------------------------------------|---------------------------------------------------------------------------------|-----------------------|
| Name              | Attribute           | Description                                                                                                           | Values                                                                          | Reflects to Attribute |
| autoClose         | auto-close          | When `true`, the component closes automatically. Recommended for passive, non-blocking alerts.                        | boolean                                                                         | TRUE                  |
| autoCloseDuration | auto-close-duration | Specifies the duration before the component automatically closes - only use with `autoClose`.                         | "fast" \| "medium" \| "slow"                                                    | TRUE                  |
| icon              | icon                | When `true`, shows a default recommended icon. Alternatively, pass a Calcite UI Icon name to display a specific icon. | boolean \| string                                                               | TRUE                  |
| iconFlipRtl       | icon-flip-rtl       | When `true`, the icon will be flipped when the element direction is right-to-left (`"rtl"`).                          | boolean                                                                         | TRUE                  |
| kind              | kind                | Specifies the kind of the component, which will apply to top border and icon.                                         | "brand" \| "danger" \| "info" \| "success" \| "warning"                         | TRUE                  |
| label             | label               | Specifies an accessible name for the component.                                                                       | string                                                                          | FALSE                 |
| messageOverrides  | NA                  | Use this property to override individual strings used by the component.                                               | Check API reference                                                             | FALSE                 |
| numberingSystem   | numbering-system    | Specifies the Unicode numeral system used by the component for localization.                                          | "arab" \| "arabext" \| "latn"                                                   | TRUE                  |
| open              | open                | When `true`, displays and positions the component.                                                                    | boolean                                                                         | TRUE                  |
| placement         | placement           | Specifies the placement of the component.                                                                             | "bottom" \| "bottom-end" \| "bottom-start" \| "top" \| "top-end" \| "top-start" | TRUE                  |
| queue             | queue               | Specifies the ordering priority of the component when opened.                                                         | "immediate" \| "last" \| "next"                                                 | TRUE                  |
| scale             | scale               | Specifies the size of the component.                                                                                  | "l" \| "m" \| "s"                                                               | TRUE                  |

### Events

The following events are observed by shiny:

|                         |                                                                                                          |
|-------------------------|----------------------------------------------------------------------------------------------------------|
| Event                   | Description                                                                                              |
| calciteAlertBeforeClose | Fires when the component is requested to be closed and before the closing transition begins.             |
| calciteAlertBeforeOpen  | Fires when the component is added to the DOM but not rendered, and before the opening transition begins. |
| calciteAlertClose       | Fires when the component is closed and animation is complete.                                            |
| calciteAlertOpen        | Fires when the component is open and animation is complete.                                              |

### Slots

The following slots are provided by this component:

|             |                                                                                                                    |
|-------------|--------------------------------------------------------------------------------------------------------------------|
| Slot        | Description                                                                                                        |
| title       | A slot for adding a title to the component.                                                                        |
| message     | A slot for adding main text to the component.                                                                      |
| link        | A slot for adding a `calcite-action` to take from the component such as: "undo", "try again", "link to page", etc. |
| actions-end | A slot for adding `calcite-action`s to the end of the component. It is recommended to use two or fewer actions.    |

## References

[Official
Documentation](https://developers.arcgis.com/calcite-design-system/components/alert/)

## Examples

``` r
calcite_alert()
#> <calcite-alert></calcite-alert>
```
