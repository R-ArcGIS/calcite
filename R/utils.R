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
  htmltools::singleton(
    htmltools::includeScript(
      system.file("www", "calcite-bindings.js", package = "calcite")
    )
  )
}

#' @export
calcite_version <- function() {
  CALCITE_VERSION
}

#' Update Calcite Component Properties
#'
#' @export
update_calcite <- function(id, session, ...) {
  vals <- rlang::list2(...)
  session$sendInputMessage(id, vals)
}
