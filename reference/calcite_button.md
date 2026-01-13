# Create a Calcite Button Component

Creates an interactive button component that can be used for user
actions. Buttons can display text, icons, or both, and support various
visual styles.

## Usage

``` r
calcite_button(
  ...,
  id = NULL,
  alignment = NULL,
  appearance = NULL,
  disabled = NULL,
  download = NULL,
  form = NULL,
  href = NULL,
  icon_end = NULL,
  icon_flip_rtl = NULL,
  icon_start = NULL,
  kind = NULL,
  label = NULL,
  loading = NULL,
  name = NULL,
  rel = NULL,
  round = NULL,
  scale = NULL,
  split_child = NULL,
  target = NULL,
  type = NULL,
  width = NULL
)
```

## Arguments

- ...:

  Content for the button (default slot) - typically text or other
  elements

- id:

  Component ID (required for Shiny reactivity)

- alignment:

  Specifies the alignment of the component's elements: "center", "end",
  "icon-end-space-between", "icon-start-space-between", "space-between",
  or "start" (default: "center")

- appearance:

  Specifies the appearance style: "outline", "outline-fill", "solid", or
  "transparent" (default: "solid")

- disabled:

  When TRUE, interaction is prevented and the component is displayed
  with lower opacity (default: FALSE)

- download:

  Prompts the user to save the linked URL instead of navigating to it.
  Can be TRUE or a string filename

- form:

  The id of the form that will be associated with the component

- href:

  Specifies the URL of the linked resource (absolute or relative path)

- icon_end:

  Specifies an icon to display at the end of the component

- icon_flip_rtl:

  Displays the iconStart and/or iconEnd as flipped when the element
  direction is RTL: "both", "end", or "start"

- icon_start:

  Specifies an icon to display at the start of the component

- kind:

  Specifies the kind of the component: "brand", "danger", "inverse", or
  "neutral" (default: "brand")

- label:

  Accessible name for the component

- loading:

  When TRUE, a busy indicator is displayed (default: FALSE)

- name:

  Specifies the name of the component on form submission

- rel:

  Defines the relationship between the href value and the current
  document

- round:

  When TRUE, adds a round style to the component (default: FALSE)

- scale:

  Specifies the size of the component: "s" (small), "m" (medium), or "l"
  (large) (default: "m")

- split_child:

  Specifies if the component is a child of a calcite-split-button:
  "primary", "secondary", or boolean

- target:

  Specifies where to open the linked document defined in href

- type:

  Specifies the default behavior: "button", "reset", or "submit"
  (default: "button")

- width:

  Specifies the width of the component: "auto", "full", or "half"
  (default: "auto"). Note: "half" is deprecated, use "full" instead.

## Value

An object of class `calcite_component`

## Details

### Shiny Integration

When used in a Shiny app, `calcite_button()` returns a reactive list
containing component properties and a click counter. You can observe the
entire component state or watch individual properties:

**Available properties:**

- `$clicks` - Integer count of how many times the button has been
  clicked

- `$alignment`, `$appearance`, `$disabled`, `$kind`, `$scale`, etc. -
  All component properties

**Usage in server:**

    # Watch for button clicks using the clicks counter
    observeEvent(input$my_button$clicks, {
      print(paste("Button clicked", input$my_button$clicks, "times"))
    })

    # Or watch for any change to the button
    observeEvent(input$my_button, {
      print("Button changed!")
    })

    # Access specific properties
    observeEvent(input$my_button, {
      is_disabled <- input$my_button$disabled
      click_count <- input$my_button$clicks
    })

## References

[Official
Documentation](https://developers.arcgis.com/calcite-design-system/components/button/)

## Examples

``` r
# Basic button
calcite_button(
  id = "my_button",
  "Click Me!"
)
#> <calcite-button id="my_button">Click Me!</calcite-button>

# Button with icon
calcite_button(
  "Save",
  icon_start = "save",
  appearance = "solid",
  kind = "brand"
)
#> <calcite-button appearance="solid" icon-start="save" kind="brand">Save</calcite-button>

# Outline button with icon at end
calcite_button(
  "Delete",
  icon_end = "trash",
  appearance = "outline",
  kind = "danger"
)
#> <calcite-button appearance="outline" icon-end="trash" kind="danger">Delete</calcite-button>

# Round icon-only button
calcite_button(
  icon_start = "plus",
  round = TRUE,
  label = "Add item"
)
#> <calcite-button icon-start="plus" label="Add item" round="TRUE"></calcite-button>

# Shiny example
if (interactive()) {
  library(shiny)

  ui <- div(
    calcite_button(
      id = "test_button",
      "Click Me!",
      appearance = "solid",
      kind = "brand"
    ),
    verbatimTextOutput("click_count")
  )

  server <- function(input, output, session) {
    # Watch for button clicks
    output$click_count <- renderText({
      paste("Button clicked", input$test_button$clicks, "times")
    })
  }

  shinyApp(ui, server)
}
```
