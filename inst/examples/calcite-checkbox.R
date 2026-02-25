library(shiny)
devtools::load_all()

ui <- calcite_shell(
  panel_start = calcite_panel(
    heading = "Checkbox Example",

    calcite_block(
      heading = "Preferences",
      collapsible = TRUE,
      expanded = TRUE,

      calcite_label(
        layout = "inline",
        calcite_checkbox(
          id = "terms",
          value = "accepted"
        ),
        "I agree to the terms and conditions"
      ),

      calcite_label(
        layout = "inline",
        calcite_checkbox(
          id = "newsletter",
          checked = TRUE,
          scale = "l"
        ),
        "Subscribe to newsletter"
      ),

      calcite_label(
        layout = "inline",
        calcite_checkbox(
          id = "partial",
          indeterminate = TRUE
        ),
        "Select all"
      )
    )
  ),

  calcite_panel(
    heading = "State",

    calcite_block(
      heading = "Terms",
      collapsible = TRUE,
      expanded = TRUE,
      verbatimTextOutput("terms_out")
    ),

    calcite_block(
      heading = "Newsletter",
      collapsible = TRUE,
      expanded = TRUE,
      verbatimTextOutput("newsletter_out")
    ),

    calcite_block(
      heading = "Partial",
      collapsible = TRUE,
      expanded = TRUE,
      verbatimTextOutput("partial_out")
    )
  )
)

server <- function(input, output, session) {
  output$terms_out <- renderPrint({
    input$terms
  })

  output$newsletter_out <- renderPrint({
    input$newsletter
  })

  output$partial_out <- renderPrint({
    input$partial
  })
}

shinyApp(ui, server)
