library(shiny)
library(calcite)


ui <- fluidPage(
  calcite_setup(),  # Ensure calcite is properly initialized
  tags$head(
    # Include your custom JavaScript file for the calcite filter binding
    includeScript("www/calcite-filter-binding.js"),
    includeScript("www/calcite-loader-binding.js"),
    includeScript("www/calcite-meter-binding.js")
  ),
  div(
    calcite_filter(
      id = "filter_id", 
      placeholder = "Try searching Alaska", 
      style = "l"
    ),
    calcite_link("This is a link", href = "https://google.com"),
    calcite_loader(id = "my-loader", type = "determinate"),
    calcite_meter(id = "my-meter", label="Example meter", value="15"),
    actionButton("get_items", "Get Items"),  # Button to trigger JS to fetch items
    verbatimTextOutput("items_output")  # Output to display filtered items
  )
)

# I think i can use this generically for _any_ component....
update_calcite_filter <- function(id, session, ...) {
  # session <- rlang::env_get(rlang::caller_env(), "session")
  vals <- rlang::list2(...)
  session$sendInputMessage(id, vals)
}

server <- function(input, output, session) {
  update_calcite_filter(
    "filter_id",
    session,
    items = arcgisutils::as_features(iris)
  )

  update_calcite_filter("my-loader", session, text = "This is a label")

  # update loader component
   # Function to update the value asynchronously
   update_value <- function(i) {
    if (i <= 100) {
      update_calcite_filter("my-loader", session, value = as.character(i))
      update_calcite_filter("my-meter", session, value = as.character(i))
      later::later(function() update_value(i + 1), 0.5) # Schedule the next update
    }
  }
  # Start the updates
  update_value(1)

  observeEvent(input$filter_id_value, {
    cat(input$filter_id)
    output$items_output <- renderText(input$filter_id_value)
  })
}

shinyApp(ui, server)


