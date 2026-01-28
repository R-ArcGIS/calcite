# Create a Calcite Option Component

Option provides a selectable item within a
[`calcite_select()`](http://r.esri.com/calcite/reference/calcite_select.md)
component. Each option represents a single choice in the select dropdown
menu.

## Usage

``` r
calcite_option(label, value, disabled = NULL, selected = NULL, ...)
```

## Arguments

- label:

  Text label for the option (required for accessibility)

- value:

  The component's value (can be any type)

- disabled:

  When true, interaction is prevented and the component is displayed
  with lower opacity

- selected:

  When true, the component is selected

- ...:

  Additional attributes passed to the component

## Value

An object of class `calcite_component`

## Details

Options are used within
[`calcite_select()`](http://r.esri.com/calcite/reference/calcite_select.md)
to define the available choices. The `value` parameter determines what
value will be sent to Shiny when the option is selected.

## References

[Official
Documentation](https://developers.arcgis.com/calcite-design-system/components/option/)

## Examples

``` r
# Basic option
calcite_option(
  label = "First Option",
  value = "1"
)
#> <calcite-option label="First Option" value="1"></calcite-option>

# Selected option
calcite_option(
  label = "Default Selection",
  value = "default",
  selected = TRUE
)
#> <calcite-option label="Default Selection" value="default" selected="TRUE"></calcite-option>

# Disabled option
calcite_option(
  label = "Unavailable",
  value = "unavailable",
  disabled = TRUE
)
#> <calcite-option label="Unavailable" value="unavailable" disabled="TRUE"></calcite-option>

# Use with calcite_select
calcite_select(
  id = "my_select",
  label = "Choose one",
  calcite_option(label = "Option 1", value = "1"),
  calcite_option(label = "Option 2", value = "2", selected = TRUE),
  calcite_option(label = "Option 3", value = "3")
)
#> <calcite-select id="my_select" label="Choose one">
#>   <calcite-option label="Option 1" value="1"></calcite-option>
#>   <calcite-option label="Option 2" value="2" selected="TRUE"></calcite-option>
#>   <calcite-option label="Option 3" value="3"></calcite-option>
#> </calcite-select>
```
