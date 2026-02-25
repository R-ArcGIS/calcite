CALCITE_VERSION <- "3.3.3"
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
#' # shinyApp(ui, server)
#' }
#' @returns NULL. Sends a message to the shiny session object.
update_calcite <- function(
  id,
  ...,
  session = shiny::getDefaultReactiveDomain()
) {
  vals <- rlang::list2(...)
  session$sendInputMessage(id, vals)
}


# print.calcite_component <- function(x, ...) {
#   if (interactive()) {
#     htmltools::browsable(x)
#   }
#   x
# }

compact <- function(.x) {
  Filter(length, .x)
}


# Helper to add slot attribute if content exists
add_slot <- function(content, slot_name) {
  if (is.null(content)) {
    return(NULL)
  }

  # If content is already a tag, add/override the slot attribute
  if (inherits(content, "shiny.tag")) {
    content$attribs$slot <- slot_name
    return(content)
  }

  # If it's a list of tags, add slot to each
  if (is.list(content)) {
    return(lapply(content, function(x) {
      if (inherits(x, "shiny.tag")) {
        x$attribs$slot <- slot_name
      }
      x
    }))
  }

  # Otherwise wrap in div with slot
  htmltools::div(slot = slot_name, content)
}

#' Calcite examples
#'
#' @param name the example name (without `.R` extension). See [list_examples()].
#' @name examples
#' @export
#' @examples
#' list_examples()
#'
#' if (interactive()) {
#'   open_example()
#'   run_example("calcite-checkbox")
#' }
list_examples <- function() {
  examples <- list.files(
    system.file("examples", package = "calcite"),
    pattern = "\\.R$"
  )
  tools::file_path_sans_ext(examples)
}

read_example <- function(name) {
  rlang::check_installed("brio")
  examples_dir <- system.file("examples", package = "calcite")
  path <- file.path(examples_dir, paste0(name, ".R"))

  if (!file.exists(path)) {
    cli::cli_abort(c(
      "Example {.val {name}} not found.",
      "i" = "Use {.fn list_examples} to see available examples."
    ))
  }

  text <- brio::read_file(path)
  text <- gsub("devtools::load_all\\(\\)", "library(calcite)", text)
  if (!grepl("library(calcite)", text, fixed = TRUE)) {
    text <- paste0("library(calcite)\n", text)
  }
  text
}

#' @rdname examples
#' @export
run_example <- function(name) {
  rlang::check_installed("shiny")
  text <- read_example(name)
  tmp <- tempfile(fileext = ".R")
  brio::write_file(text, tmp)
  shiny::runApp(tmp)
  invisible(NULL)
}

#' @rdname examples
#' @export
open_example <- function(name = NULL) {
  rlang::check_installed("rstudioapi")

  examples <- list_examples()

  if (is.null(name)) {
    chosen <- utils::menu(examples, title = "Choose an example")
    if (chosen == 0) return(invisible())
    name <- examples[chosen]
  }

  cli::cli_inform(c(
    "*" = "Opening new file with example {.file {paste0(name, '.R')}}",
    "i" = "Please replace {.fn devtools::load_all} with {.code library(calcite)}"
  ))

  rstudioapi::documentNew(read_example(name))
}
