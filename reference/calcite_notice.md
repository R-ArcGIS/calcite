# Create a Calcite Notice Component

Creates a notice component for displaying informative, contextually
relevant messages. Best for persistent information that can be open at
page load or displayed as a result of user action.

## Usage

``` r
calcite_notice(
  ...,
  id = NULL,
  open = NULL,
  closable = NULL,
  icon = NULL,
  icon_flip_rtl = NULL,
  kind = NULL,
  scale = NULL,
  width = NULL
)
```

## Arguments

- ...:

  Child content for slots (title, message, link, actions-end)

- id:

  Component ID (required for Shiny reactivity)

- open:

  Whether the notice is visible (default: FALSE)

- closable:

  Whether to show a close button (default: FALSE)

- icon:

  Show default icon (TRUE) or specific icon name (string)

- icon_flip_rtl:

  Flip icon in RTL languages (default: FALSE)

- kind:

  Type of notice: "brand", "danger", "info", "success", or "warning"

- scale:

  Size of the component: "s" (small), "m" (medium), or "l" (large)

- width:

  Width behavior: "auto" or "full" (note: "half" is deprecated)

## Value

An object of class `calcite_component`

## Details

### Shiny Integration

The notice emits events when opened or closed, making it easy to track
state and respond to user dismissals.

**Available properties in `input$id`:**

- `$open` - Whether the notice is currently visible

- `$closable` - Whether the notice can be closed

- `$kind` - The type of notice

- Other component properties

**Basic usage:**

    calcite_notice(
      id = "my_notice",
      open = TRUE,
      closable = TRUE,
      kind = "success",
      icon = TRUE,
      div(slot = "title", "Success!"),
      div(slot = "message", "Your changes have been saved.")
    )

    # In server - detect when user closes the notice
    observeEvent(input$my_notice$open, {
      if (!input$my_notice$open) {
        message("User dismissed the notice")
      }
    })

**Show/hide from server:**

    # Show a notice
    update_calcite("my_notice", open = TRUE)

    # Hide a notice
    update_calcite("my_notice", open = FALSE)

### Slots

The notice supports several slots for organizing content:

- **title**: The notice title

- **message**: The notice message

- **link**: A calcite-action for links like "Read more"

- **actions-end**: Additional actions (recommended: 2 or fewer)

### Best Practices

- Use for informative, contextually relevant information

- Can be open at page load or shown based on user action

- Can be persistent or closable

- Use appropriate `kind` to convey message severity

## References

[Official
Documentation](https://developers.arcgis.com/calcite-design-system/components/notice/)

## Examples

``` r
# Basic notice
calcite_notice(
  open = TRUE,
  icon = TRUE,
  closable = TRUE,
  div(slot = "title", "New feature available"),
  div(slot = "message", "Check out the reporting dashboard")
)
#> Error in div(slot = "title", "New feature available"): could not find function "div"

# Notice with specific icon and kind
calcite_notice(
  open = TRUE,
  kind = "danger",
  icon = "exclamation-mark-triangle",
  div(slot = "title", "Error in form"),
  div(slot = "message", "Please correct the highlighted fields")
)
#> Error in div(slot = "title", "Error in form"): could not find function "div"

# Notice with action link
calcite_notice(
  open = TRUE,
  icon = "layers-reference",
  div(slot = "title", "Try this trick"),
  div(slot = "message", "Select multiple layers at once"),
  calcite_link(slot = "link", title = "my action", "Read more")
)
#> Error in div(slot = "title", "Try this trick"): could not find function "div"

# Shiny example with server control
if (interactive()) {
  library(shiny)

  ui <- calcite_shell(
    calcite_panel(
      heading = "Notice Demo",

      calcite_notice(
        id = "my_notice",
        open = FALSE,
        closable = TRUE,
        kind = "success",
        icon = TRUE,
        div(slot = "title", "Success!"),
        div(slot = "message", "Your action completed successfully")
      ),

      calcite_button(
        id = "show_notice",
        "Show Notice"
      ),

      verbatimTextOutput("notice_status")
    )
  )

  server <- function(input, output, session) {
    # Show notice when button clicked
    observeEvent(input$show_notice$clicked, {
      update_calcite("my_notice", open = TRUE)
    })

    # Track notice state
    output$notice_status <- renderPrint({
      list(
        is_open = input$my_notice$open,
        kind = input$my_notice$kind
      )
    })
  }

  shinyApp(ui, server)
}
```
