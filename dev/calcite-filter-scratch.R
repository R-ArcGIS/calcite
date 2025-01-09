library(shiny)
library(calcite)
library(arcgislayers)
library(shinyjs)

ui <- div(
  useShinyjs(),  
  calcite_setup(),
  calcite_filter(
    id = "filter_id", 
    placeholder = "Try searching Alaska", 
    style = "l",
  ),
  actionButton("get_items", "Get Items"),  # Button to trigger JS to fetch items
  verbatimTextOutput("items_output")  # Output 
)

shinyApp(ui, function(input, output, session){
  runjs(set_calcite_filter_items("filter_id", arcgisutils::as_esri_featureset(iris)))
  observeEvent(input$get_items, {
    # Use the helper function to run JS code and get the items
    runjs(get_calcite_filter_items("filter_id"))
  })
  
  output$items_output <- renderText({
    input$filter_id_items  # Output the received items from JavaScript
  })

})

set_calcite_filter_items <- function(inputId, items_json) {
  # JavaScript to set the 'items' property from a JSON string
  js_code <- sprintf(
    "
    var filterElement = document.getElementById('%s');
    if (filterElement) {
      var items = JSON.parse('%s');
      filterElement.items = items;  // Set the items property
    }
    ",
    inputId, items_json
  )
  runjs(js_code)
}

get_calcite_filter_items <- function(inputId) {
  # JavaScript code to get the 'items' property from the calcite-filter component
  js_code <- sprintf(
    "
    var filterElement = document.getElementById('%s');
    var items = filterElement.items;  // Access the items property
    Shiny.setInputValue('%s_items', JSON.stringify(items));  // Send items to R
    ",
    inputId, inputId
  )
  runjs(js_code)
}


