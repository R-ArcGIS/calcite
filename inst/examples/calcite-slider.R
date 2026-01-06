library(shiny)
devtools::load_all()

hist_data <- cbind(seq(0, 100, by = 20), c(0, 12, 35, 65, 25, 0))

ui <- calcite_shell(
  calcite_card(
    heading = "Slider Example",

    calcite_slider(
      id = "my_slider",
      value = 50,
      min = 0,
      max = 100,
      step = 5,
      ticks = 10,
      label_handles = TRUE,
      label_text = "Choose a value"
    ),

    calcite_button(
      id = "toggle_histogram",
      "Toggle Histogram",
      icon_start = "graph-bar"
    ),

    verbatimTextOutput("output")
  )
)

server <- function(input, output, session) {
  # Track histogram state
  show_histogram <- reactiveVal(FALSE)

  # Toggle histogram on button click
  observeEvent(input$toggle_histogram$clicked, {
    show_histogram(!show_histogram())

    if (show_histogram()) {
      # Show histogram
      update_calcite(
        "my_slider",
        histogram = hist_data,
        hasHistogram = TRUE
      )
    } else {
      update_calcite(
        "my_slider",
        histogram = NULL,
        hasHistogram = FALSE
      )
    }
  })

  observeEvent(input$my_slider, {
    print(input$my_slider)
  })

  output$output <- renderPrint({
    input$my_slider
  })
}

shinyApp(ui, server)
