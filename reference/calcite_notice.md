# Create a Notice component

Create a Notice component

## Usage

``` r
calcite_notice(...)
```

## Arguments

- ...:

  named attributes passed to
  [`htmltools::tag()`](https://rstudio.github.io/htmltools/reference/builder.html)

## Value

an object of class `calcite_component` which is a subclass of
`shiny.tag`

## Details

Notices are intended to be used to present users with
important-but-not-crucial contextual tips or copy. Because notices are
displayed inline, a common use case is displaying them on page-load to
present users with short hints or contextual copy. They are optionally
closable - useful for keeping track of whether or not a user has closed
the notice. You can also choose not to display a notice on page load and
set the "active" attribute as needed to contextually provide inline
messaging to users.

### Properties

The following properties are provided by this component:

|                  |               |                                                                                                                       |                                                         |                       |
|------------------|---------------|-----------------------------------------------------------------------------------------------------------------------|---------------------------------------------------------|-----------------------|
| Name             | Attribute     | Description                                                                                                           | Values                                                  | Reflects to Attribute |
| closable         | closable      | When `true`, a close button is added to the component.                                                                | boolean                                                 | TRUE                  |
| icon             | icon          | When `true`, shows a default recommended icon. Alternatively, pass a Calcite UI Icon name to display a specific icon. | boolean \| string                                       | TRUE                  |
| iconFlipRtl      | icon-flip-rtl | When `true`, the icon will be flipped when the element direction is right-to-left (`"rtl"`).                          | boolean                                                 | TRUE                  |
| kind             | kind          | Specifies the kind of the component, which will apply to top border and icon.                                         | "brand" \| "danger" \| "info" \| "success" \| "warning" | TRUE                  |
| messageOverrides | NA            | Use this property to override individual strings used by the component.                                               | Check API reference                                     | FALSE                 |
| open             | open          | When `true`, the component is visible.                                                                                | boolean                                                 | TRUE                  |
| scale            | scale         | Specifies the size of the component.                                                                                  | "l" \| "m" \| "s"                                       | TRUE                  |
| width            | width         | Check API reference                                                                                                   | "auto" \| "full" \| "half"                              | TRUE                  |

### Events

The following events are observed by shiny:

|                          |                                                                                                          |
|--------------------------|----------------------------------------------------------------------------------------------------------|
| Event                    | Description                                                                                              |
| calciteNoticeBeforeClose | Fires when the component is requested to be closed and before the closing transition begins.             |
| calciteNoticeBeforeOpen  | Fires when the component is added to the DOM but not rendered, and before the opening transition begins. |
| calciteNoticeClose       | Fires when the component is closed and animation is complete.                                            |
| calciteNoticeOpen        | Fires when the component is open and animation is complete.                                              |

### Slots

The following slots are provided by this component:

|             |                                                                                                                |
|-------------|----------------------------------------------------------------------------------------------------------------|
| Slot        | Description                                                                                                    |
| title       | A slot for adding the title.                                                                                   |
| message     | A slot for adding the message.                                                                                 |
| link        | A slot for adding a `calcite-action` to take, such as: "undo", "try again", "link to page", etc.               |
| actions-end | A slot for adding `calcite-action`s to the end of the component. It is recommended to use two or less actions. |

## References

[Official
Documentation](https://developers.arcgis.com/calcite-design-system/components/notice/)

## Examples

``` r
calcite_notice()
#> <calcite-notice></calcite-notice>
```
