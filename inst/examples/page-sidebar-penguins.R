devtools::load_all()
library(shiny)
# library(calcite)
library(palmerpenguins)
library(ggplot2)


numeric_vars <- c(
  "bill_length_mm",
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
        label = "X axis variable",
        values = numeric_vars,
        labels = numeric_labels,
        label_text = "Select a variable to display on the X axis"
      )
    ),
    calcite_block(
      heading = "Y Axis",
      collapsible = TRUE,
      calcite_select(
        id = "y_var",
        label = "Y axis variable",
        values = numeric_vars,
        labels = numeric_labels,
        label_text = "Select a variable to display on the Y axis"
      )
    ),
    calcite_block(
      heading = "Color by",
      collapsible = TRUE,
      calcite_select(
        id = "group_var",
        label = "Color grouping variable",
        values = group_vars,
        labels = c("Species", "Island", "Sex", "Year"),
        label_text = "Color points by this variable"
      )
    )
  ),
  calcite_panel(
    heading = "Palmer Penguins Visualization",
    calcite_block(
      heading = "Scatter Plot",
      description = "Interactive visualization of penguin measurements",
      collapsible = TRUE,
      expanded = TRUE,
      icon_start = "graph-scatter-plot",
      plotOutput("penguin_plot")
    )
  )
)

server <- function(input, output) {
  output$penguin_plot <- renderPlot({
    req(input$x_var, input$y_var, input$group_var)

    # Get the actual column names from the reactive values
    x_col <- input$x_var$value
    y_col <- input$y_var$value
    group_col <- input$group_var$value

    # Get labels for axis titles
    x_label <- input$x_var$selectedOption$label
    y_label <- input$y_var$selectedOption$label
    color_label <- input$group_var$selectedOption$label

    # Create plot
    ggplot(
      penguins,
      aes(
        x = .data[[x_col]],
        y = .data[[y_col]],
        color = .data[[group_col]]
      )
    ) +
      geom_point(size = 3, alpha = 0.7) +
      labs(
        x = x_label,
        y = y_label,
        color = color_label
      ) +
      # theme_minimal(base_size = 14) +
      theme(legend.position = "bottom")
  })
}
shinyApp(ui, server)
