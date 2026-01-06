library(rvest)

components <- read_html(
  "https://developers.arcgis.com/calcite-design-system/components/"
) |>
  html_node("div .not-afd-flow-content.card-group") |>
  html_children()

html_text(components)
