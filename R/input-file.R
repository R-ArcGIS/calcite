#' Create a Calcite File Input Component
#'
#' Creates a file input component for selecting files from the user's device.
#' Use the `accept` argument to restrict which file types can be selected.
#' This component works by syncing with Shiny's native file upload mechanism
#' to handle file transfers to the server.
#'
#' @param id Component ID (required for Shiny reactivity)
#' @param accept A character vector of accepted file extensions without the
#'   leading period (e.g. `c("csv", "tsv", "txt")`). MIME types are also
#'   accepted (e.g. `"text/plain"`). When `NULL`, all file types are accepted.
#' @param multiple When `TRUE`, the user can select more than one file.
#'   Must be a scalar logical. Default `FALSE`.
#' @param disabled When `TRUE`, prevents interaction and decreases opacity.
#' @param label Accessible label for the component.
#' @param label_text Label text displayed on the component.
#' @param required When `TRUE`, a file must be selected for form submission.
#' @param scale Size of the component: `"s"`, `"m"`, or `"l"`.
#' @param validation_icon Validation icon to display (`TRUE` or an icon name).
#' @param validation_message Validation message to display under the component.
#'
#' @details
#' ## Shiny Integration
#'
#' When used in a Shiny app, `calcite_input_file()` works like [shiny::fileInput()]
#' and returns a data frame via `input$id` with one row per uploaded file.
#'
#' **Columns in `input$id`:**
#' - `name` - The filename provided by the browser
#' - `size` - File size in bytes
#' - `type` - MIME type (e.g., `"text/csv"`)
#' - `datapath` - Path to a temp file containing the uploaded data. Use this
#'   path to read the file contents (e.g., `read.csv(input$my_file$datapath[1])`)
#'
#' The uploaded files are stored in a temporary directory and will be deleted
#' when the Shiny session ends.
#'
#' @export
#' @return An object of class `calcite_component`
#' @references [Official Documentation](https://developers.arcgis.com/calcite-design-system/components/input/)
#' @examples
#' # Accept CSV files only
#' calcite_input_file(
#'   id = "my_file",
#'   accept = "csv",
#'   label_text = "Upload a CSV file"
#' )
#'
#' # Accept multiple image formats
#' calcite_input_file(
#'   id = "my_file",
#'   accept = c("png", "jpg", "jpeg", "gif"),
#'   multiple = TRUE,
#'   label_text = "Upload images"
#' )
#'
#' if (interactive()) {
#'   library(shiny)
#'
#'   ui <- calcite_shell(
#'     calcite_panel(
#'       heading = "File Upload",
#'       calcite_input_file(
#'         id = "csv_upload",
#'         accept = "csv",
#'         label_text = "Upload CSV"
#'       ),
#'       tableOutput("contents")
#'     )
#'   )
#'
#'   server <- function(input, output, session) {
#'     output$contents <- renderTable({
#'       req(input$csv_upload)
#'       read.csv(input$csv_upload$datapath[1])
#'     })
#'   }
#'
#'   shinyApp(ui, server)
#' }
calcite_input_file <- function(
  id = NULL,
  accept = NULL,
  multiple = FALSE,
  disabled = NULL,
  label = NULL,
  label_text = NULL,
  required = NULL,
  scale = NULL,
  validation_icon = NULL,
  validation_message = NULL
) {
  if (!rlang::is_scalar_logical(multiple)) {
    cli::cli_abort(
      "{.arg multiple} must be a scalar logical (`TRUE` or `FALSE`)."
    )
  }

  if (!is.null(scale)) {
    scale <- rlang::arg_match(scale, c("s", "m", "l"))
  }

  # Collapse accept vector into comma-separated string with leading dots
  accept_str <- if (!is.null(accept)) {
    paste(paste0(".", accept), collapse = ",")
  }

  # Create hidden native file input for Shiny's file upload mechanism
  hidden_input <- htmltools::tags$input(
    type = "file",
    id = id,
    class = "shiny-input-file",
    style = "display: none;",
    accept = accept_str,
    multiple = if (isTRUE(multiple)) NA else NULL
  )

  # Calcite input without ID (to avoid duplicate ID conflict)
  attribs <- compact(list(
    `data-input-id` = id,  # Store the ID here so binding can find it
    type = "file",
    accept = accept_str,
    multiple = if (isTRUE(multiple)) TRUE else NULL,
    disabled = disabled,
    label = label,
    `label-text` = label_text,
    required = required,
    scale = scale,
    `validation-icon` = validation_icon,
    `validation-message` = validation_message
  ))

  input_file_binding <- htmltools::htmlDependency(
    name = "calcite-input-file-binding",
    version = calcite_version(),
    src = c(file = system.file("www", package = "calcite")),
    script = "calcite-input-file.js"
  )

  calcite_input <- htmltools::tag(
    "calcite-input",
    c(
      attribs,
      list(calcite_dependency(), input_file_binding)
    )
  )

  # Return both in a container
  res <- htmltools::tagList(
    calcite_input,
    hidden_input
  )

  class(res) <- c("calcite_component", class(res))
  res
}
