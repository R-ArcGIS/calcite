library(dplyr)
json_raw <- yyjsonr::read_json_conn("https://unpkg.com/@esri/calcite-components@3.0.0-next.127/dist/docs/docs.json")

components_raw <- json_raw[["components"]] |>
  tibble::as_tibble()




api_json_raw <- yyjsonr::read_json_conn(
  "https://unpkg.com/@esri/calcite-components@3.0.0-next.127/dist/docs/api.json"
)

component_names <- yyjsonr::read_json_conn(
  "https://unpkg.com/@esri/calcite-components@3.0.0-next.127/dist/docs/api.json"
)[[c("modules", "declarations")]] |>
  dplyr::bind_rows() |>
  pull(name)


exclude <- c("usage", "dependents", "dependencies", "dependencyGraph", "parts", "listeners", "filePath", "readme", "overview", "encapsulation", "styles", "docsTags", "methods")

components <- components_raw |>
  select(-exclude) |>
  mutate(
    deprecation = tidyr::replace_na(deprecation, ""),
    fn_name = heck::to_snek_case(tag),
    name = component_names
  ) |>
  select(name, fn_name, tag, docs, props, events, slots, deprecation) |>
  mutate(
    across(where(is.character), \(.x) gsub("\n", " ", .x))
  )


# for now we filter out all of the components that have an API reference page
resps <- lapply(
  paste0("https://developers.arcgis.com/calcite-design-system/components/", gsub("calcite-", "", components$tag)),
  \(url) {
    httr2::request(url) |>
      httr2::req_error(\(.x) FALSE)
  }
) |>
  httr2::req_perform_parallel()

has_api_ref_page <- !vapply(resps, httr2::resp_is_error, logical(1))

components <- components[has_api_ref_page, ]

make_prop_table <- function(.x) {
  md <- .x |>
    select(-any_of(c("complexType", "values", "docsTags", "values"))) |>
    select(Name = name, Attribute = attr, Description = docs, Values = type, `Reflects to Attribute` = reflectToAttr) |>
    mutate(
      across(where(is.character), \(.x) gsub("\n", " ", .x)),
      across(where(is.character), \(.x) ifelse(grepl("\\{|\\}|\\[|<", .x), "Check API reference", .x))
    ) |>
    knitr::kable()

  md_tbl <- paste("#' ", md, collapse = "\n")

  sprintf(
    "#' ## Properties\n\n#' The following properties are provided by this component: \n\n%s",
    md_tbl
  )
}

make_event_table <- function(.x) {
  md <- .x |>
    select(Event = event, Description = docs) |>
    mutate(across(where(is.character), \(.x) stringr::str_replace_all(.x, "\n+", " "))) |>
    knitr::kable()

  md_tbl <- paste("#' ", md, collapse = "\n")

  sprintf(
    "#' ## Events\n\n#' The following events are observed by shiny:\n\n%s",
    md_tbl
  )
}


make_slot_table <- function(.x) {
  md <- .x |>
    mutate(name = if_else(nzchar(name), name, "Default (unnamed)")) |>
    rename(Slot = name, Description = docs) |>
    knitr::kable()

  md_tbl <- paste("#' ", md, collapse = "\n")

  sprintf(
    "#' ## Slots\n\n#' The following slots are provided by this component: \n\n%s",
    md_tbl
  )
}

make_tables <- function(.props, .events, .slots) {
  tbls_vec <- character()

  if (!is.null(.props) && !rlang::is_empty(.props)) {
    tbls_vec <- append(tbls_vec, make_prop_table(.props))
  }

  if (!is.null(.events) && !rlang::is_empty(.events)) {
    tbls_vec <- append(tbls_vec, make_event_table(.events))
  }

  if (!is.null(.slots) && !rlang::is_empty(.slots)) {
    tbls_vec <- append(tbls_vec, make_slot_table(.slots))
  }

  paste(tbls_vec, collapse = "\n\n")
}

.fmt <- brio::read_file("data-raw/component-fmt.txt")


make_doc_page <- function(.fmt, name, fn_name, tag, docs, props, events, slots, deprecation) {
  tables <- make_tables(props, events, slots)

  glue::glue(.fmt, .open = "{{", .close = "}}")
}

# i <- 84

# make_tables(
#   components$props[[i]],
#   components$events[[i]],
#   components$slots[[i]]
# ) |>
#   cat()

# make_event_table(components$events[[24]]) |> cat()
# make_prop_table(components$props[[i]]) |> cat()
# components$props[[i]]


all_definitions <- purrr::pmap_chr(components, make_doc_page, .fmt = .fmt)

brio::write_lines(all_definitions, "R/components-generated.R")

devtools::document()
