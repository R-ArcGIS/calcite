#' Create a Calcite Scrim Component
#'
#' Scrims are an overlay placed on top of content to show disabled or loading
#' states. By default, Scrim positions to the extent of its closest parent.
#' To display a Scrim with custom positioning, add `position: relative` styling
#' to its closest parent container.
#'
#' @param ... Main content for the scrim (default slot — primarily loading information)
#' @param id Component ID (required for Shiny reactivity)
#' @param loading When `TRUE`, a busy indicator is displayed in the center. Default: `FALSE`.
#'
#' @details
#' ## Shiny Integration
#'
#' When given an `id`, the scrim reports its state as `input$id` — a named list:
#' - `$loading` — logical, whether the loading indicator is shown
#'
#' Use `update_calcite(id, loading = TRUE/FALSE)` to toggle the loading state
#' from the server.
#'
#' ## Positioning
#'
#' Scrim fills its closest positioned parent. Wrap the area you want to cover
#' in a container with `position: relative` so the scrim covers the right region.
#'
#' @export
#' @return An object of class `calcite_component` which is a subclass of `shiny.tag`
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/scrim/)
#' @examples
#' calcite_scrim(id = "my_scrim", loading = TRUE)
calcite_scrim <- function(
  ...,
  id = NULL,
  loading = FALSE
) {
  if (!rlang::is_scalar_logical(loading)) {
    cli::cli_abort("{.arg loading} must be a scalar logical.")
  }

  attribs <- compact(list(
    id = id,
    loading = if (isTRUE(loading)) loading else NULL
  ))

  scrim_binding <- htmltools::htmlDependency(
    name = "calcite-scrim-binding",
    version = calcite_version(),
    src = c(file = system.file("www", package = "calcite")),
    script = "calcite-scrim.js"
  )

  res <- htmltools::tag(
    "calcite-scrim",
    c(
      attribs,
      rlang::dots_list(...),
      list(calcite_dependency(), scrim_binding)
    )
  )

  class(res) <- c("calcite_component", class(res))
  res
}
