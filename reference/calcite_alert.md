# Create a Calcite Alert Component

Alerts are meant to quickly convey a message to the user. They are
ephemeral, workflow-specific messaging that is positioned absolutely
over content.

## Usage

``` r
calcite_alert(
  kind = NULL,
  ...,
  id = NULL,
  label = NULL,
  open = NULL,
  icon = TRUE,
  icon_flip_rtl = NULL,
  auto_close = NULL,
  auto_close_duration = NULL,
  placement = NULL,
  queue = NULL,
  scale = NULL,
  numbering_system = NULL,
  title = NULL,
  message = NULL,
  link = NULL,
  actions_end = NULL
)

calcite_alert_brand(
  ...,
  id = NULL,
  label = NULL,
  open = NULL,
  icon = TRUE,
  icon_flip_rtl = NULL,
  auto_close = NULL,
  auto_close_duration = NULL,
  placement = NULL,
  queue = NULL,
  scale = NULL,
  numbering_system = NULL,
  title = NULL,
  message = NULL,
  link = NULL,
  actions_end = NULL
)

calcite_alert_danger(
  ...,
  id = NULL,
  label = NULL,
  open = NULL,
  icon = TRUE,
  icon_flip_rtl = NULL,
  auto_close = NULL,
  auto_close_duration = NULL,
  placement = NULL,
  queue = NULL,
  scale = NULL,
  numbering_system = NULL,
  title = NULL,
  message = NULL,
  link = NULL,
  actions_end = NULL
)

calcite_alert_info(
  ...,
  id = NULL,
  label = NULL,
  open = NULL,
  icon = TRUE,
  icon_flip_rtl = NULL,
  auto_close = NULL,
  auto_close_duration = NULL,
  placement = NULL,
  queue = NULL,
  scale = NULL,
  numbering_system = NULL,
  title = NULL,
  message = NULL,
  link = NULL,
  actions_end = NULL
)

calcite_alert_success(
  ...,
  id = NULL,
  label = NULL,
  open = NULL,
  icon = TRUE,
  icon_flip_rtl = NULL,
  auto_close = NULL,
  auto_close_duration = NULL,
  placement = NULL,
  queue = NULL,
  scale = NULL,
  numbering_system = NULL,
  title = NULL,
  message = NULL,
  link = NULL,
  actions_end = NULL
)

calcite_alert_warning(
  ...,
  id = NULL,
  label = NULL,
  open = NULL,
  icon = TRUE,
  icon_flip_rtl = NULL,
  auto_close = NULL,
  auto_close_duration = NULL,
  placement = NULL,
  queue = NULL,
  scale = NULL,
  numbering_system = NULL,
  title = NULL,
  message = NULL,
  link = NULL,
  actions_end = NULL
)
```

## Arguments

- kind:

  Specifies the kind of alert: "brand", "danger", "info", "success", or
  "warning" (default: "brand")

- ...:

  Child content for the alert

- id:

  Component ID (required for Shiny reactivity)

- label:

  Accessible name for the component (required)

- open:

  When true, displays and positions the component (default: FALSE)

- icon:

  When TRUE, shows a default recommended icon. Alternatively, pass a
  Calcite UI Icon name to display a specific icon

- icon_flip_rtl:

  When TRUE, the icon will be flipped when the element direction is
  right-to-left

- auto_close:

  When TRUE, the component closes automatically. Recommended for
  passive, non-blocking alerts (default: FALSE)

- auto_close_duration:

  Duration before auto-close: "fast", "medium", or "slow" (default:
  "medium")

- placement:

  Placement of the component: "top", "top-start", "top-end", "bottom",
  "bottom-start", or "bottom-end" (default: "bottom")

- queue:

  Ordering priority when opened: "immediate", "last", or "next"
  (default: "last")

- scale:

  Size of the component: "s" (small), "m" (medium), or "l" (large)
  (default: "m")

- numbering_system:

  Unicode numeral system for localization: "arab", "arabext", or "latn"

- title:

  Content for the title slot

- message:

  Content for the message slot

- link:

  Content for the link slot (typically
  [`calcite_link()`](https://r.esri.com/calcite/reference/calcite_link.md))

- actions_end:

  Content for the actions-end slot (typically
  [`calcite_action()`](https://r.esri.com/calcite/reference/calcite_action.md)
  components)

## Value

An object of class `calcite_component`

## Details

### Best Practices

While visually similar to Notice, Alert has distinct capabilities and
intended use cases:

**Alert:**

- Best for ephemeral, workflow-specific messaging

- Generally should not be open at page load

- Most often displayed as a result of user interaction

- Positioned absolutely over content

**Notice:**

- Best for informative, contextually relevant information

- Can be open at page load, or displayed as a result of user action

- Can be persisted in the interface or made closable

**Modal:**

- Best for long-form messaging or narrative content

- Can contain media or interactive elements

- Generally presented as a result of user invocation

### Writing and Copy

Alerts are meant to quickly convey a message to the user. Keep copy
short and to the point. Consistent Alert structure, verbiage, and copy
ensures users have an expected experience.

### Shiny Integration

**Available properties in `input$id`:**

- `$open` - Whether the alert is currently displayed

- `$kind` - The alert kind

- Other component properties

**Events:**

- `calciteAlertBeforeClose` - Before closing transition begins

- `calciteAlertBeforeOpen` - Before opening transition begins

- `calciteAlertClose` - After close animation completes

- `calciteAlertOpen` - After open animation completes

## References

[Official
Documentation](https://developers.arcgis.com/calcite-design-system/components/alert/)

## Examples

``` r
# Basic success alert
calcite_alert_success(
  label = "Success",
  icon = "smile",
  open = TRUE,
  title = "Everything worked out!",
  message = "Take a moment to reflect on your day"
)
#> <calcite-alert all_files="TRUE TRUE" icon="smile" kind="success" label="Success" name="calcite calcite-alert-binding" open script="calcite.esm.js module calcite-alert.js" src="https://js.arcgis.com/calcite-components/3.3.3/ /home/runner/work/_temp/Library/calcite/www" stylesheet="calcite.css" version="3.3.3 3.3.3">
#>   <div slot="title">Everything worked out!</div>
#>   <div slot="message">Take a moment to reflect on your day</div>
#> </calcite-alert>

# Alert with link
calcite_alert_info(
  label = "Notification",
  open = TRUE,
  title = "Something interesting just happened",
  message = "We thought you might want to take a look",
  link = calcite_link("Take action", href = "#")
)
#> <calcite-alert all_files="TRUE TRUE" icon kind="info" label="Notification" name="calcite calcite-alert-binding" open script="calcite.esm.js module calcite-alert.js" src="https://js.arcgis.com/calcite-components/3.3.3/ /home/runner/work/_temp/Library/calcite/www" stylesheet="calcite.css" version="3.3.3 3.3.3">
#>   <div slot="title">Something interesting just happened</div>
#>   <div slot="message">We thought you might want to take a look</div>
#>   <calcite-link href="#" slot="link">Take action</calcite-link>
#> </calcite-alert>
```
