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


all_readme_paths <- file.path(component_paths, "readme.md")

all_meta <- lapply(all_readme_paths, parse_readme)

readr::write_rds(all_meta, "dev/all_meta.rds")

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
