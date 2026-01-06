library(shiny)
devtools::load_all()

ui <- calcite_shell(
  calcite_panel(
    heading = "Notice Demo",

    # Buttons to trigger different notices
    calcite_button(
      id = "show_success",
      "Show Success",
      kind = "brand"
    ),
    calcite_button(
      id = "show_warning",
      "Show Warning"
    ),
    calcite_button(
      id = "show_info",
      "Show Info"
    ),
    calcite_button(
      id = "show_danger",
      "Show Danger",
      kind = "danger"
    ),

    # Success notice
    calcite_notice(
      id = "success_notice",
      open = FALSE,
      closable = TRUE,
      kind = "success",
      icon = TRUE,
      div(slot = "title", "Success!"),
      div(slot = "message", "Your changes have been saved successfully")
    ),

    # Warning notice
    calcite_notice(
      id = "warning_notice",
      open = FALSE,
      closable = TRUE,
      kind = "warning",
      icon = "exclamation-mark-triangle",
      div(slot = "title", "Warning"),
      div(slot = "message", "This action cannot be undone")
    ),

    # Info notice with link
    calcite_notice(
      id = "info_notice",
      open = FALSE,
      closable = TRUE,
      kind = "info",
      icon = "layers-reference",
      div(slot = "title", "Try this trick next time"),
      div(
        slot = "message",
        "Level up your skills - Select and take action on multiple layers at once"
      ),
      calcite_link(slot = "link", title = "Read more", "Learn more")
    ),

    # Danger notice
    calcite_notice(
      id = "danger_notice",
      open = FALSE,
      closable = TRUE,
      kind = "danger",
      icon = TRUE,
      div(slot = "title", "Error"),
      div(slot = "message", "There are unresolved errors in the form")
    ),

    tags$br(),

    verbatimTextOutput("notice_status")
  )
)

server <- function(input, output, session) {
  # Show success notice
  observeEvent(input$show_success$clicked, {
    update_calcite("success_notice", open = input$show_success$clicked)
  })

  # Show warning notice
  observeEvent(input$show_warning$clicked, {
    update_calcite("warning_notice", open = input$show_warning$clicked)
  })

  # Show info notice
  observeEvent(input$show_info$clicked, {
    update_calcite("info_notice", open = input$show_info$clicked)
  })

  # Show danger notice
  observeEvent(input$show_danger$clicked, {
    update_calcite("danger_notice", open = input$show_danger$clicked)
  })

  # Track notice states
  output$notice_status <- renderPrint({
    list(
      success = list(
        open = input$success_notice$open,
        kind = input$success_notice$kind
      ),
      warning = list(
        open = input$warning_notice$open,
        kind = input$warning_notice$kind
      ),
      info = list(
        open = input$info_notice$open,
        kind = input$info_notice$kind
      ),
      danger = list(
        open = input$danger_notice$open,
        kind = input$danger_notice$kind
      )
    )
  })

  # Log when user dismisses a notice
  observeEvent(input$success_notice$open, {
    if (isFALSE(input$success_notice$open)) {
      message("User dismissed success notice")
    }
  })

  observeEvent(input$warning_notice$open, {
    if (isFALSE(input$warning_notice$open)) {
      message("User dismissed warning notice")
    }
  })
}

shinyApp(ui, server)
