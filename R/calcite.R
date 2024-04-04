#' calcite
#' 
#' Incremental button.
#' 
#' @param inputId Id of input.
#' @param value Initial value.
#' 
#' @examples 
#' library(shiny)
#' 
#' ui <- fluidPage(
#'  calciteInput("theId", 0)
#' )
#' 
#' server <- function(input, output){
#' 
#'  observeEvent(input$theId, {
#'    print(input$theId)
#'  })
#' 
#' }
#' 
#' if(interactive())
#'  shinyApp(ui, server)
#' 
#' @importFrom shiny tags tagList
#' 
#' @export 
calciteInput <- function(inputId, value = 0){

  stopifnot(!missing(inputId))
  stopifnot(is.numeric(value))

  dep <- htmltools::htmlDependency(
    name = "calciteBinding",
    version = "1.0.0",
    src = c(file = system.file("packer", package = "calcite")),
    script = "calcite.js"
  )

  tagList(
    dep,
    tags$button(
      id = inputId,
      class = "calciteBinding btn btn-default",
      type = "button",
      value
    )
  )
}
