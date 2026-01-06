# Create a Calcite Segmented Control Component

Creates a segmented control for selecting between multiple options.
Similar to radio buttons but with a more compact, segmented button
appearance.

## Usage

``` r
calcite_segmented_control(
  ...,
  id = NULL,
  value = NULL,
  appearance = NULL,
  disabled = NULL,
  layout = NULL,
  scale = NULL,
  width = NULL,
  name = NULL,
  label_text = NULL,
  status = NULL,
  validation_message = NULL,
  required = NULL
)
```

## Arguments

- ...:

  Additional attributes passed to the component

- id:

  Component ID (required for Shiny reactivity)

- value:

  Initial selected value (should match a child item's value)

- appearance:

  Visual style: "solid", "outline", or "outline-fill"

- disabled:

  Whether the control is disabled (default: FALSE)

- layout:

  Orientation: "horizontal" or "vertical"

- scale:

  Size of the control: "s" (small), "m" (medium), or "l" (large)

- width:

  Width behavior: "auto" or "full"

- name:

  Name for form submission

- label_text:

  Label displayed on the component

- status:

  Validation state: "idle", "valid", or "invalid"

- validation_message:

  Message displayed for validation feedback

- required:

  Whether selection is required

## Value

An object of class `calcite_component`

## Details

### Shiny Integration

The segmented control emits a `calciteSegmentedControlChange` event when
the selected item changes.

**Available properties in `input$id`:**

- `$value` - Currently selected value (matches a child item's value
  attribute)

- `$disabled` - Whether the control is disabled

- `$scale` - Current scale setting

- Other component properties

**Basic usage:**

    calcite_segmented_control(
      id = "effect_type",
      width = "full",
      calcite_segmented_control_item(value = "blur"),
      calcite_segmented_control_item(value = "highlight", checked = TRUE),
      calcite_segmented_control_item(value = "party")
    )

    # In server
    observeEvent(input$effect_type, {
      selected <- input$effect_type$value
      print(paste("Selected:", selected))
    })

**Update from server:**

    update_calcite("effect_type", value = "blur")

## References

[Official
Documentation](https://developers.arcgis.com/calcite-design-system/components/segmented-control/)

## Examples

``` r
# Basic segmented control
calcite_segmented_control(
  id = "view_mode",
  calcite_segmented_control_item(value = "list", icon_start = "list"),
  calcite_segmented_control_item(value = "grid", icon_start = "grid", checked = TRUE),
  calcite_segmented_control_item(value = "table", icon_start = "table")
)
#> <calcite-segmented-control id="view_mode">
#>   <calcite-segmented-control-item value="list" icon-start="list">list</calcite-segmented-control-item>
#>   <calcite-segmented-control-item value="grid" checked="TRUE" icon-start="grid">grid</calcite-segmented-control-item>
#>   <calcite-segmented-control-item value="table" icon-start="table">table</calcite-segmented-control-item>
#> </calcite-segmented-control>

# Full width with text
calcite_segmented_control(
  id = "effect",
  width = "full",
  calcite_segmented_control_item(value = "Blur"),
  calcite_segmented_control_item(value = "Highlight", checked = TRUE),
  calcite_segmented_control_item(value = "Party mode")
)
#> <calcite-segmented-control id="effect" width="full">
#>   <calcite-segmented-control-item value="Blur">Blur</calcite-segmented-control-item>
#>   <calcite-segmented-control-item value="Highlight" checked="TRUE">Highlight</calcite-segmented-control-item>
#>   <calcite-segmented-control-item value="Party mode">Party mode</calcite-segmented-control-item>
#> </calcite-segmented-control>

# Shiny example
if (interactive()) {
  library(shiny)

  ui <- calcite_shell(
    calcite_card(
      heading = "Segmented Control Example",
      calcite_label(
        "Choose an option",
        calcite_segmented_control(
          id = "my_control",
          width = "full",
          calcite_segmented_control_item(value = "option1"),
          calcite_segmented_control_item(value = "option2", checked = TRUE),
          calcite_segmented_control_item(value = "option3")
        )
      ),
      verbatimTextOutput("selected_value")
    )
  )

  server <- function(input, output, session) {
    output$selected_value <- renderPrint({
      paste("Selected:", input$my_control$value)
    })
  }

  shinyApp(ui, server)
}
```
