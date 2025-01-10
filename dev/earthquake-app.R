library(shiny)
library(calcite)
library(arcgislayers)
# https://developers.arcgis.com/calcite-design-system/tutorials/filter-recent-earthquakes/
# Read data --------------------------------------------------------------
# earthquakes <- arc_read("https://services9.arcgis.com/RHVPKKiFTONKtxq3/ArcGIS/rest/services/USGS_Seismic_Data_v1/FeatureServer/0")

earthquakes <- sf::st_read("dev/earthquakes.fgb")

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
#"

style_tag <- htmltools::tag("style", custom_style)


make_card <- function(.x) {
  .oid <- .x$attributes$OBJECTID
  .date <- arcgisutils::from_esri_date(.x$attributes$eventTime)
  .date_fmt <- format(.date, "%a %b %d %Y %H:%M:%S %Z")

  .lng <- .x$attributes$longitude
  .lat <- .x$attributes$latitude
  .mag <- .x$attributes$mag

  mapviewer_link <- paste0(
    "https://www.arcgis.com/apps/mapviewer/index.html?marker=", .lng, ";", .lat,
    ";4326;titleName;;Magnitude:", .mag,
    "&center=", .lng, ";", .lat, "&level=6"
  )

  calcite_card(
    id = sprintf("card-%s", .oid),
    tags$span(slot = "title", tags$b(.x$attributes$place)),
    tags$span(slot = "subtitle", sprintf("Occurred on: %s", .date_fmt)),
    calcite_chip(
      appearance = "outline-fill",
      scale = "s",
      kind = "inverse",
      icon = "graph-time-series",
      sprintf("Magnitude: %s", .x$attributes$mag)
    ),
    calcite_button(
      label = "Open in map",
      "icon-end" = "launch",
      slot = "footer-end",
      target = "_blank",
      width = "full",
      href = mapviewer_link,
      "Open in map"
    )
  )
}


ui <- div(
  calcite_setup(),
  tags$head(
    suppressDependencies("bootstrap"),
    includeScript("www/calcite-bindings.js"),
    style_tag
  ),
  calcite_shell(
    calcite_panel(
      heading = "Earthquake results",
      "heading-level" = 1,
      description = "Search by location to display results",
      calcite_filter(id = "filter_id", placeholder = "Try searching Alaska", style = "l"),
      calcite_notice(
        id = "initial-note", icon = "information",
        open = TRUE,
        div(slot = "title", "Try searching a place of interest"),
        div(slot = "message", "Results will display when text is entered.")
      ),
      calcite_notice(
        id = "note",
        htmlOutput("number_records", container = tags$div, slot = "title")
      ),
      htmlOutput("tst"),
      calcite_pagination(slot = "footer", "page-size" = 12)
    )
  ),
  verbatimTextOutput("items_output") # Output to display filtered items
)

server <- function(input, output, session) {
  # set the filter to have earthquakes as the items
  # we don't need the geometry for the UI so we drop it to be faster
  quakes <- arcgisutils::as_features(sf::st_drop_geometry(earthquakes[1:100, ]))
  # set the items
  update_calcite("filter_id", session, items = quakes)

  # we want to observe the filter input
  observeEvent(input$filter_id_value, {
    # extract the values from filteredItems property
    items <- input$filter_id_filteredItems$values

    # count how many features are present
    n <- length(items)

    # if more than 0 we render the cards
    if (n > 0 && nzchar(input$filter_id_value)) {
      output$tst <- renderUI(
        div(tagList(!!!lapply(items, make_card)), class = "card-container")
      )
      update_calcite("note", session, kind = "brand", icon = "information", open = TRUE)
      update_calcite("initial-note", session, open = FALSE)
    } else {
      output$tst <- renderUI(
        div(class = "card-container")
      )
    }

    if (!nzchar(input$filter_id_value)) {
      update_calcite("initial-note", session, open = TRUE)
      update_calcite("note", session, open = FALSE)
    }

    output$number_records <- renderUI(div(sprintf("%i records found.", n)))
  })
}

shiny::shinyApp(ui, server)
