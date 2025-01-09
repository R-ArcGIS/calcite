#' @export
#' @rdname components
calcite_filter <- function(..., .noWS = NULL, .renderHook = NULL) {
  contents <- rlang::dots_list(...)
  htmltools::attachDependencies(
    htmltools::tag("calcite-filter", contents, .noWS = .noWS, .renderHook = .renderHook),
    calcite_dependency()
  )
}

