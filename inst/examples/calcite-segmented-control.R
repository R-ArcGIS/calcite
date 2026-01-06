library(shiny)
devtools::load_all()

ui <- calcite_shell(
  calcite_card(
    heading = "Segmented Control Example",

    calcite_segmented_control(
      label_text = "Effect type",
      id = "effect_type",
      width = "full",
      calcite_segmented_control_item(
        value = "blur",
        label = "Blur",
        icon_start = "effects"
      ),
      calcite_segmented_control_item(
        value = "highlight",
        label = "Highlight",
        icon_start = "highlighter",
        checked = TRUE
      ),
      calcite_segmented_control_item(
        value = "party",
        label = "Party mode",
        icon_start = "smile"
      )
    ),
    br(),
    calcite_label(
      "Effect intensity",
      calcite_slider(
        id = "intensity",
        value = 50,
        min = 0,
        max = 100,
        step = 5,
        label_handles = TRUE,
      )
    ),

    verbatimTextOutput("output")
  )
)

server <- function(input, output, session) {
  output$output <- renderPrint({
    list(
      selected_effect = input$effect_type$value,
      intensity = input$intensity$value,
      message = paste0(
        "Applying '",
        input$effect_type$value,
        "' effect at ",
        input$intensity$value,
        "% intensity"
      )
    )
  })
}

shinyApp(ui, server)
