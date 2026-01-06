# Create a Calcite Shell Layout

The Shell is a foundational layout component in Calcite, enabling the
creation of rich, interactive experiences. It provides structured slots
for headers, footers, side panels, and main content.

## Usage

``` r
calcite_shell(
  ...,
  header = NULL,
  footer = NULL,
  panel_start = NULL,
  panel_end = NULL,
  panel_top = NULL,
  panel_bottom = NULL,
  modals = NULL,
  dialogs = NULL,
  alerts = NULL,
  sheets = NULL
)
```

## Arguments

- ...:

  Main content to display in the default slot (between panels)

- header:

  Content for the header slot (top of shell). Typically a
  [`calcite_navigation()`](http://r.esri.com/calcite/reference/calcite_navigation.md)
  component.

- footer:

  Content for the footer slot (bottom of shell)

- panel_start:

  Content for the start/left panel. Use
  [`calcite_shell_panel()`](http://r.esri.com/calcite/reference/calcite_shell_panel.md)
  with `position = "start"`.

- panel_end:

  Content for the end/right panel. Use
  [`calcite_shell_panel()`](http://r.esri.com/calcite/reference/calcite_shell_panel.md)
  with `position = "end"`.

- panel_top:

  Content for the top panel (below header)

- panel_bottom:

  Content for the bottom panel (above footer)

- modals:

  Slot for
  [`calcite_modal()`](http://r.esri.com/calcite/reference/calcite_modal.md)
  components

- dialogs:

  Slot for
  [`calcite_dialog()`](http://r.esri.com/calcite/reference/calcite_dialog.md)
  components

- alerts:

  Slot for
  [`calcite_alert()`](http://r.esri.com/calcite/reference/calcite_alert.md)
  components

- sheets:

  Slot for
  [`calcite_sheet()`](http://r.esri.com/calcite/reference/calcite_sheet.md)
  components

## Value

An object of class `calcite_component` which is a subclass of
`shiny.tag`

## Details

### Shell Structure

The shell organizes your application into distinct regions:

- **header**: Top navigation bar

- **panel-start/panel-end**: Side panels (left/right)

- **panel-top/panel-bottom**: Top/bottom panels

- **Default content**: Main application area (maps, charts, etc.)

- **footer**: Bottom information/links

- **Overlay slots**: modals, dialogs, alerts, sheets

When embedded within other content, the overlay slots (modals, dialogs,
alerts, sheets) facilitate placement of these components relative to the
Shell, constraining them to the shell's boundaries rather than the full
page.

## References

[Official
Documentation](https://developers.arcgis.com/calcite-design-system/components/shell/)

## Examples

``` r
# Basic shell with header and content
calcite_shell(
  header = calcite_navigation(
    calcite_navigation_logo(slot = "logo", heading = "My App")
  ),
  "Main content goes here"
)
#> <calcite-shell>
#>   Main content goes here
#>   <calcite-navigation slot="header">
#>     <calcite-navigation-logo slot="logo" heading="My App"></calcite-navigation-logo>
#>   </calcite-navigation>
#> </calcite-shell>

# Shell with action bar sidebar
calcite_shell(
  header = calcite_navigation(
    calcite_navigation_logo(slot = "logo", heading = "Wildlife Areas")
  ),
  panel_start = calcite_shell_panel(
    position = "start",
    calcite_action_bar(
      slot = "action-bar",
      calcite_action(text = "Layers", icon = "layers")
    ),
    calcite_panel(heading = "Layers")
  ),
  calcite_panel(heading = "Map View")
)
#> <calcite-shell>
#>   <calcite-panel heading="Map View"></calcite-panel>
#>   <calcite-navigation slot="header">
#>     <calcite-navigation-logo slot="logo" heading="Wildlife Areas"></calcite-navigation-logo>
#>   </calcite-navigation>
#>   <calcite-shell-panel position="start" slot="panel-start">
#>     <calcite-action-bar slot="action-bar">
#>       <calcite-action text="Layers" icon="layers"></calcite-action>
#>     </calcite-action-bar>
#>     <calcite-panel heading="Layers"></calcite-panel>
#>   </calcite-shell-panel>
#> </calcite-shell>
```
