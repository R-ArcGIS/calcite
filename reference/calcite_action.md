# Create a Calcite Action Component

Creates an action button that can be used within action bars and action
groups. Actions provide a compact way to trigger operations with
icon-based buttons.

## Usage

``` r
calcite_action(
  text,
  icon = NULL,
  id = NULL,
  active = NULL,
  disabled = NULL,
  indicator = NULL,
  text_enabled = NULL,
  scale = NULL,
  alignment = NULL,
  appearance = NULL,
  loading = NULL,
  label = NULL,
  ...
)
```

## Arguments

- text:

  Text label for the action (required, also used for accessibility)

- icon:

  Icon name from the Calcite icon set

- id:

  Optional ID for the action (required for Shiny reactivity)

- active:

  Whether the action is highlighted/selected

- disabled:

  Whether the action is disabled

- indicator:

  Whether to show a visual indicator (e.g., notification badge)

- text_enabled:

  Whether to display the text label alongside the icon

- scale:

  Size of the action: "s" (small), "m" (medium), or "l" (large)

- alignment:

  Text alignment: "start", "center", or "end"

- appearance:

  Visual style: "solid" or "transparent"

- loading:

  Whether to show a loading indicator

- label:

  Custom accessibility label (defaults to `text` if not provided)

- ...:

  Additional attributes passed to the component

## Value

An object of class `calcite_component`

## Details

### Shiny Integration

When used in a Shiny app, `calcite_action()` returns a reactive list
containing all component properties. You can observe the entire
component state or watch individual properties:

**Available properties:**

- `$clicked` - Boolean that toggles on each click (use this to detect
  clicks)

- `$active` - Whether the action is currently active/highlighted

- `$disabled` - Whether the action is disabled

- `$icon` - The icon name

- `$text` - The text label

- `$indicator` - Whether an indicator is shown

- `$alignment`, `$appearance`, `$scale`, etc. - Other component
  properties

**Usage in server:**

    # Watch for any change to the action (including clicks)
    observeEvent(input$my_action, {
      print("Action changed!")
    })

    # Watch only the clicked state
    observeEvent(input$my_action$clicked, {
      print("Action was clicked!")
    })

    # Access specific properties
    observeEvent(input$my_action, {
      is_active <- input$my_action$active
      click_state <- input$my_action$clicked
    })

## References

[Official
Documentation](https://developers.arcgis.com/calcite-design-system/components/action/)

## Examples

``` r
# Basic action with icon
calcite_action(
  text = "Layers",
  icon = "layers",
  id = "layers-action"
)
#> <calcite-action id="layers-action" text="Layers" icon="layers"></calcite-action>

# Active action with text label
calcite_action(
  text = "Settings",
  icon = "gear",
  active = TRUE,
  text_enabled = TRUE
)
#> <calcite-action text="Settings" icon="gear" active="TRUE" text-enabled="TRUE"></calcite-action>

# Action with indicator
calcite_action(
  text = "Notifications",
  icon = "bell",
  indicator = TRUE
)
#> <calcite-action text="Notifications" icon="bell" indicator="TRUE"></calcite-action>

# Shiny example
if (interactive()) {
  library(shiny)

  ui <- calcite_shell(
    calcite_action(
      id = "my_action",
      text = "Click me",
      icon = "check",
      text_enabled = TRUE
    ),
    verbatimTextOutput("status")
  )

  server <- function(input, output, session) {
    # Respond to clicks
    observeEvent(input$my_action$clicked, {
      message("Action clicked! State: ", input$my_action$clicked)
    })

    # Display all properties
    output$status <- renderPrint({
      input$my_action
    })
  }

  shinyApp(ui, server)
}
```
