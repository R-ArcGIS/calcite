# Create a Shell with Navigation Bar Layout

A convenience function for creating a simple layout with a navigation
header and main content area. This is ideal for dashboard-style
applications.

## Usage

``` r
page_navbar(..., title = NULL, logo = NULL, nav_actions = NULL, footer = NULL)
```

## Arguments

- ...:

  Main content area

- title:

  Application title shown in the navigation header

- logo:

  Optional logo component for the navigation

- nav_actions:

  Optional actions for the navigation bar (placed in `content-end`)

- footer:

  Optional footer content

## Value

An object of class `calcite_component` containing a configured shell

## Examples

``` r
page_navbar(
  title = "My Dashboard",
  nav_actions = list(
    calcite_action(icon = "gear", text = "Settings"),
    calcite_action(icon = "sign-out", text = "Logout")
  ),
  "Dashboard content here"
)
#> <calcite-shell>
#>   Dashboard content here
#>   <calcite-navigation slot="header">
#>     <calcite-navigation-logo slot="logo" heading="My Dashboard"></calcite-navigation-logo>
#>     <calcite-action text="Settings" icon="gear" slot="content-end"></calcite-action>
#>     <calcite-action text="Logout" icon="sign-out" slot="content-end"></calcite-action>
#>   </calcite-navigation>
#> </calcite-shell>
```
