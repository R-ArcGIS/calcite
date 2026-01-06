# Create a Calcite Slider Component

Creates a slider input for selecting numeric values. Supports both
single-value and range selection (dual handles).

## Usage

``` r
calcite_slider(
  id = NULL,
  value = NULL,
  min = 0,
  max = 100,
  step = 1,
  min_value = NULL,
  max_value = NULL,
  label_handles = NULL,
  label_ticks = NULL,
  label_text = NULL,
  ticks = NULL,
  disabled = NULL,
  required = NULL,
  scale = NULL,
  snap = NULL,
  precise = NULL,
  mirrored = NULL,
  fill_placement = NULL,
  histogram = NULL,
  histogram_stops = NULL,
  group_separator = NULL,
  page_step = NULL,
  min_label = NULL,
  max_label = NULL,
  name = NULL,
  form = NULL,
  numbering_system = NULL,
  status = NULL,
  validation_icon = NULL,
  validation_message = NULL,
  ...
)
```

## Arguments

- id:

  Component ID (required for Shiny reactivity)

- value:

  Initial value (for single slider) or NULL

- min:

  Minimum selectable value (default: 0)

- max:

  Maximum selectable value (default: 100)

- step:

  Increment step for up/down arrows and keyboard (default: 1)

- min_value:

  For range sliders, the lower bound value

- max_value:

  For range sliders, the upper bound value

- label_handles:

  Whether to display numeric labels on handles (default: FALSE)

- label_ticks:

  Whether to display numeric labels on tick marks (default: FALSE)

- ticks:

  Interval for displaying tick marks on the number line

- disabled:

  Whether the slider is disabled (default: FALSE)

- scale:

  Size of the slider: "s" (small), "m" (medium), or "l" (large)

- snap:

  Whether to enable snap-to-step on mouse interaction (default: FALSE)

- precise:

  Whether to use finer positioning for handles (default: FALSE)

- group_separator:

  Whether to display thousand separators in numbers (default: FALSE)

- page_step:

  Interval to move with Page Up/Down keys

- min_label:

  Accessible label for the minimum handle (for screen readers)

- max_label:

  Accessible label for the maximum handle (for screen readers)

- ...:

  Additional attributes passed to the component

## Value

An object of class `calcite_component`

## Details

### Shiny Integration

The slider emits two types of events:

- **`calciteSliderChange`** - Fires when the user releases the handle
  (debounced, final value)

- **`calciteSliderInput`** - Fires continuously during drag (use with
  caution for expensive operations)

**Available properties in `input$id`:**

- `$value` - Current value (single slider) or array of
  `[minValue, maxValue]` (range slider)

- `$min` / `$max` - Slider bounds

- `$step` - Step increment

- `$disabled` - Whether disabled

- Other component properties

**Single-value slider:**

    observeEvent(input$my_slider, {
      current_value <- input$my_slider$value
      print(paste("Slider value:", current_value))
    })

**Range slider (dual handles):**

    # Provide both min_value and max_value to create a range slider
    calcite_slider(
      id = "range_slider",
      min = 0,
      max = 100,
      min_value = 20,
      max_value = 80
    )

    observeEvent(input$range_slider, {
      lower <- input$range_slider$minValue
      upper <- input$range_slider$maxValue
      print(paste("Range:", lower, "to", upper))
    })

**Update from server:**

    # Update single value
    update_calcite("my_slider", value = 50)

    # Update range
    update_calcite("range_slider", minValue = 30, maxValue = 70)

## References

[Official
Documentation](https://developers.arcgis.com/calcite-design-system/components/slider/)

## Examples

``` r
# Basic slider
calcite_slider(
  id = "my_slider",
  value = 50,
  min = 0,
  max = 100,
  step = 5
)
#> <calcite-slider id="my_slider" value="50" min="0" max="100" step="5" has-histogram="FALSE"></calcite-slider>

# Slider with ticks and labels
calcite_slider(
  id = "temperature",
  value = 72,
  min = 32,
  max = 212,
  step = 1,
  ticks = 10,
  label_handles = TRUE,
  label_ticks = TRUE
)
#> <calcite-slider id="temperature" value="72" min="32" max="212" step="1" label-handles="TRUE" label-ticks="TRUE" ticks="10" has-histogram="FALSE"></calcite-slider>

# Range slider (dual handles)
calcite_slider(
  id = "price_range",
  min = 0,
  max = 1000,
  min_value = 100,
  max_value = 500,
  step = 10,
  label_handles = TRUE
)
#> <calcite-slider id="price_range" min="0" max="1000" step="10" min-value="100" max-value="500" label-handles="TRUE" has-histogram="FALSE"></calcite-slider>

# Shiny example
if (interactive()) {
  library(shiny)

  ui <- calcite_shell(
    calcite_card(
      heading = "Slider Example",
      calcite_label(
        "Choose a value",
        calcite_slider(
          id = "my_slider",
          value = 50,
          min = 0,
          max = 100,
          step = 5,
          label_handles = TRUE
        )
      ),
      verbatimTextOutput("slider_value")
    )
  )

  server <- function(input, output, session) {
    output$slider_value <- renderPrint({
      paste("Current value:", input$my_slider$value)
    })
  }

  shinyApp(ui, server)
}
```
