library(shiny)
library(calcite)



# Read data --------------------------------------------------------------
library(arcgislayers)
earthquakes <- arc_read("https://services9.arcgis.com/RHVPKKiFTONKtxq3/ArcGIS/rest/services/USGS_Seismic_Data_v1/FeatureServer/0")

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
      calcite_filter(id = "filter_id", placeholder = "Try searching Alaska", style = "l"),
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
  # In your Shiny app's UI
  shinyjs::useShinyjs(),
  # shinyjs::extendShinyjs(
  #   text = "
  #     $(document).ready(function() {
  #       var calciteFilter = document.querySelector('calcite-filter');
  #       calciteFilter.addEventListener('calciteFilterChange', function(e) {
  #         var itemsString = JSON.stringify(e.target.items);
  #         Shiny.setInputValue('calciteFilterChange', itemsString, {priority: 'event', debounce: 0, throttle: 0});
  #       });
  #     });
  #   ", functions = c()
  # ),
  shinyjs::extendShinyjs(
    text = "
      $(document).ready(function() {
        var calciteFilter = document.querySelector('calcite-filter');
        calciteFilter.addEventListener('calciteFilterChange', function(e) {
          console.log('calciteFilterChange event triggered');
          console.log('e.target.filteredItems:', e.target.filteredItems);
          var itemsString = JSON.stringify(e.target.filteredItems);
          Shiny.setInputValue('calciteFilterChange', itemsString, {priority: 'event'});
        });
      });
    ", functions = c()
  ),
  tags$script(
    HTML("
      document.addEventListener('DOMContentLoaded', function() {
        var calciteFilter = document.querySelector('calcite-filter');
        calciteFilter.addEventListener('calciteFilterChange', function(e) {
          console.log('calciteFilterChange event triggered');
          var itemsString = JSON.stringify(e.target.items);
          console.log('itemsString:', itemsString);
        });
      });
    ")
  )
)

server <- function(input, output) {
  observeEvent(input$calciteFilterChange, {
    print(RcppSimdJson::fparse(input$calciteFilterChange))
  })
}

shiny::shinyApp(ui, server)


# DO i need to do this somewhere in the package

# calcite_dep <- htmlDependency(
#   "calcitejs", "2.7.1",
#   src = "https://js.arcgis.com/calcite-components/2.7.1/calcite.esm.js",
#   script = list(
#     type = "module"
#   ),
# )
