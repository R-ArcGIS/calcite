# Create a Shell with Sidebar Panel Layout

Similar to
[`bslib::page_sidebar()`](https://rstudio.github.io/bslib/reference/page_sidebar.html),
this creates a layout with a sidebar panel and main content area. The
sidebar can be positioned on the left or right.

## Usage

``` r
page_sidebar(
  ...,
  sidebar = NULL,
  title = NULL,
  position = c("start", "end"),
  width = c("m", "s", "l"),
  collapsible = TRUE,
  footer = NULL
)
```

## Arguments

- ...:

  Main content area

- sidebar:

  Content for the sidebar panel

- title:

  Optional application title

- position:

  Position of sidebar: "start" (left) or "end" (right)

- width:

  Width of the sidebar: "s", "m", or "l"

- collapsible:

  Whether the sidebar can be collapsed (default TRUE)

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
    "Filter controls here"
  ),
  "Main data view here"
)
#> <calcite-shell>
#>   Main data view here
#>   <calcite-navigation slot="header">
#>     <calcite-navigation-logo slot="logo" heading="Data Explorer"></calcite-navigation-logo>
#>   </calcite-navigation>
#>   <calcite-shell-panel position="start" width="m" slot="panel-start">
#>     <calcite-panel heading="Filters">Filter controls here</calcite-panel>
#>   </calcite-shell-panel>
#> </calcite-shell>
```
