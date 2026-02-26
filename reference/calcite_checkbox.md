# Create a Calcite Checkbox Component

A checkbox allows users to make a binary selection, typically within a
form or as a standalone toggle. Supports indeterminate state for
tri-state behavior.

## Usage

``` r
calcite_checkbox(
  id = NULL,
  checked = NULL,
  disabled = NULL,
  form = NULL,
  indeterminate = NULL,
  label = NULL,
  label_text = NULL,
  name = NULL,
  required = NULL,
  scale = NULL,
  status = NULL,
  value = NULL
)
```

## Arguments

- id:

  Component ID (required for Shiny reactivity)

- checked:

  When `TRUE`, the component is checked. Default: `FALSE`

- disabled:

  When `TRUE`, interaction is prevented and the component is displayed
  with lower opacity. Default: `FALSE`

- form:

  Specifies the id of the component's associated form.

- indeterminate:

  When `TRUE`, the component is initially indeterminate, independent
  from its checked value. Visual only. Default: `FALSE`

- label:

  Specifies an accessible label for the component.

- label_text:

  Specifies the component's label text.

- name:

  Specifies the name of the component. Required to pass the component's
  value on form submission.

- required:

  When `TRUE` and the component resides in a form, the component must
  have a value in order for the form to submit. Default: `FALSE`

- scale:

  Specifies the size of the component: `"s"`, `"m"`, or `"l"`. Default:
  `"m"`

- status:

  Specifies the status of the input field: `"idle"`, `"invalid"`, or
  `"valid"`. Default: `"idle"`

- value:

  The component's value.

## Value

An object of class `calcite_component`

## Details

### Shiny Integration

When an `id` is provided, the checkbox emits its state whenever it
changes.

**Available properties in `input$id`:**

- `$checked` - Whether the checkbox is checked

- `$indeterminate` - Whether the checkbox is in indeterminate state

- `$value` - The component's value

- `$disabled` - Whether the checkbox is disabled

- `$name` - The component's name

- `$scale` - The component's scale

- `$status` - The component's status

**Events:**

- `calciteCheckboxChange` - Fires when the checked status changes

## References

[Official
Documentation](https://developers.arcgis.com/calcite-design-system/components/checkbox/)

## Examples

``` r
calcite_checkbox(id = "agree", label_text = "I agree to the terms")
#> <calcite-checkbox id="agree" label-text="I agree to the terms"></calcite-checkbox>

calcite_checkbox(
  id = "opt_in",
  label_text = "Subscribe to newsletter",
  checked = TRUE,
  scale = "l"
)
#> <calcite-checkbox id="opt_in" checked="TRUE" label-text="Subscribe to newsletter" scale="l"></calcite-checkbox>
```
