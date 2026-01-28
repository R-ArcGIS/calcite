library(shiny)
library(calcite)
library(palmerpenguins)


numeric_vars <- c(
  "bill_len_mm",
  "bill_depth_mm",
  "flipper_length_mm",
  "body_mass_g"
)
numeric_labels <- c("Bill length", "Bill depth", "Flipper length", "BMI")

group_vars <- c("species", "island", "sex", "year")

ui <- page_sidebar(
  sidebar = calcite_panel(
    heading = "Control your plot",
    calcite_block(
      heading = "X Axis",
      collapsible = TRUE,
      calcite_select(
        id = "x_var",
        values = numeric_vars,
        label = numeric_labels
      )
    ),
    calcite_block(
      heading = "Y Axis",
      collapsible = TRUE,
      calcite_select(
        id = "y_var",
        values = numeric_vars,
        label = numeric_labels
      )
    ),
    calcite_block(
      heading = "Color by",
      collapsible = TRUE,
      calcite_select(
        id = "group_var",
        values = group_vars,
        label = c("Species", "Island", "Sex", "Year")
      )
    )
  )
)

server <- function(input, output) {}
shinyApp(ui, server)
