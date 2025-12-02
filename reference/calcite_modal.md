# Create a Modal component

Use the `calcite-dialog` component instead.

## Usage

``` r
calcite_modal(...)
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

|                      |                        |                                                                                                                            |                                                         |                       |
|----------------------|------------------------|----------------------------------------------------------------------------------------------------------------------------|---------------------------------------------------------|-----------------------|
| Name                 | Attribute              | Description                                                                                                                | Values                                                  | Reflects to Attribute |
| beforeClose          | NA                     | Passes a function to run before the component closes.                                                                      | Check API reference                                     | FALSE                 |
| closeButtonDisabled  | close-button-disabled  | When `true`, disables the component's close button.                                                                        | boolean                                                 | TRUE                  |
| docked               | docked                 | When `true`, prevents the component from expanding to the entire screen on mobile devices.                                 | boolean                                                 | TRUE                  |
| escapeDisabled       | escape-disabled        | When `true`, disables the default close on escape behavior.                                                                | boolean                                                 | TRUE                  |
| focusTrapDisabled    | focus-trap-disabled    | When `true`, prevents focus trapping.                                                                                      | boolean                                                 | TRUE                  |
| fullscreen           | fullscreen             | Sets the component to always be fullscreen. Overrides `widthScale` and `--calcite-modal-width` / `--calcite-modal-height`. | boolean                                                 | TRUE                  |
| kind                 | kind                   | Specifies the kind of the component, which will apply to top border.                                                       | "brand" \| "danger" \| "info" \| "success" \| "warning" | TRUE                  |
| messageOverrides     | NA                     | Use this property to override individual strings used by the component.                                                    | Check API reference                                     | FALSE                 |
| open                 | open                   | When `true`, displays and positions the component.                                                                         | boolean                                                 | TRUE                  |
| outsideCloseDisabled | outside-close-disabled | When `true`, disables the closing of the component when clicked outside.                                                   | boolean                                                 | TRUE                  |
| scale                | scale                  | Specifies the size of the component.                                                                                       | "l" \| "m" \| "s"                                       | TRUE                  |
| widthScale           | width-scale            | Specifies the width of the component.                                                                                      | "l" \| "m" \| "s"                                       | TRUE                  |

### Events

The following events are observed by shiny:

|                         |                                                                                                          |
|-------------------------|----------------------------------------------------------------------------------------------------------|
| Event                   | Description                                                                                              |
| calciteModalBeforeClose | Fires when the component is requested to be closed and before the closing transition begins.             |
| calciteModalBeforeOpen  | Fires when the component is added to the DOM but not rendered, and before the opening transition begins. |
| calciteModalClose       | Fires when the component is closed and animation is complete.                                            |
| calciteModalOpen        | Fires when the component is open and animation is complete.                                              |

### Slots

The following slots are provided by this component:

|                |                                                                                                                                              |
|----------------|----------------------------------------------------------------------------------------------------------------------------------------------|
| Slot           | Description                                                                                                                                  |
| header         | A slot for adding header text.                                                                                                               |
| content        | A slot for adding the component's content.                                                                                                   |
| content-top    | A slot for adding content to the component's sticky header, where content remains at the top of the component when scrolling up and down.    |
| content-bottom | A slot for adding content to the component's sticky footer, where content remains at the bottom of the component when scrolling up and down. |
| primary        | A slot for adding a primary button.                                                                                                          |
| secondary      | A slot for adding a secondary button.                                                                                                        |
| back           | A slot for adding a back button.                                                                                                             |

## References

[Official
Documentation](https://developers.arcgis.com/calcite-design-system/components/modal/)

## Examples

``` r
calcite_modal()
#> <calcite-modal></calcite-modal>
```
