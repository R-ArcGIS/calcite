library(calcite)
library(shiny)

# ---- Example 1: Basic calcite_shell with named parameters ----

# Much clearer than the old approach of manually specifying slots
basic_shell <- calcite_shell(
  header = calcite_navigation(
    calcite_navigation_logo(slot = "logo", heading = "My Application")
  ),
  panel_start = calcite_shell_panel(
    position = "start",
    calcite_panel(heading = "Sidebar", "Sidebar content here")
  ),
  "Main content area",
  footer = div("© 2024 My Company")
)

if (interactive()) {
  shinyApp(
    ui = basic_shell,
    server = function(input, output, session) {}
  )
}


# ---- Example 3: page_navbar() - Simple navbar layout ----

navbar_app <- page_navbar(
  title = "Analytics Dashboard",

  nav_actions = list(
    calcite_action(icon = "bell", text = "Notifications", indicator = TRUE),
    calcite_action(icon = "gear", text = "Settings"),
    calcite_action(icon = "user", text = "Profile")
  ),

  # Main content
  div(
    style = "padding: 20px;",
    calcite_card(
      heading = "Welcome",
      "This is a simple dashboard layout with a navigation bar"
    )
  )
)

if (interactive()) {
  shinyApp(
    ui = navbar_app,
    server = function(input, output, session) {}
  )
}


# ---- Example 4: page_sidebar() - Sidebar layout (like bslib::page_sidebar) ----

sidebar_app <- page_sidebar(
  title = "Data Explorer",

  sidebar = calcite_panel(
    heading = "Filters",

    calcite_block(
      heading = "Date Range",
      collapsible = TRUE,

      calcite_input_date_picker(
        label = "Start Date"
      ),
      calcite_input_date_picker(
        label = "End Date"
      )
    ),

    calcite_block(
      heading = "Categories",
      collapsible = TRUE,

      calcite_checkbox(label = "Category A", checked = TRUE),
      calcite_checkbox(label = "Category B"),
      calcite_checkbox(label = "Category C")
    )
  ),

  position = "start", # or "end" for right sidebar
  width = "m",

  # Main content
  calcite_panel(
    heading = "Results",
    "Your filtered data appears here"
  )
)

if (interactive()) {
  shinyApp(
    ui = sidebar_app,
    server = function(input, output, session) {}
  )
}


# ---- Example 5: Interactive action bar with Shiny ----

interactive_actionbar <- page_actionbar(
  title = "Map Viewer",

  actions = calcite_action_bar(
    calcite_action(
      id = "layers-btn",
      text = "Layers",
      icon = "layers",
      active = TRUE,
      `text-enabled` = TRUE
    ),
    calcite_action(
      id = "basemap-btn",
      text = "Basemap",
      icon = "basemap",
      `text-enabled` = TRUE
    ),
    calcite_action(
      id = "legend-btn",
      text = "Legend",
      icon = "legend",
      `text-enabled` = TRUE
    )
  ),

  panel_content = calcite_panel(
    id = "side-panel",
    heading = "Layers",
    "Layer controls appear here"
  ),

  # Map content
  calcite_panel(
    heading = "Map",
    div(
      style = "height: 600px; background: #f0f0f0; display: flex; align-items: center; justify-content: center;",
      "Map goes here"
    )
  )
)

if (interactive()) {
  shinyApp(
    ui = interactive_actionbar,

    server = function(input, output, session) {
      # Update panel heading when actions are clicked
      observeEvent(input$`layers-btn_click`, {
        update_calcite("side-panel", heading = "Layers")
      })

      observeEvent(input$`basemap-btn_click`, {
        update_calcite("side-panel", heading = "Basemap")
      })

      observeEvent(input$`legend-btn_click`, {
        update_calcite("side-panel", heading = "Legend")
      })
    }
  )
}


# ---- Example 6: Full-featured application ----

full_app <- page_actionbar(
  title = "Project Management",

  header_actions = list(
    calcite_action(
      slot = "content-end",
      icon = "bell",
      text = "Notifications",
      indicator = TRUE,
      id = "notifications"
    ),
    calcite_action(
      slot = "content-end",
      icon = "user",
      text = "Profile",
      id = "profile"
    )
  ),

  actions = calcite_action_bar(
    calcite_action_group(
      calcite_action(
        id = "home",
        text = "Home",
        icon = "home",
        active = TRUE,
        `text-enabled` = TRUE
      ),
      calcite_action(
        id = "projects",
        text = "Projects",
        icon = "folder",
        `text-enabled` = TRUE
      ),
      calcite_action(
        id = "tasks",
        text = "Tasks",
        icon = "list-check",
        indicator = TRUE,
        `text-enabled` = TRUE
      )
    ),
    calcite_action_group(
      slot = "bottom-actions",
      calcite_action(
        id = "settings",
        text = "Settings",
        icon = "gear",
        `text-enabled` = TRUE
      ),
      calcite_action(
        id = "help",
        text = "Help",
        icon = "question",
        `text-enabled` = TRUE
      )
    )
  ),

  panel_content = calcite_panel(
    id = "main-panel",
    heading = "Home",

    calcite_block(
      heading = "Quick Stats",
      collapsible = TRUE,
      open = TRUE,

      "Dashboard content here..."
    )
  ),

  # Main content area
  calcite_panel(
    heading = "Overview",
    div(
      style = "padding: 20px;",
      h3("Welcome to Project Management"),
      p("Select an action from the sidebar to get started.")
    )
  ),

  # Footer
  footer = div(
    style = "padding: 10px; text-align: center; background: var(--calcite-ui-foreground-1);",
    "© 2024 Your Company | ",
    a(href = "#", "Privacy Policy"),
    " | ",
    a(href = "#", "Terms of Service")
  )
)

if (interactive()) {
  shinyApp(
    ui = full_app,
    server = function(input, output, session) {
      # Handle navigation between different sections
      observeEvent(input$home_click, {
        update_calcite("main-panel", heading = "Home")
      })

      observeEvent(input$projects_click, {
        update_calcite("main-panel", heading = "Projects")
      })

      observeEvent(input$tasks_click, {
        update_calcite("main-panel", heading = "Tasks")
      })

      observeEvent(input$settings_click, {
        update_calcite("main-panel", heading = "Settings")
      })
    }
  )
}
