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

#' @export
calcite_version <- function() {
  CALCITE_VERSION
}

#' Update Calcite Component Properties
#'
#' @export
update_calcite <- function(id, ..., session = shiny::getDefaultReactiveDomain()) {
  vals <- rlang::list2(...)
  session$sendInputMessage(id, vals)
}
