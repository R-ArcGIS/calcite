#' Create a Calcite Accordion Component
#'
#' Accordions are most often used for hiding and showing sections of related content.
#' They can have different selection modes, allowing users to have multiple or single
#' accordion item(s) open.
#'
#' @param ... One or more [calcite_accordion_item()] components
#' @param id Component ID (required for Shiny reactivity)
#' @param appearance Visual style: "solid" or "transparent" (default: "solid")
#' @param icon_position Placement of the icon in the header: "start" or "end" (default: "end")
#' @param icon_type Type of icon in the header: "chevron", "caret", or "plus-minus" (default: "chevron")
#' @param scale Size of the component: "s" (small), "m" (medium), or "l" (large) (default: "m")
#' @param selection_mode Selection mode: "multiple" allows any number of selections, "single" allows only one selection, "single-persist" allows one selection and prevents de-selection (default: "multiple")
#'
#' @details
#' ## Usage
#' - To organize related text-based content.
#' - To shorten pages and reduce scrolling when content is not crucial to read in full.
#'
#' ## Best practices
#' - Use Accordion to contain related but distinct, primarily text-based content.
#' - Use Accordion within the main content area of an application to save space.
#' - Avoid using Accordion within a Panel. Instead, use one or more Block(s).
#' - Avoid using Accordion to house interactive controls or form-based components.
#'
#' ## Shiny Integration
#'
#' The accordion tracks which items are expanded based on its selection mode.
#'
#' **Available properties in `input$id`:**
#' - `$appearance` - The visual style
#' - `$iconPosition` - Icon placement
#' - `$iconType` - Icon type
#' - `$scale` - Size
#' - `$selectionMode` - Selection mode
#'
#' @export
#' @return An object of class `calcite_component`
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/accordion/)
#' @examples
#' # Basic accordion with multiple selection
#' calcite_accordion(
#'   id = "my_accordion",
#'   calcite_accordion_item(
#'     heading = "Watercraft",
#'     description = "Yachts, boats, and dinghies",
#'     icon_start = "embark",
#'     "Recommended for coastal use"
#'   ),
#'   calcite_accordion_item(
#'     heading = "Automobiles",
#'     description = "Cars, trucks, and buses",
#'     icon_start = "car",
#'     "A good choice for inland adventure"
#'   )
#' )
#'
#' # Single selection accordion
#' calcite_accordion(
#'   selection_mode = "single",
#'   appearance = "transparent",
#'   icon_type = "plus-minus",
#'   calcite_accordion_item(
#'     heading = "Section 1",
#'     "Content 1"
#'   ),
#'   calcite_accordion_item(
#'     heading = "Section 2",
#'     "Content 2"
#'   )
#' )
calcite_accordion <- function(
  ...,
  id = NULL,
  appearance = NULL,
  icon_position = NULL,
  icon_type = NULL,
  scale = NULL,
  selection_mode = NULL
) {
  # Validate appearance if provided
  if (!is.null(appearance)) {
    appearance <- rlang::arg_match(appearance, c("solid", "transparent"))
  }

  # Validate icon_position if provided
  if (!is.null(icon_position)) {
    icon_position <- rlang::arg_match(icon_position, c("start", "end"))
  }

  # Validate icon_type if provided
  if (!is.null(icon_type)) {
    icon_type <- rlang::arg_match(icon_type, c("chevron", "caret", "plus-minus"))
  }

  # Validate scale if provided
  if (!is.null(scale)) {
    scale <- rlang::arg_match(scale, c("s", "m", "l"))
  }

  # Validate selection_mode if provided
  if (!is.null(selection_mode)) {
    selection_mode <- rlang::arg_match(
      selection_mode,
      c("multiple", "single", "single-persist")
    )
  }

  # Build attributes list
  attribs <- compact(list(
    id = id,
    appearance = appearance,
    `icon-position` = icon_position,
    `icon-type` = icon_type,
    scale = scale,
    `selection-mode` = selection_mode
  ))

  # Combine with dots (child content)
  extra_attribs <- rlang::dots_list(...)
  all_attribs <- c(
    attribs,
    extra_attribs[!names(extra_attribs) %in% names(attribs)]
  )

  # Custom binding for accordion
  accordion_binding <- htmltools::htmlDependency(
    name = "calcite-accordion-binding",
    version = calcite_version(),
    src = c(file = system.file("www", package = "calcite")),
    script = "calcite-accordion.js"
  )

  res <- htmltools::tag(
    "calcite-accordion",
    c(
      all_attribs,
      list(calcite_dependency(), accordion_binding)
    )
  )

  class(res) <- c("calcite_component", class(res))
  res
}
