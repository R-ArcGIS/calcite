# Create a Shell with Sidebar Panel Layout

Similar to
[`bslib::page_sidebar()`](https://rstudio.github.io/bslib/reference/page_sidebar.html),
this creates a layout with a sidebar panel and main content area — the
easiest way to build a standard Calcite app layout. Pass a
[`calcite_panel()`](https://r.esri.com/calcite/reference/calcite_panel.md)
as `sidebar`; it will be wrapped in a
[`calcite_shell_panel()`](https://r.esri.com/calcite/reference/calcite_shell_panel.md)
automatically.

## Usage

``` r
page_sidebar(
  ...,
  sidebar = NULL,
  title = NULL,
  position = c("start", "end"),
  width = c("m", "s", "l"),
  display_mode = c("dock", "overlay", "float-content", "float-all"),
  footer = NULL
)
```

## Arguments

- ...:

  Main content area (typically a
  [`calcite_panel()`](https://r.esri.com/calcite/reference/calcite_panel.md)
  or map view)

- sidebar:

  A
  [`calcite_panel()`](https://r.esri.com/calcite/reference/calcite_panel.md)
  for the sidebar. Typically contains
  [`calcite_block()`](https://r.esri.com/calcite/reference/calcite_block.md)
  components with controls.

- title:

  Optional application title shown in a navigation header.

- position:

  Position of sidebar: `"start"` (left) or `"end"` (right).

- width:

  Width of the sidebar: `"s"`, `"m"`, or `"l"`.

- display_mode:

  Display mode for the shell panel: `"dock"`, `"overlay"`,
  `"float-content"`, or `"float-all"`. Default: `"dock"`.

- footer:

  Optional footer content

## Value

An object of class `calcite_component` containing a configured shell

## Examples

``` r
page_sidebar(
  title = "Data Explorer",
  sidebar = calcite_panel(
    heading = "Filters",
    calcite_block(
      heading = "Options",
      collapsible = TRUE,
      expanded = TRUE
    )
  ),
  calcite_panel(heading = "Results")
)
#> <calcite-shell>
#>   <calcite-panel heading="Results"></calcite-panel>
#>   <calcite-navigation slot="header">
#>     <calcite-navigation-logo slot="logo" heading="Data Explorer"></calcite-navigation-logo>
#>   </calcite-navigation>
#>   <calcite-shell-panel width="m" slot="panel-start">
#>     <calcite-panel heading="Filters">
#>       <calcite-block heading="Options" collapsible="TRUE" expanded="TRUE"></calcite-block>
#>     </calcite-panel>
#>   </calcite-shell-panel>
#> </calcite-shell>
```
