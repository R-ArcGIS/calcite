#' Create a Calcite Button Component
#'
#' Creates an interactive button component that can be used for user actions.
#' Buttons can display text, icons, or both, and support various visual styles.
#'
#' @param ... Content for the button (default slot) - typically text or other elements
#' @param id Component ID (required for Shiny reactivity)
#' @param alignment Specifies the alignment of the component's elements: "center",
#'   "end", "icon-end-space-between", "icon-start-space-between", "space-between",
#'   or "start" (default: "center")
#' @param appearance Specifies the appearance style: "outline", "outline-fill",
#'   "solid", or "transparent" (default: "solid")
#' @param disabled When TRUE, interaction is prevented and the component is
#'   displayed with lower opacity (default: FALSE)
#' @param download Prompts the user to save the linked URL instead of navigating
#'   to it. Can be TRUE or a string filename
#' @param form The id of the form that will be associated with the component
#' @param href Specifies the URL of the linked resource (absolute or relative path)
#' @param icon_end Specifies an icon to display at the end of the component
#' @param icon_flip_rtl Displays the iconStart and/or iconEnd as flipped when
#'   the element direction is RTL: "both", "end", or "start"
#' @param icon_start Specifies an icon to display at the start of the component
#' @param kind Specifies the kind of the component: "brand", "danger", "inverse",
#'   or "neutral" (default: "brand")
#' @param label Accessible name for the component
#' @param loading When TRUE, a busy indicator is displayed (default: FALSE)
#' @param name Specifies the name of the component on form submission
#' @param rel Defines the relationship between the href value and the current document
#' @param round When TRUE, adds a round style to the component (default: FALSE)
#' @param scale Specifies the size of the component: "s" (small), "m" (medium),
#'   or "l" (large) (default: "m")
#' @param split_child Specifies if the component is a child of a calcite-split-button:
#'   "primary", "secondary", or boolean
#' @param target Specifies where to open the linked document defined in href
#' @param type Specifies the default behavior: "button", "reset", or "submit"
#'   (default: "button")
#' @param width Specifies the width of the component: "auto", "full", or "half"
#'   (default: "auto"). Note: "half" is deprecated, use "full" instead.
#'
#' @details
#' ## Shiny Integration
#'
#' When used in a Shiny app, `calcite_button()` returns a reactive list containing
#' component properties and a click counter. You can observe the entire component
#' state or watch individual properties:
#'
#' **Available properties:**
#' - `$clicks` - Integer count of how many times the button has been clicked
#' - `$alignment`, `$appearance`, `$disabled`, `$kind`, `$scale`, etc. - All component properties
#'
#' **Usage in server:**
#' ```r
#' # Watch for button clicks using the clicks counter
#' observeEvent(input$my_button$clicks, {
#'   print(paste("Button clicked", input$my_button$clicks, "times"))
#' })
#'
#' # Or watch for any change to the button
#' observeEvent(input$my_button, {
#'   print("Button changed!")
#' })
#'
#' # Access specific properties
#' observeEvent(input$my_button, {
#'   is_disabled <- input$my_button$disabled
#'   click_count <- input$my_button$clicks
#' })
#' ```
#'
#' @export
#' @return An object of class `calcite_component`
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/button/)
#' @examples
#' # Basic button
#' calcite_button(
#'   id = "my_button",
#'   "Click Me!"
#' )
#'
#' # Button with icon
#' calcite_button(
#'   "Save",
#'   icon_start = "save",
#'   appearance = "solid",
#'   kind = "brand"
#' )
#'
#' # Outline button with icon at end
#' calcite_button(
#'   "Delete",
#'   icon_end = "trash",
#'   appearance = "outline",
#'   kind = "danger"
#' )
#'
#' # Round icon-only button
#' calcite_button(
#'   icon_start = "plus",
#'   round = TRUE,
#'   label = "Add item"
#' )
#'
#' # Shiny example
#' if (interactive()) {
#'   library(shiny)
#'
#'   ui <- div(
#'     calcite_button(
#'       id = "test_button",
#'       "Click Me!",
#'       appearance = "solid",
#'       kind = "brand"
#'     ),
#'     verbatimTextOutput("click_count")
#'   )
#'
#'   server <- function(input, output, session) {
#'     # Watch for button clicks
#'     output$click_count <- renderText({
#'       paste("Button clicked", input$test_button$clicks, "times")
#'     })
#'   }
#'
#'   shinyApp(ui, server)
#' }
calcite_button <- function(
  ...,
  id = NULL,
  alignment = NULL,
  appearance = NULL,
  disabled = NULL,
  download = NULL,
  form = NULL,
  href = NULL,
  icon_end = NULL,
  icon_flip_rtl = NULL,
  icon_start = NULL,
  kind = NULL,
  label = NULL,
  loading = NULL,
  name = NULL,
  rel = NULL,
  round = NULL,
  scale = NULL,
  split_child = NULL,
  target = NULL,
  type = NULL,
  width = NULL
) {
  # Validate alignment if provided
  if (!is.null(alignment)) {
    alignment <- rlang::arg_match(
      alignment,
      c(
        "center",
        "end",
        "icon-end-space-between",
        "icon-start-space-between",
        "space-between",
        "start"
      )
    )
  }

  # Validate appearance if provided
  if (!is.null(appearance)) {
    appearance <- rlang::arg_match(
      appearance,
      c("outline", "outline-fill", "solid", "transparent")
    )
  }

  # Validate icon_flip_rtl if provided
  if (!is.null(icon_flip_rtl)) {
    icon_flip_rtl <- rlang::arg_match(icon_flip_rtl, c("both", "end", "start"))
  }

  # Validate kind if provided
  if (!is.null(kind)) {
    kind <- rlang::arg_match(kind, c("brand", "danger", "inverse", "neutral"))
  }

  # Validate scale if provided
  if (!is.null(scale)) {
    scale <- rlang::arg_match(scale, c("s", "m", "l"))
  }

  # Validate split_child if provided (can be string or boolean)
  if (!is.null(split_child) && is.character(split_child)) {
    split_child <- rlang::arg_match(split_child, c("primary", "secondary"))
  }

  # Validate type if provided
  if (!is.null(type)) {
    type <- rlang::arg_match(type, c("button", "reset", "submit"))
  }

  # Validate width if provided
  if (!is.null(width)) {
    width <- rlang::arg_match(width, c("auto", "full", "half"))
  }

  # Build attributes list
  attribs <- compact(list(
    id = id,
    alignment = alignment,
    appearance = appearance,
    disabled = disabled,
    download = download,
    form = form,
    href = href,
    `icon-end` = icon_end,
    `icon-flip-rtl` = icon_flip_rtl,
    `icon-start` = icon_start,
    kind = kind,
    label = label,
    loading = loading,
    name = name,
    rel = rel,
    round = round,
    scale = scale,
    `split-child` = split_child,
    target = target,
    type = type,
    width = width
  ))

  # Get extra content from dots
  extra_attribs <- rlang::dots_list(...)

  # Combine attributes
  all_attribs <- c(
    attribs,
    extra_attribs[!names(extra_attribs) %in% names(attribs)]
  )

  # Custom binding for button
  button_binding <- htmltools::htmlDependency(
    name = "calcite-button-binding",
    version = calcite_version(),
    src = c(file = system.file("www", package = "calcite")),
    script = "calcite-button.js"
  )

  res <- htmltools::tag(
    "calcite-button",
    c(
      all_attribs,
      list(calcite_dependency(), button_binding)
    )
  )

  class(res) <- c("calcite_component", class(res))
  res
}
