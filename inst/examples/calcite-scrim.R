library(shiny)
devtools::load_all()

ui <- calcite_shell(
  panel_start = calcite_panel(
    heading = "Scrim Example",

    calcite_block(
      heading = "Controls",
      collapsible = TRUE,
      expanded = TRUE,

      calcite_label(
        layout = "inline",
        calcite_checkbox(
          id = "toggle_loading",
          checked = FALSE
        ),
        "Show loading scrim"
      )
    ),

    calcite_block(
      heading = "Content with Scrim",
      collapsible = TRUE,
      expanded = TRUE,

      htmltools::div(
        style = "position: relative; min-height: 100px; padding: 1rem;",
        "This content is covered by the scrim when loading is active.",
        calcite_scrim(
          id = "my_scrim",
          loading = FALSE
        )
      )
    )
  ),

  calcite_panel(
    heading = "State",

    calcite_block(
      heading = "Scrim",
      collapsible = TRUE,
      expanded = TRUE,
      verbatimTextOutput("scrim_out")
    )
  )
)

server <- function(input, output, session) {
  observeEvent(
    input$toggle_loading,
    {
      update_calcite("my_scrim", loading = isTRUE(input$toggle_loading$checked))
    },
    ignoreInit = TRUE
  )

  output$scrim_out <- renderPrint({
    input$my_scrim
  })
}

shinyApp(ui, server)
