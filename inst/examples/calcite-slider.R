library(shiny)
devtools::load_all()

ui <- calcite_shell(
  calcite_card(
    heading = "Slider Example",

    calcite_label(
      "Choose a value",
      calcite_slider(
        id = "my_slider",
        value = 50,
        min = 0,
        max = 100,
        step = 5,
        label_handles = TRUE
      )
    ),

    verbatimTextOutput("output")
  )
)

server <- function(input, output, session) {
  observeEvent(input$my_slider, {
    print(input$my_slider)
  })

  output$output <- renderPrint({
    input$my_slider
  })
}

shinyApp(ui, server)
