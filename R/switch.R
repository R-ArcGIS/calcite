#' Create a Calcite Switch Component
#'
#' Creates a switch component for "on" and "off" choices. Switches should be used
#' for boolean choices and can be useful for opt-in and additive actions.
#'
#' @param id Optional ID for the switch (required for Shiny reactivity)
#' @param checked When TRUE, the component is checked
#' @param disabled When TRUE, interaction is prevented and the component is displayed with lower opacity
#' @param form The id of the form that will be associated with the component
#' @param label Accessible name for the component
#' @param label_text_end When provided, displays label text at the end of the component
#' @param label_text_start When provided, displays label text at the start of the component
#' @param name Specifies the name of the component. Required to pass the component's value on form submission
#' @param scale Specifies the size of the component: "s" (small), "m" (medium), or "l" (large)
#' @param value The component's value
#' @param ... Additional attributes passed to the component
#'
#' @details
#' ## Shiny Integration
#'
#' When used in a Shiny app, `calcite_switch()` returns a reactive list containing
#' all component properties. You can observe the entire component state or watch
#' individual properties:
#'
#' **Available properties:**
#' - `$checked` - Whether the switch is currently checked (on/off)
#' - `$disabled` - Whether the switch is disabled
#' - `$value` - The switch's value
#' - `$name` - The component's name
#' - Other component properties
#'
#' **Usage in server:**
#' ```r
#' # Watch for changes to the switch
#' observeEvent(input$my_switch, {
#'   print(paste("Switch is:", if(input$my_switch$checked) "ON" else "OFF"))
#' })
#'
#' # Access the checked state directly
#' observeEvent(input$my_switch$checked, {
#'   if (input$my_switch$checked) {
#'     print("Switch turned ON")
#'   } else {
#'     print("Switch turned OFF")
#'   }
#' })
#' ```
#'
#' @export
#' @return An object of class `calcite_component`
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/switch/)
#' @examples
#' # Basic switch
#' calcite_switch(
#'   id = "my_switch",
#'   label = "Enable 3D mode"
#' )
#'
#' # Switch with label text on both sides
#' calcite_switch(
#'   id = "theme_switch",
#'   label_text_start = "Light",
#'   label_text_end = "Dark",
#'   label = "Theme toggle"
#' )
#'
#' # Checked switch at large scale
#' calcite_switch(
#'   checked = TRUE,
#'   scale = "l",
#'   label = "Notifications"
#' )
#'
#' # Shiny example
#' if (interactive()) {
#'   library(shiny)
#'
#'   ui <- calcite_shell(
#'     calcite_panel(
#'       heading = "Switch Example",
#'
#'       calcite_label(
#'         layout = "inline",
#'         "3D Off",
#'         calcite_switch(id = "mode_switch"),
#'         "3D On"
#'       ),
#'
#'       verbatimTextOutput("status")
#'     )
#'   )
#'
#'   server <- function(input, output, session) {
#'     # Display switch state
#'     output$status <- renderPrint({
#'       input$mode_switch
#'     })
#'   }
#'
#'   shinyApp(ui, server)
#' }
calcite_switch <- function(
  id = NULL,
  checked = NULL,
  disabled = NULL,
  form = NULL,
  label = NULL,
  label_text_end = NULL,
  label_text_start = NULL,
  name = NULL,
  scale = NULL,
  value = NULL,
  ...
) {
  if (!is.null(scale)) {
    scale <- match.arg(scale, c("s", "m", "l"))
  }

  attribs <- compact(list(
    id = id,
    checked = checked,
    disabled = disabled,
    form = form,
    label = label,
    `label-text-end` = label_text_end,
    `label-text-start` = label_text_start,
    name = name,
    scale = scale,
    value = value
  ))

  extra_attribs <- rlang::dots_list(...)

  all_attribs <- c(
    attribs,
    extra_attribs[!names(extra_attribs) %in% names(attribs)]
  )

  switch_binding <- htmltools::htmlDependency(
    name = "calcite-switch-binding",
    version = calcite_version(),
    src = c(file = system.file("www", package = "calcite")),
    script = "calcite-switch.js"
  )

  res <- htmltools::tag(
    "calcite-switch",
    c(
      all_attribs,
      list(calcite_dependency(), switch_binding)
    )
  )

  class(res) <- c("calcite_component", class(res))
  res
}
