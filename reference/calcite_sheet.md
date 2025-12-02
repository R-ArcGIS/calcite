# Create a Sheet component

Create a Sheet component

## Usage

``` r
calcite_sheet(...)
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

|                      |                        |                                                                                                                             |                                                                |                       |
|----------------------|------------------------|-----------------------------------------------------------------------------------------------------------------------------|----------------------------------------------------------------|-----------------------|
| Name                 | Attribute              | Description                                                                                                                 | Values                                                         | Reflects to Attribute |
| beforeClose          | NA                     | Passes a function to run before the component closes.                                                                       | Check API reference                                            | FALSE                 |
| displayMode          | display-mode           | Specifies the display mode - `"float"` (content is separated detached), or `"overlay"` (displays on top of center content). | "float" \| "overlay"                                           | TRUE                  |
| escapeDisabled       | escape-disabled        | When `true`, disables the default close on escape behavior.                                                                 | boolean                                                        | TRUE                  |
| focusTrapDisabled    | focus-trap-disabled    | When `true`, prevents focus trapping.                                                                                       | boolean                                                        | TRUE                  |
| height               | height                 | Specifies the height of the component.                                                                                      | "l" \| "m" \| "s"                                              | TRUE                  |
| heightScale          | height-scale           | When `position` is `"block-start"` or `"block-end"`, specifies the height of the component.                                 | "l" \| "m" \| "s"                                              | TRUE                  |
| label                | label                  | Specifies the label of the component.                                                                                       | string                                                         | FALSE                 |
| messageOverrides     | NA                     | Use this property to override individual strings used by the component.                                                     | Check API reference                                            | FALSE                 |
| open                 | open                   | When `true`, displays and positions the component.                                                                          | boolean                                                        | TRUE                  |
| outsideCloseDisabled | outside-close-disabled | When `true`, disables the closing of the component when clicked outside.                                                    | boolean                                                        | TRUE                  |
| position             | position               | Determines where the component will be positioned.                                                                          | "block-end" \| "block-start" \| "inline-end" \| "inline-start" | TRUE                  |
| resizable            | resizable              | When `true`, the component is resizable.                                                                                    | boolean                                                        | TRUE                  |
| width                | width                  | Specifies the width of the component.                                                                                       | "l" \| "m" \| "s"                                              | TRUE                  |
| widthScale           | width-scale            | When `position` is `"inline-start"` or `"inline-end"`, specifies the width of the component.                                | "l" \| "m" \| "s"                                              | TRUE                  |

### Events

The following events are observed by shiny:

|                         |                                                                                                          |
|-------------------------|----------------------------------------------------------------------------------------------------------|
| Event                   | Description                                                                                              |
| calciteSheetBeforeClose | Fires when the component is requested to be closed and before the closing transition begins.             |
| calciteSheetBeforeOpen  | Fires when the component is added to the DOM but not rendered, and before the opening transition begins. |
| calciteSheetClose       | Fires when the component is closed and animation is complete.                                            |
| calciteSheetOpen        | Fires when the component is open and animation is complete.                                              |

## References

[Official
Documentation](https://developers.arcgis.com/calcite-design-system/components/sheet/)

## Examples

``` r
calcite_sheet()
#> <calcite-sheet></calcite-sheet>
```
