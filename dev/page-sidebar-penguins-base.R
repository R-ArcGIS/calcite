library(shiny)
library(palmerpenguins)
library(ggplot2)

numeric_vars <- c(
  "bill_length_mm",
  "bill_depth_mm",
  "flipper_length_mm",
  "body_mass_g"
)
numeric_labels <- c("Bill length", "Bill depth", "Flipper length", "Body mass")

group_vars <- c("species", "island", "sex", "year")
group_labels <- c("Species", "Island", "Sex", "Year")

ui <- fluidPage(
  titlePanel("Palmer Penguins Visualization"),

  sidebarLayout(
    sidebarPanel(
      h3("Control your plot"),

      h4("X Axis"),
      selectInput(
        inputId = "x_var",
        label = "Select a variable to display on the X axis",
        choices = setNames(numeric_vars, numeric_labels),
        selected = numeric_vars[1]
      ),

      h4("Y Axis"),
      selectInput(
        inputId = "y_var",
        label = "Select a variable to display on the Y axis",
        choices = setNames(numeric_vars, numeric_labels),
        selected = numeric_vars[2]
      ),

      h4("Color by"),
      selectInput(
        inputId = "group_var",
        label = "Color points by this variable",
        choices = setNames(group_vars, group_labels),
        selected = group_vars[1]
      )
    ),

    mainPanel(
      h3("Scatter Plot"),
      p("Interactive visualization of penguin measurements"),
      plotOutput("penguin_plot", width = "100%")
    )
  )
)

server <- function(input, output) {
  output$penguin_plot <- renderPlot({
    req(input$x_var, input$y_var, input$group_var)

    # Get the actual column names from the reactive values
    x_col <- input$x_var
    y_col <- input$y_var
    group_col <- input$group_var

    # Get labels for axis titles
    x_label <- numeric_labels[match(x_col, numeric_vars)]
    y_label <- numeric_labels[match(y_col, numeric_vars)]
    color_label <- group_labels[match(group_col, group_vars)]

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
      theme(legend.position = "bottom")
  })
}

shinyApp(ui, server)
