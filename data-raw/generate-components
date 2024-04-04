comps_raw <- RcppSimdJson::fload("data-raw/components.json") |> lapply(`[[`, c(2, 1))

comps_raw[[2]]

calcite_component_names <- lapply(comps_raw, `[[`, 2)

calcite_component_properties <- lapply(comps_raw, \(.x) names(.x[[3]])) |>
  lapply(snakecase::to_any_case, sep_out = "-")


calcite_component_names[[1]]

tag(calcite_component_names[[1]], varArgs = calcite_component_properties[[1]])


purrr::map2(
  calcite_component_names, calcite_component_properties,
  ~ tag(.x, .y)
)
