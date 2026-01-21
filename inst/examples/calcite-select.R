library(shiny)
devtools::load_all()

ui <- page_sidebar(
  title = "Select Component Examples",
  sidebar = calcite_panel(
    heading = "Select examples",

    calcite_block(
      id = "basic_block",
      heading = "Basic usage",
      description = "Using values and labels vectors",
      collapsible = TRUE,
      expanded = TRUE,
      icon_start = "list",

      calcite_label(
        "Terrain type",
        calcite_select(
          id = "terrain_select",
          label = "Choose terrain type",
          values = c("mountains", "rivers", "lakes", "buttes", "fjords"),
          labels = c("Mountains", "Rivers", "Lakes", "Buttes", "Fjords")
        )
      ),

      tags$br(),

      calcite_label(
        "Fruit selection",
        calcite_select(
          id = "fruit_select",
          label = "Choose a fruit",
          label_text = "Select your favorite fruit",
          values = c("apple", "banana", "orange", "grape"),
          labels = c("Apple", "Banana", "Orange", "Grape")
        )
      )
    ),

    calcite_block(
      id = "manual_block",
      heading = "Manual options",
      description = "Constructing options with calcite_option()",
      collapsible = TRUE,
      expanded = TRUE,
      icon_start = "gear",

      calcite_label(
        "With pre-selected and disabled",
        calcite_select(
          id = "manual_select",
          label = "Choose an option",
          label_text = "Options with manual control",
          calcite_option(label = "Option 1", value = "opt1"),
          calcite_option(label = "Option 2", value = "opt2", selected = TRUE),
          calcite_option(label = "Option 3", value = "opt3"),
          calcite_option(
            label = "Disabled option",
            value = "opt4",
            disabled = TRUE
          )
        )
      )
    ),

    calcite_block(
      id = "scales_block",
      heading = "Component scales",
      description = "Different sizes for the select component",
      collapsible = TRUE,
      expanded = FALSE,
      icon_start = "measure",

      calcite_label(
        "Small scale",
        calcite_select(
          id = "small_select",
          label = "Small select",
          scale = "s",
          values = c("a", "b", "c")
        )
      ),

      tags$br(),

      calcite_label(
        "Large scale",
        calcite_select(
          id = "large_select",
          label = "Large select",
          scale = "l",
          values = c("x", "y", "z")
        )
      )
    )
  ),

  calcite_panel(
    heading = "Output",
    calcite_block(
      heading = "Select outputs",
      description = "{calcite} input values in the shiny `input` object",
      expanded = TRUE,
      collapsible = TRUE,

      tags$h3("Terrain Selection:"),
      verbatimTextOutput("terrain_output"),

      tags$h3("Fruit Selection:"),
      verbatimTextOutput("fruit_output"),

      tags$h3("Manual Selection:"),
      verbatimTextOutput("manual_output"),

      tags$h3("Small Select:"),
      verbatimTextOutput("small_output"),

      tags$h3("Large Select:"),
      verbatimTextOutput("large_output")
    )
  )
)

server <- function(input, output, session) {
  output$terrain_output <- renderPrint({
    input$terrain_select
  })

  output$fruit_output <- renderPrint({
    input$fruit_select
  })

  output$manual_output <- renderPrint({
    input$manual_select
  })

  output$small_output <- renderPrint({
    input$small_select
  })

  output$large_output <- renderPrint({
    input$large_select
  })
}

shinyApp(ui, server)
