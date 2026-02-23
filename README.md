

[![](https://github.com/R-ArcGIS/calcite/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/R-ArcGIS/calcite/actions/workflows/R-CMD-check.yaml)

# Calcite Design System for R

The `{calcite}` package provides R bindings to Esri’s [Calcite Design
System](https://developers.arcgis.com/calcite-design-system/), designed
to work directly with Shiny or standalone HTML.

## Installation

The `{calcite}` package is available on GitHub. Install it using the
following command:

``` r
remotes::install_github("r-arcgis/calcite")
```

## Usage

`{calcite}` consists of many components. See them all in the [official
documentation](https://developers.arcgis.com/calcite-design-system/components/).

Use the calcite components to scaffold the UI of your Shiny application.
The example below uses `calcite_panel()`, `calcite_block()`, and
`calcite_select()` to build a sidebar-driven scatter plot explorer with
the `palmerpenguins` dataset:

``` r
shiny::runApp(
  system.file(
    "examples",
    "page-sidebar-penguins.R",
    package = "calcite"
  )
)
```

Use `open_example()` to interactively browse all included examples:

``` r
library(calcite)

open_example()
```

## Components

`{calcite}` provides bindings for every component in the Calcite Design
System. See the full list at the bottom of this page.

## Using Component Properties

Component properties are accessible via `input$id` in a Shiny `server`
function, with each property available as a named list element:

``` r
library(shiny)
library(calcite)

ui <- calcite_shell(
  calcite_block(
    id = "effects_block",
    heading = "Layer effects",
    description = "Adjust blur, highlight, and more",
    collapsible = TRUE,
    expanded = TRUE,
    icon_start = "effects",
    calcite_label(
      "Effect intensity",
      calcite_slider(
        id = "intensity",
        value = 50,
        min = 0,
        max = 100,
        step = 5,
        label_handles = TRUE
      )
    )
  )
)

server <- function(input, output, session) {
  observeEvent(input$intensity, {
    cat(str(input$intensity))
    cat(sprintf("Slider value: %s\n", input$intensity$value))
  })
}

shiny::shinyApp(ui, server)
#> Slider value: 45
#> List of 11
#>  $ value       : int 45
#>  $ min         : int 0
#>  $ max         : int 100
#>  $ step        : int 5
#>  $ disabled    : logi FALSE
#>  $ histogram   : NULL
#>  $ labelHandles: logi TRUE
#>  $ labelTicks  : logi FALSE
#>  $ scale       : chr "m"
#>  $ precise     : logi FALSE
#>  $ snap        : logi FALSE
```

## Shiny Reactivity

Properties can be updated from the server using `update_calcite()`,
which takes the `id` of the component and named property values:

``` r
library(calcite)
library(shiny)

ui <- calcite_shell(
  calcite_panel(
    heading = "Demo",
    calcite_button(id = "show_notice", "Show notice"),
    calcite_notice(
      id = "my_notice",
      open = FALSE,
      closable = TRUE,
      kind = "success",
      icon = TRUE,
      htmltools::div(slot = "title", "Nice!"),
      htmltools::div(slot = "message", "Your changes have been saved.")
    )
  )
)

server <- function(input, output, session) {
  observeEvent(input$show_notice$clicked, {
    update_calcite("my_notice", open = TRUE)
  })
}

shiny::shinyApp(ui, server)
```

## Additional Components

Many additional components are available but do not yet have explicitly
named parameters. They accept attributes via `...` using kebab-case
names, for example `` `icon-start` = "layers" ``. This is actively being
worked on. See the full list at
[r.esri.com/calcite/reference/index.html#generated-components](https://r.esri.com/calcite/reference/index.html#generated-components).
