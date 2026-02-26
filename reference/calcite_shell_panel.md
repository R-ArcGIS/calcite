# Create a Calcite Shell Panel Component

Shell Panel is a layout container that slots into
[`calcite_shell()`](https://r.esri.com/calcite/reference/calcite_shell.md)
via `panel_start` or `panel_end`. It sits adjacent to or on top of the
main content area. Pass a
[`calcite_panel()`](https://r.esri.com/calcite/reference/calcite_panel.md)
(typically containing
[`calcite_block()`](https://r.esri.com/calcite/reference/calcite_block.md)
components) as the default content, and optionally a
[`calcite_action_bar()`](https://r.esri.com/calcite/reference/calcite_action_bar.md)
in the `action_bar` slot.

## Usage

``` r
calcite_shell_panel(
  ...,
  collapsed = NULL,
  display_mode = NULL,
  height = NULL,
  message_overrides = NULL,
  resizable = NULL,
  width = NULL,
  action_bar = NULL
)
```

## Arguments

- ...:

  Default slot content. Typically a single
  [`calcite_panel()`](https://r.esri.com/calcite/reference/calcite_panel.md).

- collapsed:

  When `TRUE`, hides the component's content area. Default: `FALSE`

- display_mode:

  Specifies the display mode:

  - `"dock"` (default): full height, pushes center content aside

  - `"overlay"`: full height, displays on top of center content

  - `"float-content"`: not full height, content detached from action
    bar, on top of center content

  - `"float-all"`: detaches both panel and action bar on top of center
    content

- height:

  Specifies the component's height.

- message_overrides:

  Override individual strings used by the component.

- resizable:

  When `TRUE` and `display_mode` is `"dock"` or `"overlay"`, the content
  area is resizable. Default: `FALSE`

- width:

  Specifies the component's width: `"s"`, `"m"`, or `"l"`.

- action_bar:

  Content for the `action-bar` slot. Typically a
  [`calcite_action_bar()`](https://r.esri.com/calcite/reference/calcite_action_bar.md)
  component.

## Value

An object of class `calcite_component`

## Details

### Usage

Shell Panel is the recommended wrapper when placing panels inside
[`calcite_shell()`](https://r.esri.com/calcite/reference/calcite_shell.md)'s
`panel_start` or `panel_end` slots. It controls display mode, width,
collapsibility, and action bar placement.

Multiple Shell Panels can be open simultaneously, unlike
[`calcite_sheet()`](https://r.esri.com/calcite/reference/calcite_sheet.md).
It does not provide a page-blocking scrim and is not intended to
interrupt the main application workflow.

## References

[Official
Documentation](https://developers.arcgis.com/calcite-design-system/components/shell-panel/)

## Examples

``` r
calcite_shell(
  panel_start = calcite_shell_panel(
    calcite_panel(
      heading = "Layers",
      calcite_block(
        heading = "Options",
        collapsible = TRUE,
        expanded = TRUE
      )
    )
  ),
  calcite_panel(heading = "Map View")
)
#> <calcite-shell>
#>   <calcite-panel heading="Map View"></calcite-panel>
#>   <calcite-shell-panel slot="panel-start">
#>     <calcite-panel heading="Layers">
#>       <calcite-block heading="Options" collapsible="TRUE" expanded="TRUE"></calcite-block>
#>     </calcite-panel>
#>   </calcite-shell-panel>
#> </calcite-shell>
```
