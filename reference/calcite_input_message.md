# Create a Calcite Input Message Component

Creates a message component that displays validation messages, hints,
and other contextual feedback for input components.

## Usage

``` r
calcite_input_message(
  ...,
  status = NULL,
  icon = NULL,
  icon_flip_rtl = NULL,
  scale = NULL,
  id = NULL
)
```

## Arguments

- ...:

  Content for the message (default slot) - typically text or
  textOutput()

- status:

  Status of the message: "idle", "valid", or "invalid" (default: "idle")

- icon:

  Specifies an icon to display (TRUE for default or icon name)

- icon_flip_rtl:

  When TRUE, icon is flipped in RTL direction (default: FALSE)

- scale:

  Size of the component: "s", "m", or "l" (default: "m")

- id:

  Component ID (optional)

## Value

An object of class `calcite_component`

## Details

### Usage

Input messages are typically used inside a
[`calcite_label()`](https://r.esri.com/calcite/reference/calcite_label.md)
component alongside an input to provide contextual feedback, validation
messages, or hints.

### Status Options

- **"valid"**: Green checkmark icon, success message

- **"invalid"**: Red warning icon, error message

- **"idle"**: Default state, informational message

### Dynamic Messages

Use [`textOutput()`](https://rdrr.io/pkg/shiny/man/textOutput.html) in
the slot and
[`renderText()`](https://rdrr.io/pkg/shiny/man/renderPrint.html) in the
server to create dynamic validation messages. Use
[`update_calcite()`](https://r.esri.com/calcite/reference/update_calcite.md)
to change the status/icon properties.

## References

[Official
Documentation](https://developers.arcgis.com/calcite-design-system/components/input-message/)

## Examples

``` r
# Static message
calcite_input_message(
  "Username is available",
  status = "valid",
  icon = TRUE
)
#> <calcite-input-message status="valid" icon="TRUE">Username is available</calcite-input-message>

# Dynamic message with textOutput
calcite_input_message(
  shiny::textOutput("validation_msg"),
  status = "invalid",
  icon = "exclamation-mark-circle",
  id = "msg"
)
#> <calcite-input-message id="msg" status="invalid" icon="exclamation-mark-circle">
#>   <div id="validation_msg" class="shiny-text-output"></div>
#> </calcite-input-message>

# With input in a label
calcite_label(
  label = "Username",
  calcite_input_text(
    id = "username",
    placeholder = "Enter username"
  ),
  calcite_input_message(
    "Username must be 3-20 characters",
    status = "idle"
  )
)
#> <calcite-label>
#>   Username
#>   <calcite-input-text id="username" placeholder="Enter username"></calcite-input-text>
#>   <calcite-input-message status="idle">Username must be 3-20 characters</calcite-input-message>
#> </calcite-label>
```
