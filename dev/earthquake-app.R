library(shiny)
library(calcite)
library(htmltools)
library(arcgislayers)

# https://developers.arcgis.com/calcite-design-system/tutorials/filter-recent-earthquakes/
# Read data --------------------------------------------------------------
# earthquakes <- arc_read("https://services9.arcgis.com/RHVPKKiFTONKtxq3/ArcGIS/rest/services/USGS_Seismic_Data_v1/FeatureServer/0")

earthquakes <- sf::st_read("dev/earthquakes.fgb")
page_size <- 12

container_css <- css(
  margin = "0.75rem",
  display = "grid",
  "grid-template-columns" = "repeat(auto-fit, minmax(300px, 1fr))",
  "grid-gap" = "1rem",
  "justify-content" = "space-evenly"
)


# Helper function to create a card
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
      sprintf("Magnitude: %s", round(as.numeric(.x$attributes$mag), 2)),
      style = css("color" = "var(--calcite-color-status-danger)")
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


update_cards <- function(items, output, session, start_idx = 1) {
  total <- length(items)
  if (total == 0) {
    update_calcite("note", session, kind = "danger", icon = "exclamation-mark-triangle", open = TRUE)
    output$number_records <- renderUI(div("Sorry, 0 records found."))
    output$tst <- renderUI(div(
      class = "card-container",
      style = container_css
    )) # Clear cards
  } else {
    update_calcite("note", session, kind = "brand", icon = "information", open = TRUE)
    output$number_records <- renderUI(div(sprintf("%i records found.", total)))

    end_idx <- min(start_idx + page_size - 1, total)
    output$tst <- renderUI(
      div(tagList(!!!lapply(items[start_idx:end_idx], make_card)), class = "card-container", style = container_css)
    )

    update_calcite("initial-note", session, open = FALSE)
    # Update pagination details
    update_calcite("pagination", session, totalItems = total, startItem = start_idx)
  }
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
        div(slot = "message", "Results will display when text is entered."),
        style = css(position = "relative", "margin" = "0.75rem")
      ),
      calcite_notice(
        id = "note",
        htmlOutput("number_records", container = tags$div, slot = "title"),
        style = css(position = "relative", "margin" = "0.75rem")
      ),
      htmlOutput("tst"),
      calcite_pagination(id = "pagination", slot = "footer", "page-size" = page_size)
    )
  ),
)


server <- function(input, output, session) {
  # set the filter to have earthquakes as the items
  # we don't need the geometry for the UI so we drop it to be faster
  quakes <- arcgisutils::as_features(sf::st_drop_geometry(earthquakes))
  # set the items
  update_calcite("filter_id", session, items = quakes)


  # Observe filter value changes
  observeEvent(input$filter_id_value, {
    filter_value <- input$filter_id_value
    filtered_items <- input$filter_id_filteredItems$values

    if (!is.null(filter_value) && nzchar(filter_value)) {
      update_cards(filtered_items, output, session) # Render the cards or show "0 records found"
    } else {
      update_calcite("initial-note", session, open = TRUE)
      update_calcite("note", session, open = FALSE)
      output$tst <- renderUI(div(class = "card-container")) # Clear cards
    }
  })

  observeEvent(input$pagination_startItem, {
    filtered_items <- input$filter_id_filteredItems$values
    if (!is.null(filtered_items)) {
      start_idx <- input$pagination_startItem$values
      update_cards(filtered_items, output, session, start_idx)
    }
  })
}

shiny::shinyApp(ui, server)
