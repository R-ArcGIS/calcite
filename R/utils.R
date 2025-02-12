CALCITE_VERSION <- "2.7.1"
calcite_dependency <- function() {
  htmltools::htmlDependency(
    name = "calcite",
    version = CALCITE_VERSION,
    src = c(href = sprintf("https://js.arcgis.com/calcite-components/%s/", CALCITE_VERSION)),
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
#' \dontrun{
#' # this cannot work outside of shiny
#' if (interactive()) {
#'   # defined in the ui
#'   calcite_action(id = "action", icon = "Basemap", text = "Basemaps")
#'
#'   # ran in the server function
#'   update_calcite("action", active = FALSE)
#' }
#' }
update_calcite <- function(id, ..., session = shiny::getDefaultReactiveDomain()) {
  vals <- rlang::list2(...)
  session$sendInputMessage(id, vals)
}
