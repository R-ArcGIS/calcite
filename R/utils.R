CALCITE_VERSION <- "2.7.1"
calcite_dependency <- function() {
  htmltools::htmlDependency(
    name = "calcite",
    version = CALCITE_VERSION,
    src = c(
      href = sprintf(
        "https://js.arcgis.com/calcite-components/%s/",
        CALCITE_VERSION
      )
    ),
    script = list(src = "calcite.esm.js", type = "module"),
    stylesheet = "calcite.css"
  )
}


calcite_bindings <- function() {
  htmltools::htmlDependency(
    name = "calcite-binding",
    version = CALCITE_VERSION,
    src = c(file = system.file("www", package = "calcite")),
    script = "calcite-bindings.js"
  )
}

#' Calcite components version
#'
#' Reports the currently used calcite component version.
#'
#' @export
#' @examples
#' calcite_version()
#' @returns a character scalar
calcite_version <- function() {
  CALCITE_VERSION
}

#' Update Calcite Component Properties
#'
#' Updates the properties of the javascript Calcite component.
#'
#' @param id the html ID of the element to update. Must be a character scalar.
#' @param ... named properties to be updated in the component. The names must match the property name. Otherwise, will fail silently.
#' @param session a shiny session object. Default [shiny::getDefaultReactiveDomain()].
#' @export
#' @examples

#' # this cannot work outside of shiny
#' if (interactive()) {
#' library(shiny)
#' ui <- calcite_shell(
#'   calcite_card(
#'     heading = "Content",
#'     calcite_label(
#'       layout = "inline",
#'       calcite_checkbox(id = "checked"),
#'       "Click me"
#'     )
#'   ),
#'   calcite_notice(
#'     id = "initial-note",
#'     div(slot = "title", "Nice!"),
#'     div(slot = "message", "This is a success message")
#'   )
#' )
#'
#' server <- function(input, output, session) {
#'   observeEvent(input$checked_checked, {
#'     checked <- input$checked_checked$values
#'     # Update the `initial-note` property here
#'     update_calcite("initial-note", open = checked)
#'   })
#' }
#'
#' shinyApp(ui, server)
#' }
update_calcite <- function(
  id,
  ...,
  session = shiny::getDefaultReactiveDomain()
) {
  vals <- rlang::list2(...)
  session$sendInputMessage(id, vals)
}
