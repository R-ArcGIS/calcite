# this function is used to ensure that each component is named
check_dots_named <- function(dots, call = rlang::caller_env()) {
  print(dots)
  if (length(dots) == 0) {
    return(invisible(NULL))
  }

  if (!rlang::is_named2(dots)) {
    cli::cli_abort(
      "All arguments provided to {.arg ...} must be named",
      call = call
    )
  }
  invisible(dots)
}

calcite_dependency <- function() {
  # htmltools::htmlDependency(
  #   name = "calcite",
  #   version = "2.7.1", 
  #   src = c(file = system.file("calcite", package = "calcite")),
  #   script = list(src = "calcite.esm.js", type = "module"),
  #   stylesheet = "calcite.css",
  #   all_files = TRUE
  # )
}


calcite_setup <- function() {
  shiny::singleton(use_calcite())
}

# Helper function to include the dependency
use_calcite <- function() {
  htmltools::tagList(  tags$script(
    src = "https://js.arcgis.com/calcite-components/2.7.1/calcite.esm.js",
    type = "module"
  ),
  tags$link(
    rel = "stylesheet",
    type = "text/css",
    href = "https://js.arcgis.com/calcite-components/2.7.1/calcite.css"
  ))
}

