#' Create a Calcite Table Component
#'
#' Creates a table component from a data.frame with automatic row and cell generation.
#' The table provides pagination, numbering, and various styling options.
#'
#' @param data A data.frame to display in the table (required)
#' @param ... Additional attributes passed to the component
#' @param id Component ID (required for Shiny reactivity)
#' @param caption Accessible title for the table (required)
#' @param header Custom header row created with [calcite_table_header()]. If NULL, column names from data are used
#' @param alignment Alignment for all cells: "start", "center", or "end" (default: "start")
#' @param bordered When TRUE, displays borders (default: FALSE)
#' @param numbered When TRUE, displays row numbers (default: FALSE)
#' @param page_size Page size for pagination. When > 0, renders pagination controls (default: 0)
#' @param scale Size of the component: "s" (small), "m" (medium), or "l" (large) (default: "m")
#' @param striped When TRUE, displays striped styling (default: FALSE)
#' @param numbering_system Unicode numeral system: "arab", "arabext", or "latn"
#'
#' @details
#' ## Shiny Integration
#'
#' The table emits events for page changes and selection changes (when selection is enabled).
#'
#' **Available properties in `input$id`:**
#' - `$pageSize` - Current page size
#' - `$scale` - Component scale
#' - `$bordered` - Whether borders are displayed
#' - `$numbered` - Whether row numbers are displayed
#' - `$striped` - Whether striped styling is applied
#' - Other component properties
#'
#' **Events:**
#' - `calciteTablePageChange` - Fires when the page changes
#'
#' @export
#' @return An object of class `calcite_component`
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/table/)
#' @examples
#' # Basic table from data frame
#' calcite_table(
#'   data = mtcars[1:5, 1:4],
#'   id = "my_table",
#'   caption = "Motor Trend Car Data",
#'   bordered = TRUE,
#'   striped = TRUE
#' )
#'
#' # Table with pagination
#' calcite_table(
#'   data = iris,
#'   id = "iris_table",
#'   caption = "Iris Dataset",
#'   page_size = 10,
#'   numbered = TRUE
#' )
#'
#' # Table with custom headers
#' calcite_table(
#'   data = mtcars[1:5, 1:3],
#'   caption = "Cars",
#'   header = list(
#'     calcite_table_header(heading = "Miles/Gallon", description = "Fuel efficiency"),
#'     calcite_table_header(heading = "Cylinders", description = "Number of cylinders"),
#'     calcite_table_header(heading = "Displacement", description = "Engine size")
#'   )
#' )
calcite_table <- function(
  data,
  ...,
  id = NULL,
  caption,
  header = NULL,
  alignment = "start",
  bordered = NULL,
  numbered = NULL,
  page_size = NULL,
  scale = NULL,
  striped = NULL,
  numbering_system = NULL
) {
  # Validate required arguments
  if (rlang::is_missing(data) || !is.data.frame(data)) {
    cli::cli_abort("{.arg data} must be a data.frame")
  }

  if (rlang::is_missing(caption) || is.null(caption)) {
    cli::cli_abort("{.arg caption} is required")
  }

  # Validate alignment if provided
  if (!is.null(alignment)) {
    alignment <- rlang::arg_match(alignment, c("start", "center", "end"))
  }

  # Validate scale if provided
  if (!is.null(scale)) {
    scale <- rlang::arg_match(scale, c("s", "m", "l"))
  }

  # Validate numbering_system if provided
  if (!is.null(numbering_system)) {
    numbering_system <- rlang::arg_match(
      numbering_system,
      c("arab", "arabext", "latn")
    )
  }

  # Build attributes list
  attribs <- compact(list(
    id = id,
    caption = caption,
    bordered = bordered,
    numbered = numbered,
    `page-size` = page_size,
    scale = scale,
    striped = striped,
    `numbering-system` = numbering_system
  ))

  # Combine with dots
  extra_attribs <- rlang::dots_list(...)
  all_attribs <- c(
    attribs,
    extra_attribs[!names(extra_attribs) %in% names(attribs)]
  )

  # Generate header row
  if (is.null(header)) {
    # Use column names from data
    header_cells <- lapply(names(data), function(col_name) {
      calcite_table_header(heading = col_name, alignment = alignment)
    })
  } else {
    # Use provided headers
    header_cells <- header
  }

  # Create header row with table-header slot
  header_row <- calcite_table_row(header_cells)
  header_row <- add_slot(header_row, "table-header")

  # Generate body rows
  body_rows <- make_rows(data, alignment = alignment)

  # Custom binding for table
  table_binding <- htmltools::htmlDependency(
    name = "calcite-table-binding",
    version = calcite_version(),
    src = c(file = system.file("www", package = "calcite")),
    script = "calcite-table.js"
  )

  res <- htmltools::tag(
    "calcite-table",
    c(
      all_attribs,
      list(header_row),
      body_rows,
      list(calcite_dependency(), table_binding)
    )
  )

  class(res) <- c("calcite_component", class(res))
  res
}

#' Create a Calcite Table Header
#'
#' Creates a header cell for use in calcite_table headers.
#'
#' @param heading Header text to display
#' @param description Optional description text below heading
#' @param alignment Alignment: "start", "center", or "end" (default: "start")
#'
#' @return A calcite-table-header tag
#' @export
#' @examples
#' calcite_table_header(
#'   heading = "Name",
#'   description = "Person's full name"
#' )
calcite_table_header <- function(
  heading,
  description = NULL,
  alignment = "start"
) {
  if (!is.null(alignment)) {
    alignment <- rlang::arg_match(alignment, c("start", "center", "end"))
  }

  attribs <- compact(list(
    heading = heading,
    description = description,
    alignment = alignment
  ))

  htmltools::tag("calcite-table-header", attribs)
}

# Internal function to create table rows from data.frame
# Calls C implementation for performance
make_rows <- function(data, alignment = "start") {
  .Call("make_table_rows", data, alignment, calcite_table_row)
}

# Internal function to create a table row
calcite_table_row <- function(cells) {
  htmltools::tag("calcite-table-row", cells)
}

# Internal function to create a table cell
calcite_table_cell <- function(content, alignment = "start") {
  attribs <- compact(list(
    alignment = alignment
  ))

  htmltools::tag(
    "calcite-table-cell",
    c(attribs, list(as.character(content)))
  )
}
