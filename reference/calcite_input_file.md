# Create a Calcite File Input Component

Creates a file input component for selecting files from the user's
device. Use the `accept` argument to restrict which file types can be
selected. This component works by syncing with Shiny's native file
upload mechanism to handle file transfers to the server.

## Usage

``` r
calcite_input_file(
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
)
```

## Arguments

- id:

  Component ID (required for Shiny reactivity)

- accept:

  A character vector of accepted file extensions without the leading
  period (e.g. `c("csv", "tsv", "txt")`). MIME types are also accepted
  (e.g. `"text/plain"`). When `NULL`, all file types are accepted.

- multiple:

  When `TRUE`, the user can select more than one file. Must be a scalar
  logical. Default `FALSE`.

- disabled:

  When `TRUE`, prevents interaction and decreases opacity.

- label:

  Accessible label for the component.

- label_text:

  Label text displayed on the component.

- required:

  When `TRUE`, a file must be selected for form submission.

- scale:

  Size of the component: `"s"`, `"m"`, or `"l"`.

- validation_icon:

  Validation icon to display (`TRUE` or an icon name).

- validation_message:

  Validation message to display under the component.

## Value

An object of class `calcite_component`

## Details

### Shiny Integration

When used in a Shiny app, `calcite_input_file()` works like
[`shiny::fileInput()`](https://rdrr.io/pkg/shiny/man/fileInput.html) and
returns a data frame via `input$id` with one row per uploaded file.

**Columns in `input$id`:**

- `name` - The filename provided by the browser

- `size` - File size in bytes

- `type` - MIME type (e.g., `"text/csv"`)

- `datapath` - Path to a temp file containing the uploaded data. Use
  this path to read the file contents (e.g.,
  `read.csv(input$my_file$datapath[1])`)

The uploaded files are stored in a temporary directory and will be
deleted when the Shiny session ends.

## References

[Official
Documentation](https://developers.arcgis.com/calcite-design-system/components/input/)

## Examples

``` r
# Accept CSV files only
calcite_input_file(
  id = "my_file",
  accept = "csv",
  label_text = "Upload a CSV file"
)
#> <calcite-input data-input-id="my_file" type="file" accept=".csv" label-text="Upload a CSV file"></calcite-input>
#> <input type="file" id="my_file" class="shiny-input-file" style="display: none;" accept=".csv"/>

# Accept multiple image formats
calcite_input_file(
  id = "my_file",
  accept = c("png", "jpg", "jpeg", "gif"),
  multiple = TRUE,
  label_text = "Upload images"
)
#> <calcite-input data-input-id="my_file" type="file" accept=".png,.jpg,.jpeg,.gif" multiple="TRUE" label-text="Upload images"></calcite-input>
#> <input type="file" id="my_file" class="shiny-input-file" style="display: none;" accept=".png,.jpg,.jpeg,.gif" multiple/>

if (interactive()) {
  library(shiny)

  ui <- calcite_shell(
    calcite_panel(
      heading = "File Upload",
      calcite_input_file(
        id = "csv_upload",
        accept = "csv",
        label_text = "Upload CSV"
      ),
      tableOutput("contents")
    )
  )

  server <- function(input, output, session) {
    output$contents <- renderTable({
      req(input$csv_upload)
      read.csv(input$csv_upload$datapath[1])
    })
  }

  shinyApp(ui, server)
}
```
