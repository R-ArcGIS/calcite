

[![](https://github.com/R-ArcGIS/calcite/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/R-ArcGIS/calcite/actions/workflows/R-CMD-check.yaml)

# Calcite Design System for R

The `{calcite}` package provides R bindings to Esri’s [Calcite Design
System](https://developers.arcgis.com/calcite-design-system/), designed
to work directly with Shiny or standalone HTML.

> [!TIP]
>
> An [`llms.txt`](https://r.esri.com/calcite/llms.txt) file is available
> to provide context for LLMs when working with this package.

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
library(calcite)

run_example("page-sidebar-penguins")
```

Use `list_examples()` to see all included examples, `run_example()` to
run one directly, or `open_example()` to browse and open one in Positron
or RStudio:

``` r
open_example()
```

## App Layouts

`{calcite}` provides layout functions that make it easy to structure
Shiny apps with sidebars, navigation headers, and main content areas.

### `page_sidebar()`

The simplest way to build a standard Calcite app layout — a sidebar on
the left and a main content area on the right, optionally with a
navigation header:

``` r
library(shiny)
library(calcite)

ui <- page_sidebar(
  title = "My App",
  sidebar = calcite_panel(
    heading = "Controls",
    calcite_block(
      heading = "Options",
      collapsible = TRUE,
      expanded = TRUE,
      calcite_checkbox(id = "show_labels", label_text = "Show labels")
    )
  ),
  calcite_panel(heading = "Map View")
)

server <- function(input, output, session) {}

shinyApp(ui, server)
```

### `page_actionbar()`

For map-style apps with an action bar that toggles panels:

``` r
ui <- page_actionbar(
  title = "Wildlife Areas",
  actions = calcite_action_bar(
    id = "my_bar",
    calcite_action(text = "Layers", icon = "layers", active = TRUE),
    calcite_action(text = "Legend", icon = "legend")
  ),
  panel_content = list(
    calcite_panel(
      id = "layers_panel",
      heading = "Layers",
      calcite_block(heading = "Options", collapsible = TRUE, expanded = TRUE)
    ),
    calcite_panel(
      id = "legend_panel",
      heading = "Legend",
      hidden = TRUE,
      calcite_block(heading = "Legend items", collapsible = TRUE, expanded = TRUE)
    )
  ),
  calcite_panel(heading = "Map View")
)

server <- function(input, output, session) {
  observeEvent(input$my_bar, {
    update_calcite("layers_panel", hidden = input$my_bar != "Layers")
    update_calcite("legend_panel", hidden = input$my_bar != "Legend")
  }, ignoreInit = TRUE)
}

shinyApp(ui, server)
```

### Building custom layouts with `calcite_shell()`

For full control, use `calcite_shell()` directly. Place a
`calcite_shell_panel()` in `panel_start` or `panel_end`, wrapping a
`calcite_panel()` with `calcite_block()` components inside:

``` r
ui <- calcite_shell(
  panel_start = calcite_shell_panel(
    width = "m",
    calcite_panel(
      heading = "Layers",
      calcite_block(
        heading = "Basemap",
        collapsible = TRUE,
        expanded = TRUE
      )
    )
  ),
  calcite_panel(heading = "Map View")
)

shinyApp(ui, server)
```

The layout hierarchy is:

    calcite_shell()
      panel_start = calcite_shell_panel()   # controls width, display mode
        calcite_panel()                     # header, footer, actions
          calcite_block()                   # collapsible sections
            # your controls here
      calcite_panel()                       # main content area

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
      title = "Nice!",
      message = "Your changes have been saved."
    )
  )
)

server <- function(input, output, session) {
  observeEvent(input$show_notice$clicks, {
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
