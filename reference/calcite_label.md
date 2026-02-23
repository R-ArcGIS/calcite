# Create a Calcite Label Component

Creates a label component that wraps and provides accessible text for
form controls and other interactive elements.

## Usage

``` r
calcite_label(
  label,
  ...,
  target_id = NULL,
  id = NULL,
  alignment = NULL,
  layout = NULL,
  scale = NULL
)
```

## Arguments

- label:

  The label text (required)

- ...:

  Child components to wrap within the label (e.g., calcite_input_text())

- target_id:

  The id of the component this label is bound to (only needed when the
  labeled component is outside the label). Maps to the `for` HTML
  attribute

- id:

  Component ID (optional)

- alignment:

  Specifies the text alignment of the component: "start", "center", or
  "end" (default: "start")

- layout:

  Defines the layout of the label: "block", "default", "inline", or
  "inline-space-between" (default: "default"). Note: "default" is
  deprecated, use "block" instead

- scale:

  Specifies the size of the component: "s" (small), "m" (medium), or "l"
  (large) (default: "m")

## Value

An object of class `calcite_component`

## References

[Official
Documentation](https://developers.arcgis.com/calcite-design-system/components/label/)

## Examples

``` r
# Label wrapping an input
calcite_label(
  label = "Username",
  calcite_input_text(
    id = "username",
    placeholder = "Enter username"
  )
)
#> <calcite-label>
#>   Username
#>   <calcite-input-text id="username" placeholder="Enter username"></calcite-input-text>
#> </calcite-label>

# Label with inline layout
calcite_label(
  label = "Subscribe",
  layout = "inline",
  calcite_checkbox(id = "subscribe")
)
#> <calcite-label layout="inline">
#>   Subscribe
#>   <calcite-checkbox id="subscribe"></calcite-checkbox>
#> </calcite-label>

# Label with external component (using target_id)
htmltools::tagList(
  calcite_label(
    label = "Password",
    target_id = "password"
  ),
  calcite_input_text(id = "password", placeholder = "Enter password")
)
#> <calcite-label for="password">Password</calcite-label>
#> <calcite-input-text id="password" placeholder="Enter password"></calcite-input-text>
```
