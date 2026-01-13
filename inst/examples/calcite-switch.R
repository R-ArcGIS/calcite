library(shiny)
devtools::load_all()

ui <- calcite_shell(
  calcite_panel(
    heading = "Switch Example",

    # Basic switch example (matching the provided HTML example)
    calcite_label(
      layout = "inline",
      "3D Off",
      calcite_switch(id = "mode_switch"),
      "3D On"
    ),

    # Switch with label text in the component itself
    calcite_switch(
      id = "notifications_switch",
      label = "Enable notifications",
      label_text_start = "Off",
      label_text_end = "On",
      checked = TRUE
    ),

    # Large scale switch
    calcite_switch(
      id = "large_switch",
      label = "Dark mode",
      scale = "l"
    ),

    verbatimTextOutput("mode_output"),
    verbatimTextOutput("notifications_output"),
    verbatimTextOutput("large_output")
  )
)

server <- function(input, output, session) {
  output$mode_output <- renderPrint({
    input$mode_switch
  })

  output$notifications_output <- renderPrint({
    input$notifications_switch
  })

  output$large_output <- renderPrint({
    input$large_switch
  })
}

shinyApp(ui, server)
