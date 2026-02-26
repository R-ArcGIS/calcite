# Create a Shell with Action Bar Layout

A convenience function that creates a common layout pattern: a shell
with a navigation header, an action bar, and a side panel. This is ideal
for map-based applications or tools with multiple layers/options.

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

  A
  [`calcite_action_bar()`](https://r.esri.com/calcite/reference/calcite_action_bar.md)
  component to slot alongside the panel.

- panel_content:

  A
  [`calcite_panel()`](https://r.esri.com/calcite/reference/calcite_panel.md)
  shown when an action is selected.

- panel_position:

  Position of the panel: `"start"` (left) or `"end"` (right).

- panel_width:

  Width of the shell panel: `"s"`, `"m"`, or `"l"`.

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
#>   <calcite-shell-panel width="m" slot="panel-start">
#>     <calcite-panel heading="Layers">Layer controls here</calcite-panel>
#>     <calcite-action-bar slot="action-bar">
#>       <calcite-action text="Add" icon="plus"></calcite-action>
#>       <calcite-action text="Layers" icon="layers" active="TRUE"></calcite-action>
#>     </calcite-action-bar>
#>   </calcite-shell-panel>
#> </calcite-shell>
```
