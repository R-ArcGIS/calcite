# Create a Dialog component

Create a Dialog component

## Usage

``` r
calcite_dialog(...)
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

|                      |                        |                                                                                                                                                                                                                                                                                                                                                                             |                                                                                                        |                       |
|----------------------|------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|--------------------------------------------------------------------------------------------------------|-----------------------|
| Name                 | Attribute              | Description                                                                                                                                                                                                                                                                                                                                                                 | Values                                                                                                 | Reflects to Attribute |
| beforeClose          | NA                     | Passes a function to run before the component closes.                                                                                                                                                                                                                                                                                                                       | Check API reference                                                                                    | FALSE                 |
| closeDisabled        | close-disabled         | When `true`, disables the component's close button.                                                                                                                                                                                                                                                                                                                         | boolean                                                                                                | TRUE                  |
| description          | description            | A description for the component.                                                                                                                                                                                                                                                                                                                                            | string                                                                                                 | FALSE                 |
| dragEnabled          | drag-enabled           | When `true`, the component is draggable.                                                                                                                                                                                                                                                                                                                                    | boolean                                                                                                | TRUE                  |
| escapeDisabled       | escape-disabled        | When `true`, disables the default close on escape behavior. By default, an open dialog can be dismissed by pressing the Esc key.                                                                                                                                                                                                                                            | boolean                                                                                                | TRUE                  |
| heading              | heading                | The component header text.                                                                                                                                                                                                                                                                                                                                                  | string                                                                                                 | FALSE                 |
| headingLevel         | heading-level          | Specifies the heading level of the component's `heading` for proper document structure, without affecting visual styling.                                                                                                                                                                                                                                                   | 1 \| 2 \| 3 \| 4 \| 5 \| 6                                                                             | TRUE                  |
| kind                 | kind                   | Specifies the kind of the component, which will style the top border.                                                                                                                                                                                                                                                                                                       | "brand" \| "danger" \| "info" \| "success" \| "warning"                                                | TRUE                  |
| loading              | loading                | When `true`, a busy indicator is displayed.                                                                                                                                                                                                                                                                                                                                 | boolean                                                                                                | TRUE                  |
| menuOpen             | menu-open              | When `true`, the action menu items in the `header-menu-actions` slot are open.                                                                                                                                                                                                                                                                                              | boolean                                                                                                | TRUE                  |
| messageOverrides     | NA                     | Use this property to override individual strings used by the component.                                                                                                                                                                                                                                                                                                     | Check API reference                                                                                    | FALSE                 |
| modal                | modal                  | When `true`, displays a scrim blocking interaction underneath the component.                                                                                                                                                                                                                                                                                                | boolean                                                                                                | TRUE                  |
| open                 | open                   | When `true`, displays and positions the component.                                                                                                                                                                                                                                                                                                                          | boolean                                                                                                | TRUE                  |
| outsideCloseDisabled | outside-close-disabled | When `true`, disables the closing of the component when clicked outside.                                                                                                                                                                                                                                                                                                    | boolean                                                                                                | TRUE                  |
| overlayPositioning   | overlay-positioning    | Determines the type of positioning to use for the overlaid content. Using `"absolute"` will work for most cases. The component will be positioned inside of overflowing parent containers and will affect the container's layout. `"fixed"` should be used to escape an overflowing parent container, or when the reference element's `position` CSS property is `"fixed"`. | "absolute" \| "fixed"                                                                                  | TRUE                  |
| placement            | placement              | Specifies the placement of the dialog.                                                                                                                                                                                                                                                                                                                                      | "bottom" \| "bottom-end" \| "bottom-start" \| "center" \| "cover" \| "top" \| "top-end" \| "top-start" | TRUE                  |
| resizable            | resizable              | When `true`, the component is resizable.                                                                                                                                                                                                                                                                                                                                    | boolean                                                                                                | TRUE                  |
| scale                | scale                  | Specifies the size of the component.                                                                                                                                                                                                                                                                                                                                        | "l" \| "m" \| "s"                                                                                      | TRUE                  |
| width                | width                  | Specifies the width of the component.                                                                                                                                                                                                                                                                                                                                       | "l" \| "m" \| "s"                                                                                      | TRUE                  |
| widthScale           | width-scale            | Specifies the width of the component.                                                                                                                                                                                                                                                                                                                                       | "l" \| "m" \| "s"                                                                                      | TRUE                  |

### Events

The following events are observed by shiny:

|                          |                                                                                                          |
|--------------------------|----------------------------------------------------------------------------------------------------------|
| Event                    | Description                                                                                              |
| calciteDialogBeforeClose | Fires when the component is requested to be closed and before the closing transition begins.             |
| calciteDialogBeforeOpen  | Fires when the component is added to the DOM but not rendered, and before the opening transition begins. |
| calciteDialogClose       | Fires when the component is closed and animation is complete.                                            |
| calciteDialogOpen        | Fires when the component is open and animation is complete.                                              |
| calciteDialogScroll      | Fires when the content is scrolled.                                                                      |

### Slots

The following slots are provided by this component:

|                      |                                                                                                                                         |
|----------------------|-----------------------------------------------------------------------------------------------------------------------------------------|
| Slot                 | Description                                                                                                                             |
| Default (unnamed)    | A slot for adding content.                                                                                                              |
| content              | [Deprecated](https://rdrr.io/r/base/Deprecated.html) Use `custom-content` slot instead.                                                 |
| custom-content       | A slot for displaying custom content. Will prevent the rendering of any default Dialog UI, except for `box-shadow` and `corner-radius`. |
| action-bar           | A slot for adding a `calcite-action-bar` to the component.                                                                              |
| alerts               | A slot for adding `calcite-alert`s to the component.                                                                                    |
| content-bottom       | A slot for adding content below the unnamed (default) slot and - if populated - the `footer` slot.                                      |
| content-top          | A slot for adding content above the unnamed (default) slot and - if populated - below the `action-bar` slot.                            |
| header-actions-start | A slot for adding actions or content to the starting side of the component's header.                                                    |
| header-actions-end   | A slot for adding actions or content to the ending side of the component's header.                                                      |
| header-content       | A slot for adding custom content to the component's header.                                                                             |
| header-menu-actions  | A slot for adding an overflow menu with actions inside a `calcite-dropdown`.                                                            |
| fab                  | A slot for adding a `calcite-fab` (floating action button) to perform an action.                                                        |
| footer               | A slot for adding custom content to the component's footer. Should not be used with the `"footer-start"` or `"footer-end"` slots.       |
| footer-end           | A slot for adding a trailing footer custom content. Should not be used with the `"footer"` slot.                                        |
| footer-start         | A slot for adding a leading footer custom content. Should not be used with the `"footer"` slot.                                         |

## References

[Official
Documentation](https://developers.arcgis.com/calcite-design-system/components/dialog/)

## Examples

``` r
calcite_dialog()
#> <calcite-dialog></calcite-dialog>
```
