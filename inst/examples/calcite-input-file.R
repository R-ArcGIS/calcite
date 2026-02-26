library(shiny)
devtools::load_all()

ui <- page_sidebar(
  sidebar = calcite_panel(
    heading = "Upload Data",

    calcite_block(
      heading = "File Selection",
      collapsible = TRUE,
      expanded = TRUE,

      calcite_input_file(
        id = "csv_file",
        accept = c("csv", "tsv", "txt"),
        label_text = "Choose a CSV file",
        scale = "m"
      ),

      calcite_notice(
        id = "file_info",
        kind = "info",
        open = FALSE,
        div(slot = "title", "File Information"),
        div(slot = "message", verbatimTextOutput("file_details"))
      )
    )
  ),

  calcite_panel(
    heading = "Data Preview",

    calcite_block(
      heading = "Table",
      collapsible = TRUE,
      expanded = TRUE,
      uiOutput("table_ui")
    )
  )
)

server <- function(input, output, session) {

  # Read the uploaded file
  data <- reactive({
    req(input$csv_file)

    file_info <- input$csv_file

    # Read the CSV from the datapath
    tryCatch({
      read.csv(file_info$datapath[1], stringsAsFactors = FALSE)
    }, error = function(e) {
      NULL
    })
  })

  # Display file details
  output$file_details <- renderText({
    req(input$csv_file)
    file_info <- input$csv_file

    paste0(
      "Name: ", file_info$name[1], "\n",
      "Size: ", format(file_info$size[1], big.mark = ","), " bytes\n",
      "Type: ", file_info$type[1]
    )
  })

  # Show/hide the notice when file is uploaded
  observe({
    if (!is.null(input$csv_file)) {
      update_calcite("file_info", open = TRUE)
    }
  })

  # Display the data table
  output$table_ui <- renderUI({
    req(data())

    calcite_table(
      data = data(),
      caption = "Uploaded Data",
      page_size = 20,
      bordered = TRUE,
      striped = TRUE,
      numbered = TRUE
    )
  })
}

shinyApp(ui, server)
