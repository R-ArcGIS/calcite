# parse the json from the esm.js file (manually extracted and stored in components.json)
comps_raw <- RcppSimdJson::fload("data-raw/components.json") |>
  lapply(`[[`, c(2, 1))

# get the raw component names
calcite_component_names <- vapply(comps_raw, `[[`, character(1), 2)

# convert to lower camel for the R function name
calcite_component_fn_name <- snakecase::to_lower_camel_case(calcite_component_names)

# get the properties for each. These are the
# valid parameters that can be passed.
calcite_component_properties <- lapply(
  comps_raw, \(.x) names(.x[[3]])
) |>
  lapply(snakecase::to_any_case, sep_out = "-")

# this function is used to ensure that each component is named
check_dots_named <- function(dots, call = rlang::caller_env()) {
  if (length(dots) == 0) {
    return(invisble(NULL))
  }

  if (!rlang::is_named2(dots)) {
    cli::cli_abort(
      "All arguments provided to {.arg ...} must be named",
      call = call
    )
  }
  invisible(dots)
}


# this function creates a string that represents the function definition
create_component_string <- function(.fn, .comp, .attrs) {
  .attr <- paste0(
    constructive::construct(unlist(.attrs))[["code"]],
    collapse = "\n"
  )

  glue_format <- r"-(
    #' @export
    #' @rdname components
    .{.fn.} <- function(id, ..., .noWS = NULL, .renderHook = NULL) {

      dots <- rlang::dots_list(...)
      dots_names <- names(dots)
      known_properties <- .{.attr.}
      valid_names <- dots_names %in% c("", known_properties)
      bad_names <- dots_names[!valid_names]

      if (!all(valid_names)) {
        cli::cli_abort(
          c(
            "Unexpected attribute{?s}: {.code {bad_names}}",
            "i" = "expected one of {.var {known_properties}}"
          )
        )
      }

      htmltools::tag(".{.comp.}", c(id = id, dots), .noWS = .noWS, .renderHook = .renderHook)
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
