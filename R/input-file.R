#' Create a Calcite File Input Component
#'
#' Creates a file input component for selecting files from the user's device.
#' Use the `accept` argument to restrict which file types can be selected.
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
#' @param loading When `TRUE`, displays a busy indicator.
#' @param name Name of the component for form submission.
#' @param required When `TRUE`, a file must be selected for form submission.
#' @param scale Size of the component: `"s"`, `"m"`, or `"l"`.
#' @param status Input field status: `"idle"`, `"valid"`, or `"invalid"`.
#' @param validation_icon Validation icon to display (`TRUE` or an icon name).
#' @param validation_message Validation message to display under the component.
#'
#' @details
#' ## Shiny Integration
#'
#' When used in a Shiny app, `calcite_input_file()` returns a reactive list
#' via `input$id`. The `$files` property contains information about the
#' selected files.
#'
#' **Available properties:**
#' - `$files` - A list of selected file objects
#' - `$status` - Current status (`"idle"`, `"valid"`, `"invalid"`)
#' - Other component properties
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
#'       calcite_block(
#'         heading = "Select a file",
#'         collapsible = TRUE,
#'         expanded = TRUE,
#'         calcite_input_file(
#'           id = "my_file",
#'           accept = c("csv", "tsv"),
#'           label_text = "Upload data"
#'         )
#'       ),
#'       calcite_block(
#'         heading = "File info",
#'         collapsible = TRUE,
#'         expanded = TRUE,
#'         verbatimTextOutput("file_info")
#'       )
#'     )
#'   )
#'
#'   server <- function(input, output, session) {
#'     output$file_info <- renderPrint({
#'       input$my_file
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
  loading = NULL,
  name = NULL,
  required = NULL,
  scale = NULL,
  status = NULL,
  validation_icon = NULL,
  validation_message = NULL
) {
  if (!rlang::is_scalar_logical(multiple)) {
    cli::cli_abort("{.arg multiple} must be a scalar logical (`TRUE` or `FALSE`).")
  }

  if (!is.null(scale)) {
    scale <- rlang::arg_match(scale, c("s", "m", "l"))
  }

  if (!is.null(status)) {
    status <- rlang::arg_match(status, c("idle", "valid", "invalid"))
  }

  # Collapse accept vector into comma-separated string with leading dots
  accept_str <- if (!is.null(accept)) {
    paste(paste0(".", accept), collapse = ",")
  }

  attribs <- compact(list(
    id = id,
    type = "file",
    accept = accept_str,
    multiple = if (isTRUE(multiple)) TRUE else NULL,
    disabled = disabled,
    label = label,
    `label-text` = label_text,
    loading = loading,
    name = name,
    required = required,
    scale = scale,
    status = status,
    `validation-icon` = validation_icon,
    `validation-message` = validation_message
  ))

  input_file_binding <- htmltools::htmlDependency(
    name = "calcite-input-file-binding",
    version = calcite_version(),
    src = c(file = system.file("www", package = "calcite")),
    script = "calcite-input-file.js"
  )

  res <- htmltools::tag(
    "calcite-input",
    c(
      attribs,
      list(calcite_dependency(), input_file_binding)
    )
  )

  class(res) <- c("calcite_component", class(res))
  res
}
