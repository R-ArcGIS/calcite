# parse the json from the esm.js file (manually extracted and stored in components.json)
comps_raw <- RcppSimdJson::fload("data-raw/components.json") |>
  lapply(`[[`, c(2))


# function to extract a component
extract_component <- function(.y) {
  flattened <- unlist(.y, recursive = FALSE)
  list(
    component_name = .y[[2]],
    component_properties = names(flattened)[nzchar(names(flattened))]
  )
}


comps_parsed <- comps_raw |>
  lapply(\(.x) lapply(.x, extract_component)) |>
  unlist(recursive = FALSE)


# get the raw component names
calcite_component_names <- vapply(comps_parsed, `[[`, character(1), 1)

# convert to lower camel for the R function name
calcite_component_fn_name <- snakecase::to_snake_case(calcite_component_names)

# get the properties for each. These are the
# valid parameters that can be passed.
calcite_component_properties <- lapply(
  comps_parsed, `[[`, "component_properties"
) |>
  lapply(snakecase::to_any_case, sep_out = "-")


# this function creates a string that represents the function definition
create_component_string <- function(.fn, .comp, .attrs) {
  .attr <- paste0(
    constructive::construct(unlist(.attrs))[["code"]],
    collapse = "\n"
  )

  glue_format <- r"-(
    #' @export
    #' @rdname components
    .{.fn.} <- function(..., .noWS = NULL, .renderHook = NULL) {

      # dots <- rlang::dots_list(...)
      # dots_names <- names(dots)
      known_properties <- .{.attr.}
      # valid_names <- dots_names %in% c("", known_properties)
      # bad_names <- dots_names[!valid_names]

      # if (!all(valid_names)) {
      #   cli::cli_abort(
      #     c(
      #       "Unexpected attribute{?s}: {.code {bad_names}}",
      #       "i" = "expected one of {.var {known_properties}}"
      #     )
      #   )
      # }

      contents <- rlang::dots_list(...)

      htmltools::tag(".{.comp.}", contents, .noWS = .noWS, .renderHook = .renderHook)
    }
    )-"

  glue::glue(glue_format, .open = ".{", .close = ".}")
}


# construct all of the components
all_component_functions <- Map(
  create_component_string,
  calcite_component_fn_name,
  calcite_component_names,
  calcite_component_properties
)


to_write <- unlist(all_component_functions, use.names = FALSE)
brio::write_file(paste0(to_write, collapse = "\n"), "R/components-generated.R")
