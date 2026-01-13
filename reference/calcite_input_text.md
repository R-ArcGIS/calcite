# Create a Calcite Input Text Component

Creates a text input component for form entry where users can enter text
values. Supports validation, length constraints, and pattern matching.

## Usage

``` r
calcite_input_text(
  id = NULL,
  value = NULL,
  name = NULL,
  placeholder = NULL,
  label = NULL,
  label_text = NULL,
  alignment = NULL,
  autocomplete = NULL,
  clearable = NULL,
  disabled = NULL,
  form = NULL,
  icon = NULL,
  icon_flip_rtl = NULL,
  loading = NULL,
  max_length = NULL,
  min_length = NULL,
  pattern = NULL,
  prefix_text = NULL,
  read_only = NULL,
  required = NULL,
  scale = NULL,
  status = NULL,
  suffix_text = NULL,
  validation_icon = NULL,
  validation_message = NULL,
  action = NULL,
  label_content = NULL
)
```

## Arguments

- id:

  Component ID (required for Shiny reactivity)

- value:

  The component's value

- name:

  Specifies the name of the component (required for form submission)

- placeholder:

  Specifies placeholder text for the component

- label:

  Accessible name for the component

- label_text:

  When provided, displays label text on the component

- alignment:

  Text alignment of the value: "start", "center", or "end" (default:
  "start")

- autocomplete:

  Type of content to autocomplete for forms

- clearable:

  When TRUE, shows a clear button when the component has a value
  (default: FALSE)

- disabled:

  When TRUE, interaction is prevented and displayed with lower opacity
  (default: FALSE)

- form:

  The id of the form associated with the component

- icon:

  Specifies an icon to display (TRUE for default or icon name)

- icon_flip_rtl:

  When TRUE, icon is flipped in RTL direction (default: FALSE)

- loading:

  When TRUE, displays a busy indicator (default: FALSE)

- max_length:

  Maximum length of text for the component's value

- min_length:

  Minimum length of text for the component's value

- pattern:

  Regular expression pattern the value must match for validation

- prefix_text:

  Text to display at the start of the component

- read_only:

  When TRUE, value can be read but not modified (default: FALSE)

- required:

  When TRUE, must have a value for form submission (default: FALSE)

- scale:

  Size of the component: "s", "m", or "l" (default: "m")

- status:

  Status of the input field: "idle", "valid", or "invalid" (default:
  "idle")

- suffix_text:

  Text to display at the end of the component

- validation_icon:

  Validation icon to display (TRUE or icon name)

- validation_message:

  Validation message to display

- action:

  Content for the action slot (typically a calcite_action)

- label_content:

  Content for the label-content slot

## Value

An object of class `calcite_component`

## Details

### Shiny Integration

When used in a Shiny app, `calcite_input_text()` returns a reactive list
containing:

**Available properties:**

- `$value` - The current text value

- `$validity` - Object containing validation state (valid, tooLong,
  tooShort, patternMismatch, etc.)

- `$status` - Current status ("idle", "valid", "invalid")

- Other component properties

**Usage in server:**

    # Watch for value changes
    observeEvent(input$username$value, {
      print(paste("Username:", input$username$value))
    })

    # Check validity
    observeEvent(input$username, {
      if (input$username$validity$valid) {
        print("Valid username entered")
      }
      if (input$username$validity$tooShort) {
        print("Username is too short")
      }
    })

## References

[Official
Documentation](https://developers.arcgis.com/calcite-design-system/components/input-text/)

## Examples

``` r
# Basic text input
calcite_input_text(
  id = "username",
  placeholder = "Enter username"
)
#> <calcite-input-text id="username" placeholder="Enter username"></calcite-input-text>

# Text input with length constraints
calcite_input_text(
  id = "username",
  min_length = 3,
  max_length = 20,
  required = TRUE
)
#> <calcite-input-text id="username" max-length="20" min-length="3" required="TRUE"></calcite-input-text>

# Text input with pattern validation
calcite_input_text(
  id = "zip_code",
  pattern = "\\d{5}",
  placeholder = "12345"
)
#> <calcite-input-text id="zip_code" placeholder="12345" pattern="\d{5}"></calcite-input-text>

# Search input with icon
calcite_input_text(
  id = "search",
  icon = "search",
  clearable = TRUE,
  placeholder = "Search..."
)
#> <calcite-input-text id="search" placeholder="Search..." clearable="TRUE" icon="search"></calcite-input-text>
```
