library(shiny)

# Custom script and style ------------------------------------------------


custom_style <- "
.card-container {
  margin: 0.75rem;
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
  grid-gap: 1rem;
  justify-content: space-evenly;
}
calcite-chip {
  color: var(--calcite-color-status-danger);
}
calcite-notice {
  position: relative;
  margin: 0.75rem;
}
"

style_tag <- htmltools::tag("style", custom_style)


ui <- div(
  tags$script(
    src = "https://js.arcgis.com/calcite-components/2.7.1/calcite.esm.js",
    type = "module"
  ),
  tags$link(
    rel = "stylesheet",
    type = "text/css",
    href = "https://js.arcgis.com/calcite-components/2.7.1/calcite.css"
  ),
  style_tag,
  calcite_shell(
    calcite_panel(
      heading = "Earthquake results",
      "heading-level" = 1,
      description = "Search by location to display results",
      calcite_filter(placeholder = "Try searching Alaska"),
      calcite_notice(
        id = "initial-note", icon = "information",
        open = NA,
        div(slot = "title", "Try searching a place of interest"),
        div(slot = "message", "Results will display when text is entered.")
      ),
      calcite_notice(
        id = "note",
        div(id = "number-records", slot = "title")
      ),
      div(class = "card-container"),
      calcite_pagination(slot = "footer", "page-size" = 12, style = "visibility:hidden")
    )
  ),
  htmltools::includeScript("dev/helper.js"),
)

server <- function(input, output) {
}

shiny::shinyApp(ui, server)
