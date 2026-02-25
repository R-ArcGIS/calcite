library(shiny)
devtools::load_all()

ui <- calcite_shell(
  calcite_panel(
    heading = "Notice Demo",

    calcite_button(id = "show_success", "Show Success", kind = "brand"),
    calcite_button(id = "show_warning", "Show Warning"),
    calcite_button(id = "show_info", "Show Info"),
    calcite_button(id = "show_danger", "Show Danger", kind = "danger"),

    calcite_notice(
      id = "success_notice",
      open = FALSE,
      closable = TRUE,
      kind = "success",
      icon = TRUE,
      title = "Success!",
      message = "Your changes have been saved successfully"
    ),

    calcite_notice(
      id = "warning_notice",
      open = FALSE,
      closable = TRUE,
      kind = "warning",
      icon = "exclamation-mark-triangle",
      title = "Warning",
      message = "This action cannot be undone"
    ),

    calcite_notice(
      id = "info_notice",
      open = FALSE,
      closable = TRUE,
      kind = "info",
      icon = "layers-reference",
      title = "Try this trick next time",
      message = "Level up your skills - Select and take action on multiple layers at once",
      link = calcite_link(text = "Learn more", href = "#")
    ),

    calcite_notice(
      id = "danger_notice",
      open = FALSE,
      closable = TRUE,
      kind = "danger",
      icon = TRUE,
      title = "Error",
      message = "There are unresolved errors in the form"
    ),

    tags$br(),

    verbatimTextOutput("notice_status")
  )
)

server <- function(input, output, session) {
  observeEvent(input$show_success$clicks, {
    update_calcite("success_notice", open = TRUE)
  })

  observeEvent(input$show_warning$clicks, {
    update_calcite("warning_notice", open = TRUE)
  })

  observeEvent(input$show_info$clicks, {
    update_calcite("info_notice", open = TRUE)
  })

  observeEvent(input$show_danger$clicks, {
    update_calcite("danger_notice", open = TRUE)
  })

  output$notice_status <- renderPrint({
    list(
      success = input$success_notice$open,
      warning = input$warning_notice$open,
      info = input$info_notice$open,
      danger = input$danger_notice$open
    )
  })
}

shinyApp(ui, server)
