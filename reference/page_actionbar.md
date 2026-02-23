# Create a Shell with Action Bar Layout

A convenience function that creates a common layout pattern: a shell
with a navigation header and a collapsible action bar panel on the start
(left) side. This is ideal for map-based applications or tools with
multiple layers/options.

## Usage

``` r
page_actionbar(
  ...,
  title = NULL,
  header_actions = NULL,
  actions = NULL,
  panel_content = NULL,
  panel_position = c("start", "end"),
  panel_width = c("m", "s", "l"),
  footer = NULL
)
```

## Arguments

- ...:

  Main content area (typically a map or primary view)

- title:

  Application title shown in the navigation header

- header_actions:

  Optional actions for the header (e.g., user menu, settings). These
  will be placed in the `content-end` slot of the navigation.

- actions:

  Action bar content. Either a
  [`calcite_action_bar()`](https://r.esri.com/calcite/reference/calcite_action_bar.md)
  component or a list of
  [`calcite_action()`](https://r.esri.com/calcite/reference/calcite_action.md)
  components that will be wrapped in an action bar.

- panel_content:

  Content for the side panel (shown when an action is selected). Can be
  a
  [`calcite_panel()`](https://r.esri.com/calcite/reference/calcite_panel.md)
  or other content.

- panel_position:

  Position of the panel. Either "start" (left) or "end" (right).

- panel_width:

  Width of the panel when expanded. Options: "s", "m", "l".

- footer:

  Optional footer content

## Value

An object of class `calcite_component` containing a configured shell

## Examples

``` r
page_actionbar(
  title = "Wildlife Areas",
  actions = calcite_action_bar(
    calcite_action(text = "Add", icon = "plus"),
    calcite_action(text = "Layers", icon = "layers", active = TRUE)
  ),
  panel_content = calcite_panel(
    heading = "Layers",
    "Layer controls here"
  ),
  "Map content here"
)
#> <calcite-shell>
#>   Map content here
#>   <calcite-navigation slot="header">
#>     <calcite-navigation-logo slot="logo" heading="Wildlife Areas"></calcite-navigation-logo>
#>   </calcite-navigation>
#>   <calcite-shell-panel position="start" width="m" id="shell-panel-start" slot="panel-start">
#>     <calcite-action-bar slot="action-bar">
#>       <calcite-action text="Add" icon="plus"></calcite-action>
#>       <calcite-action text="Layers" icon="layers" active="TRUE"></calcite-action>
#>     </calcite-action-bar>
#>     <calcite-panel heading="Layers">Layer controls here</calcite-panel>
#>   </calcite-shell-panel>
#> </calcite-shell>
```
