# Update Calcite Component Properties

Updates the properties of the javascript Calcite component.

## Usage

``` r
update_calcite(id, ..., session = shiny::getDefaultReactiveDomain())
```

## Arguments

- id:

  the html ID of the element to update. Must be a character scalar.

- ...:

  named properties to be updated in the component. The names must match
  the property name. Otherwise, will fail silently.

- session:

  a shiny session object. Default
  [`shiny::getDefaultReactiveDomain()`](https://rdrr.io/pkg/shiny/man/domains.html).

## Value

NULL. Sends a message to the shiny session object.

## Examples

``` r
# this cannot work outside of shiny
if (interactive()) {
library(shiny)
ui <- calcite_shell(
  calcite_card(
    heading = "Content",
    calcite_label(
      layout = "inline",
      calcite_checkbox(id = "checked"),
      "Click me"
    )
  ),
  calcite_notice(
    id = "initial-note",
    div(slot = "title", "Nice!"),
    div(slot = "message", "This is a success message")
  )
)

server <- function(input, output, session) {
  observeEvent(input$checked_checked, {
    checked <- input$checked_checked$values
    # Update the `initial-note` property here
    update_calcite("initial-note", open = checked)
  })
}

# shinyApp(ui, server)
}
```
