# Create a Calcite Select Component

Select provides a single-selection dropdown menu for forms. It displays
a list of options that users can choose from. You can either provide
`values` and `labels` vectors for convenience, or manually construct
[`calcite_option()`](http://r.esri.com/calcite/reference/calcite_option.md)
components.

## Usage

``` r
calcite_select(
  ...,
  values = NULL,
  labels = NULL,
  id = NULL,
  label,
  disabled = NULL,
  form = NULL,
  label_text = NULL,
  message_overrides = NULL,
  name = NULL,
  required = NULL,
  scale = NULL,
  status = NULL,
  validation_icon = NULL,
  validation_message = NULL,
  value = NULL,
  width = NULL,
  label_content = NULL
)
```

## Arguments

- ...:

  calcite-option components (default slot). Ignored if `values` is
  provided.

- values:

  Character vector of option values. When provided, options are
  automatically generated from `values` and `labels`. Takes precedence
  over manually constructed options in `...`.

- labels:

  Character vector of option labels (display text). Must be same length
  as `values`. If NULL, uses `values` as labels.

- id:

  Component ID (required for Shiny reactivity)

- label:

  Accessible name for the component (required)

- disabled:

  When true, interaction is prevented and the component is displayed
  with lower opacity

- form:

  The id of the form that will be associated with the component

- label_text:

  When provided, displays label text on the component

- message_overrides:

  Override individual strings used by the component

- name:

  Specifies the name of the component. Required to pass the component's
  value on form submission

- required:

  When true, the component must have a value for the form to submit

- scale:

  Specifies the size of the component: "s" (small), "m" (medium), or "l"
  (large)

- status:

  Specifies the status of the input field: "idle", "invalid", or "valid"

- validation_icon:

  Specifies the validation icon to display under the component

- validation_message:

  Specifies the validation message to display under the component

- value:

  The component's selectedOption value

- width:

  Specifies the width of the component: "auto", "full", or "half" (half
  is deprecated)

- label_content:

  Content to render next to the component's labelText (slot)

## Value

An object of class `calcite_component`

## Details

### Shiny Integration

When used in a Shiny app, `calcite_select()` returns a reactive list
containing the component's state. The component emits a
`calciteSelectChange` event when the selection changes.

**Available properties in `input$id`:**

- `$value` - The value of the selected option

- `$disabled` - Whether the select is disabled

- `$scale` - The size of the component

- `$status` - The validation status

- Other component properties

**Events:**

- `calciteSelectChange` - Fires when the selected option changes

## References

[Official
Documentation](https://developers.arcgis.com/calcite-design-system/components/select/)

## Examples

``` r
# Using values and labels vectors (convenient)
calcite_select(
  id = "my_select",
  label = "Choose terrain type",
  values = c("mountains", "rivers", "lakes", "buttes", "fjords"),
  labels = c("Mountains", "Rivers", "Lakes", "Buttes", "Fjords")
)
#> <calcite-select id="my_select" label="Choose terrain type">
#>   <calcite-option label="Mountains" value="mountains"></calcite-option>
#>   <calcite-option label="Rivers" value="rivers"></calcite-option>
#>   <calcite-option label="Lakes" value="lakes"></calcite-option>
#>   <calcite-option label="Buttes" value="buttes"></calcite-option>
#>   <calcite-option label="Fjords" value="fjords"></calcite-option>
#> </calcite-select>

# Using values only (labels default to values)
calcite_select(
  id = "simple_select",
  label = "Choose an option",
  values = c("option1", "option2", "option3")
)
#> <calcite-select id="simple_select" label="Choose an option">
#>   <calcite-option label="option1" value="option1"></calcite-option>
#>   <calcite-option label="option2" value="option2"></calcite-option>
#>   <calcite-option label="option3" value="option3"></calcite-option>
#> </calcite-select>

# Manually constructing options (more control)
calcite_select(
  id = "fruit_select",
  label = "Choose a fruit",
  label_text = "Select your favorite fruit",
  scale = "m",
  calcite_option(label = "Apple", value = "apple"),
  calcite_option(label = "Banana", value = "banana", selected = TRUE),
  calcite_option(label = "Orange", value = "orange")
)
#> <calcite-select id="fruit_select" label="Choose a fruit" label-text="Select your favorite fruit" scale="m">
#>   <calcite-option label="Apple" value="apple"></calcite-option>
#>   <calcite-option label="Banana" value="banana" selected="TRUE"></calcite-option>
#>   <calcite-option label="Orange" value="orange"></calcite-option>
#> </calcite-select>

# Required select with validation
calcite_select(
  id = "required_select",
  label = "Required field",
  label_text = "Make a selection",
  required = TRUE,
  status = "invalid",
  validation_message = "Please select an option",
  calcite_option(label = "Choose...", value = ""),
  calcite_option(label = "Option A", value = "a"),
  calcite_option(label = "Option B", value = "b")
)
#> <calcite-select id="required_select" label="Required field" label-text="Make a selection" required="TRUE" status="invalid" validation-message="Please select an option">
#>   <calcite-option label="Choose..." value=""></calcite-option>
#>   <calcite-option label="Option A" value="a"></calcite-option>
#>   <calcite-option label="Option B" value="b"></calcite-option>
#> </calcite-select>
```
