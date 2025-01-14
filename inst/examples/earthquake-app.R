library(shiny)
library(calcite)
library(htmltools)
library(arcgisutils)

# Recreating this example:
# https://developers.arcgis.com/calcite-design-system/tutorials/filter-recent-earthquakes/

# read in our sample dataset
earthquakes <- sf::st_read(
  "https://github.com/R-ArcGIS/calcite/raw/refs/heads/main/dev/earthquakes.fgb"
)

# define our pagination size
page_size <- 12

# define some CSS styles to help make our card container pretty
container_css <- css(
  margin = "0.75rem",
  display = "grid",
  "grid-template-columns" = "repeat(auto-fit, minmax(300px, 1fr))",
  "grid-gap" = "1rem",
  "justify-content" = "space-evenly"
)


# Helper function to create a card for each filter result
# This takes a list item and creates a `calcite_card()`
make_card <- function(.x) {
  # extract the object ID
  .oid <- .x$attributes$OBJECTID

  # parse the date
  .date <- from_esri_date(.x$attributes$eventTime)

  # create a pretty formatted date
  .date_fmt <- format(.date, "%a %b %d %Y %H:%M:%S %Z")

  # extract longitude, latidue, and earthquake magnitude
  .lng <- .x$attributes$longitude
  .lat <- .x$attributes$latitude
  .mag <- .x$attributes$mag

  # create a url to open to that displays the loctation of the earthquake
  mapviewer_link <- paste0(
    "https://www.arcgis.com/apps/mapviewer/index.html?marker=", .lng, ";", .lat,
    ";4326;titleName;;Magnitude:", .mag,
    "&center=", .lng, ";", .lat, "&level=6"
  )

  # create the card now
  calcite_card(
    # we set the id to be `card-objectid`
    id = sprintf("card-%s", .oid),
    # fill the card's title slot with the place name in bold
    span(slot = "title", tags$b(.x$attributes$place)),
    # fill the card's subtitle slot using the pretty formatted date
    span(slot = "subtitle", sprintf("Occurred on: %s", .date_fmt)),
    # create a nice chip to display the magnitude
    calcite_chip(
      appearance = "outline-fill",
      scale = "s",
      kind = "inverse",
      icon = "graph-time-series",
      sprintf("Magnitude: %s", round(as.numeric(.x$attributes$mag), 2)),
      style = css("color" = "var(--calcite-color-status-danger)")
    ),
    # this button opens to the map viewer
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

# Helper function to update the cards displayed after filtering
# we use the `start_idx` to subset our items. this is found from our
# calcite_pagination() component
update_cards <- function(items, output, session, start_idx = 1) {
  # calculate how many items we have
  total <- length(items)

  # if we have 0 items we want to clear the container and change the message
  if (total == 0) {
    # set the `note` properties to danger
    update_calcite("note", kind = "danger", icon = "exclamation-mark-triangle", open = TRUE)
    # change the number of records container
    output$number_records <- renderUI(div("Sorry, 0 records found."))

    # Clear cards
    # render nothing for the cards
    output$cards <- renderUI(div(
      class = "card-container",
      style = container_css
    ))
  } else {
    # when we have >1 item we open the note and show how many items were found
    update_calcite("note", kind = "brand", icon = "information", open = TRUE)
    output$number_records <- renderUI(div(sprintf("%i records found.", total)))

    # here we calculate the end index of the cards
    end_idx <- min(start_idx + page_size - 1, total)

    # now we create our cards from the subset and render the HTML
    output$cards <- renderUI(
      div(
        tagList(
          !!!lapply(
            items[start_idx:end_idx],
            make_card
          )
        ),
        class = "card-container",
        style = container_css
      )
    )

    # we close the initial note here
    update_calcite("initial-note", open = FALSE)

    # Update pagination details
    update_calcite("pagination", totalItems = total, startItem = start_idx)
  }
}

# define the UI
ui <- calcite_shell(
  # Heading for the app
  calcite_panel(
    heading = "Earthquake results",
    "heading-level" = 1,
    description = "Search by location to display results",
    # filter provides search filtering
    calcite_filter(id = "filter_id", placeholder = "Try searching Alaska", style = "l"),
    # the initial notice to prompt userrs
    calcite_notice(
      id = "initial-note",
      icon = "information",
      open = TRUE,
      div(slot = "title", "Try searching a place of interest"),
      div(slot = "message", "Results will display when text is entered."),
      style = css(position = "relative", "margin" = "0.75rem")
    ),
    # the notice to show while searching
    calcite_notice(
      id = "note",
      htmlOutput("number_records", container = tags$div, slot = "title"),
      style = css(position = "relative", "margin" = "0.75rem")
    ),
    # this is where the cards go after we've filtered
    htmlOutput("cards"),
    # bottom pagination for search results
    calcite_pagination(id = "pagination", slot = "footer", "page-size" = page_size)
  )
)


server <- function(input, output, session) {
  # set the filter to have earthquakes as the items
  # we don't need the geometry for the UI so we drop it to be faster
  # use as_features to convert the dataframe into an array of elements for
  # javascript. Otherwise each column would be treated as an item
  quakes <- as_features(sf::st_drop_geometry(earthquakes))

  # set the items initially
  update_calcite("filter_id", items = quakes)

  # Observe filter value changes
  # this is ran whenever the search values change
  observeEvent(input$filter_id_value, {
    # the search value
    filter_value <- input$filter_id_value

    # the array of items returned from the filtering
    filtered_items <- input$filter_id_filteredItems$values

    if (!is.null(filter_value) && nzchar(filter_value)) {
      # Render the cards or show "0 records found"
      update_cards(filtered_items, output, session)
    } else {
      # here we open the initial note and clear the cards
      update_calcite("initial-note", open = TRUE)
      update_calcite("note", open = FALSE)
      output$cards <- renderUI(div(class = "card-container"))
    }
  })

  # when a user changes the page, we subset the filtered items
  # and render the cards
  observeEvent(input$pagination_startItem, {
    filtered_items <- input$filter_id_filteredItems$values
    if (!is.null(filtered_items)) {
      start_idx <- input$pagination_startItem$values
      update_cards(filtered_items, output, session, start_idx)
    }
  })
}

shinyApp(ui, server)
