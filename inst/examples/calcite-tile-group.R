library(shiny)
devtools::load_all()

ui <- calcite_shell(
  calcite_panel(
    heading = "Tile Group Example",

    calcite_tile_group(
      id = "role_selector",
      label = "Select roles",
      selection_mode = "multiple",
      selection_appearance = "border",

      calcite_tile(
        id = "construction_worker",
        icon = "wrench",
        heading = "Construction Worker",
        description = "This role involves managing construction projects, tracking progress, and coordinating with teams on-site."
      ),

      calcite_tile(
        id = "civil_engineer",
        icon = "rangefinder",
        heading = "Civil Engineer",
        description = "This role focuses on designing infrastructure projects, analyzing data, and ensuring regulatory compliance."
      ),

      calcite_tile(
        id = "project_supervisor",
        icon = "knowledge-graph-dashboard",
        heading = "Project Supervisor",
        description = "This role oversees multiple construction projects, manages budgets, and ensures quality control."
      ),

      calcite_tile(
        id = "operations_manager",
        icon = "system-management",
        heading = "Operations Manager",
        description = "This role involves strategic planning, resource allocation, and optimizing processes for efficiency."
      )
    ),

    tags$br(),
    verbatimTextOutput("selection_output")
  )
)

server <- function(input, output, session) {
  output$selection_output <- renderPrint({
    list(
      selectedItems = input$role_selector$selectedItems,
      selectionMode = input$role_selector$selectionMode,
      selectionAppearance = input$role_selector$selectionAppearance
    )
  })

  # Log selection changes
  observeEvent(input$role_selector$selectedItems, {
    message("Selected tiles: ", paste(input$role_selector$selectedItems, collapse = ", "))
  })
}

shinyApp(ui, server)
