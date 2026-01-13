# Create a Calcite Input Number Component

Creates a number input component for form entry where users can enter
numeric values. Supports integer-only mode, min/max constraints, and
number formatting.

## Usage

``` r
calcite_input_number(
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
  group_separator = NULL,
  icon = NULL,
  icon_flip_rtl = NULL,
  integer = NULL,
  loading = NULL,
  max = NULL,
  min = NULL,
  number_button_type = NULL,
  numbering_system = NULL,
  prefix_text = NULL,
  read_only = NULL,
  required = NULL,
  scale = NULL,
  status = NULL,
  step = NULL,
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

- group_separator:

  When TRUE, number values display with a group separator corresponding
  to the language and country format (default: FALSE)

- icon:

  Specifies an icon to display (TRUE for default or icon name)

- icon_flip_rtl:

  When TRUE, icon is flipped in RTL direction (default: FALSE)

- integer:

  When TRUE, restricts the component to integer numbers only and
  disables exponential notation (default: FALSE)

- loading:

  When TRUE, displays a busy indicator (default: FALSE)

- max:

  Maximum value for the input

- min:

  Minimum value for the input

- number_button_type:

  Placement of the increment/decrement buttons: "vertical",
  "horizontal", or "none" (default: "vertical")

- numbering_system:

  Unicode numeral system: "arab", "arabext", or "latn"

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

- step:

  Granularity the value must adhere to (can be "any" or a number)

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

When used in a Shiny app, `calcite_input_number()` returns a reactive
list containing:

**Available properties:**

- `$value` - The current numeric value (as string)

- `$validity` - Object containing validation state (valid, badInput,
  rangeOverflow, etc.)

- `$status` - Current status ("idle", "valid", "invalid")

- Other component properties

**Usage in server:**

    # Watch for value changes
    observeEvent(input$age$value, {
      age_num <- as.numeric(input$age$value)
      print(paste("Age:", age_num))
    })

    # Check validity
    observeEvent(input$age, {
      if (input$age$validity$valid) {
        print("Valid number entered")
      }
      if (input$age$validity$rangeOverflow) {
        print("Number is too large")
      }
    })

## References

[Official
Documentation](https://developers.arcgis.com/calcite-design-system/components/input-number/)

## Examples

``` r
# Basic number input
calcite_input_number(
  id = "quantity",
  placeholder = "Enter quantity"
)
#> <calcite-input-number id="quantity" placeholder="Enter quantity"></calcite-input-number>

# Integer-only input with constraints
calcite_input_number(
  id = "age",
  integer = TRUE,
  min = 0,
  max = 120,
  step = 1,
  required = TRUE
)
#> <calcite-input-number id="age" integer="TRUE" max="120" min="0" required="TRUE" step="1"></calcite-input-number>

# Price input with formatting
calcite_input_number(
  id = "price",
  prefix_text = "$",
  group_separator = TRUE,
  step = 0.01,
  min = 0
)
#> <calcite-input-number id="price" group-separator="TRUE" min="0" prefix-text="$" step="0.01"></calcite-input-number>

# Percentage input
calcite_input_number(
  id = "percent",
  suffix_text = "%",
  min = 0,
  max = 100,
  step = 1
)
#> <calcite-input-number id="percent" max="100" min="0" step="1" suffix-text="%"></calcite-input-number>
```
