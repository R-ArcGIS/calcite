library(gh)

# Define repository details
repo <- "Esri/calcite-design-system"
path <- "packages/calcite-components/src/components"

# List all folders in the components directory
contents <- gh(
  "GET /repos/{owner}/{repo}/contents/{path}",
  owner = "Esri",
  repo = "calcite-design-system",
  path = path
)


component_paths <- Filter(function(.x) {
  .x[["type"]] == "dir"
}, contents) |>
  lapply(`[[`, "path") |>
  unlist()


parse_readme <- function(path) {
  component_info <- rlang::try_fetch(gh(
    "GET /repos/{owner}/{repo}/contents/{path}",
    owner = "Esri",
    repo = "calcite-design-system",
    path = path
  ), error = function(e) {
    NULL
  })

  if (is.null(component_info)) {
    return(NULL)
  }

  res <- component_info$content |>
    strsplit("\n") |>
    lapply(b64::decode) |>
    unlist() |>
    rawToChar()

  html <- litedown::mark(text = res) |>
    rvest::read_html()


  meta <- setNames(rvest::html_table(html), table_names(html))
  meta
}


table_names <- function(html) {
  all_tags <- html |>
    rvest::html_node("body") |>
    rvest::html_children()
  tag_types <- rvest::html_name(all_tags)
  res <- character()
  xx <- c(FALSE, FALSE)
  for (i in seq_along(all_tags)) {
    tag <- all_tags[[i]]
    typ <- tag_types[[i]]


    if (typ == "h2") {
      table_name <- rvest::html_text(tag)
      xx <- c(T, F)
    }

    if (typ == "table") {
      xx[2] <- TRUE
    }

    if (all(xx)) {
      res <- c(res, table_name)
      xx <- c(F, F)
    }
  }

  tolower(res)
}


all_readme_paths <- file.path(component_paths, "readme.md")
all_meta <- lapply(all_readme_paths, parse_readme)

component_name <- paste0("calcite-", vapply(strsplit(component_paths, "/"), `[[`, character(1), 5))


# Create Calcite Bindings JS ---------------------------------------------

fmt_component <- function(.name, .meta) {
  fmt <- "// Component: %s
createCalciteInputBinding(\"%s\", \"%s\", %s, %s)
"
  sprintf(
    fmt,
    .name,
    heck::to_lower_camel_case(.name),
    .name,
    yyjsonr::write_json_str(.meta$properties$Property),
    yyjsonr::write_json_str(.meta$events$Event)
  )
}

# Copy and paste into www/calcite-bindings.js
Map(fmt_component, component_name, all_meta) |>
  unlist() |>
  clipr::write_clip()

# Generate R functions ---------------------------------------------------

make_man_section <- function(.comp, .fn, .title, .meta) {
  .doc_path <- sub("calcite-", "", .comp)

  # create JS component table info
  .comp_tbls <- if (length(.meta) == 0) {
    "#'"
  } else {
    sec_header <- r"{#' @section Component Details:
#'
#' The below tables illustrate the properties, attributes, and optionally the
#' slots, events, and methods associated with this component.
#'
#' Each attribute can be set by passing it in via `...` as a named value e.g. `"icon-start" = "snow"`.
#'
#' Each event is subscribed to by shiny. The component properties are updated
#' on each of the events.
#'}"

    .meta <- Filter(length, .meta[c("properties", "events", "slots")])

    meta_sections <- heck::to_title_case(names(.meta))
    .comp_tbls <- paste("#'", Map(
      \(.section, .tbl) {
        c(paste0("## ", .section), as.character(knitr::kable(.tbl)), "")
      },
      meta_sections,
      .meta
    ) |> unname() |>
      unlist(), collapse = "\n")
    c(sec_header, .comp_tbls)
  }

  fn_definition <- sprintf("%s <- function(...) {
  res <- htmltools::tag(\"%s\", rlang::dots_list(..., calcite_dependency(), calcite_bindings()))
  class(res) <- c(\"calcite_component\", class(res))
  res
}
", .fn, .comp)


  fmt <- r"-{#' %s
#'
#' Create a `<%s>` component.
#'
#'
%s
#'
#' @export
#' @return an object of class `calcite_component` which is a subclass of `shiny.tag`
#'
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/%s/)
%s
}-"

  sprintf(fmt, .title, .comp, paste0(.comp_tbls, collapse = "\n"), .doc_path, fn_definition)
}


fn_name <- heck::to_snek_case(component_name)
doc_titles <- heck::to_title_case(component_name)

n <- length(component_name)
res <- Map(make_man_section, component_name[1:n], fn_name[1:n], doc_titles[1:n], all_meta[1:n])

writeLines(unlist(res), "R/components-generated.R")
