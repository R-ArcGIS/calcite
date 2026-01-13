# Create a Calcite Switch Component

Creates a switch component for "on" and "off" choices. Switches should
be used for boolean choices and can be useful for opt-in and additive
actions.

## Usage

``` r
calcite_switch(
  id = NULL,
  checked = NULL,
  disabled = NULL,
  form = NULL,
  label = NULL,
  label_text_end = NULL,
  label_text_start = NULL,
  name = NULL,
  scale = NULL,
  value = NULL,
  ...
)
```

## Arguments

- id:

  Optional ID for the switch (required for Shiny reactivity)

- checked:

  When TRUE, the component is checked

- disabled:

  When TRUE, interaction is prevented and the component is displayed
  with lower opacity

- form:

  The id of the form that will be associated with the component

- label:

  Accessible name for the component

- label_text_end:

  When provided, displays label text at the end of the component

- label_text_start:

  When provided, displays label text at the start of the component

- name:

  Specifies the name of the component. Required to pass the component's
  value on form submission

- scale:

  Specifies the size of the component: "s" (small), "m" (medium), or "l"
  (large)

- value:

  The component's value

- ...:

  Additional attributes passed to the component

## Value

An object of class `calcite_component`

## Details

### Shiny Integration

When used in a Shiny app, `calcite_switch()` returns a reactive list
containing all component properties. You can observe the entire
component state or watch individual properties:

**Available properties:**

- `$checked` - Whether the switch is currently checked (on/off)

- `$disabled` - Whether the switch is disabled

- `$value` - The switch's value

- `$name` - The component's name

- Other component properties

**Usage in server:**

    # Watch for changes to the switch
    observeEvent(input$my_switch, {
      print(paste("Switch is:", if(input$my_switch$checked) "ON" else "OFF"))
    })

    # Access the checked state directly
    observeEvent(input$my_switch$checked, {
      if (input$my_switch$checked) {
        print("Switch turned ON")
      } else {
        print("Switch turned OFF")
      }
    })

## References

[Official
Documentation](https://developers.arcgis.com/calcite-design-system/components/switch/)

## Examples

``` r
# Basic switch
calcite_switch(
  id = "my_switch",
  label = "Enable 3D mode"
)
#> <calcite-switch id="my_switch" label="Enable 3D mode"></calcite-switch>

# Switch with label text on both sides
calcite_switch(
  id = "theme_switch",
  label_text_start = "Light",
  label_text_end = "Dark",
  label = "Theme toggle"
)
#> <calcite-switch id="theme_switch" label="Theme toggle" label-text-end="Dark" label-text-start="Light"></calcite-switch>

# Checked switch at large scale
calcite_switch(
  checked = TRUE,
  scale = "l",
  label = "Notifications"
)
#> <calcite-switch checked="TRUE" label="Notifications" scale="l"></calcite-switch>

# Shiny example
if (interactive()) {
  library(shiny)

  ui <- calcite_shell(
    calcite_panel(
      heading = "Switch Example",

      calcite_label(
        layout = "inline",
        "3D Off",
        calcite_switch(id = "mode_switch"),
        "3D On"
      ),

      verbatimTextOutput("status")
    )
  )

  server <- function(input, output, session) {
    # Display switch state
    output$status <- renderPrint({
      input$mode_switch
    })
  }

  shinyApp(ui, server)
}
```
