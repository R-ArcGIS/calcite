# Create a Calcite Panel Component

Panel is a container that can house interactions as well as live within
other Calcite Components. It provides a header with heading text and a
summary, and slots to add Actions and Icons to the start and end of the
header.

## Usage

``` r
calcite_panel(
  ...,
  id = NULL,
  heading = NULL,
  description = NULL,
  closable = NULL,
  closed = NULL,
  collapsed = NULL,
  collapse_direction = NULL,
  collapsible = NULL,
  disabled = NULL,
  heading_level = NULL,
  icon = NULL,
  icon_flip_rtl = NULL,
  loading = NULL,
  menu_flip_placements = NULL,
  menu_open = NULL,
  menu_placement = NULL,
  message_overrides = NULL,
  overlay_positioning = NULL,
  scale = NULL,
  action_bar = NULL,
  alerts = NULL,
  content_bottom = NULL,
  content_top = NULL,
  header_actions_start = NULL,
  header_actions_end = NULL,
  header_content = NULL,
  header_menu_actions = NULL,
  fab = NULL,
  footer = NULL,
  footer_start = NULL,
  footer_end = NULL
)
```

## Arguments

- ...:

  Main content for the panel (default slot)

- id:

  Component ID (required for Shiny reactivity)

- heading:

  Header text for the panel

- description:

  Description text displayed below the heading

- closable:

  Whether to display a close button in the header (default: FALSE)

- closed:

  Whether the component is hidden (default: FALSE)

- collapsed:

  Whether the content area is hidden (default: FALSE)

- collapse_direction:

  Direction of collapse icon: "down" or "up" (default: "down")

- collapsible:

  Whether the panel can be collapsed (default: FALSE)

- disabled:

  Whether interaction is prevented (default: FALSE)

- heading_level:

  Semantic heading level (1-6) for accessibility

- icon:

  Icon to display in the header

- icon_flip_rtl:

  Flip icon in RTL languages (default: FALSE)

- loading:

  Whether to display a busy indicator (default: FALSE)

- menu_flip_placements:

  Fallback placements for the menu when space is insufficient

- menu_open:

  Whether the action menu items are open (default: FALSE)

- menu_placement:

  Placement of the action menu (default: "bottom-end")

- message_overrides:

  Override individual strings used by the component

- overlay_positioning:

  Positioning type for overlaid content: "absolute" or "fixed" (default:
  "absolute")

- scale:

  Size of the component: "s" (small), "m" (medium), or "l" (large)
  (default: "m")

- action_bar:

  Content for the action-bar slot (typically
  [`calcite_action_bar()`](http://r.esri.com/calcite/reference/calcite_action_bar.md))

- alerts:

  Content for the alerts slot (typically
  [`calcite_alert()`](http://r.esri.com/calcite/reference/calcite_alert.md)
  components)

- content_bottom:

  Content below the main slot and above the footer

- content_top:

  Content above the main slot and below the action-bar

- header_actions_start:

  Actions or content at the start of the header

- header_actions_end:

  Actions or content at the end of the header

- header_content:

  Custom content for the header

- header_menu_actions:

  Overflow menu with actions (typically in
  [`calcite_dropdown()`](http://r.esri.com/calcite/reference/calcite_dropdown.md))

- fab:

  Floating action button (typically
  [`calcite_fab()`](http://r.esri.com/calcite/reference/calcite_fab.md))

- footer:

  Custom content for the footer (don't use with footer_start/footer_end)

- footer_start:

  Leading footer content (don't use with footer slot)

- footer_end:

  Trailing footer content (don't use with footer slot)

## Value

An object of class `calcite_component`

## Details

### Shiny Integration

The panel emits events when it's closed, collapsed, expanded, scrolled,
or toggled.

**Available properties in `input$id`:**

- `$closable` - Whether the close button is displayed

- `$closed` - Whether the panel is hidden

- `$collapsed` - Whether the content area is collapsed

- `$collapsible` - Whether the panel is collapsible

- `$disabled` - Whether the panel is disabled

- Other component properties

**Events:**

- `calcitePanelClose` - Fires when the close button is clicked

- `calcitePanelCollapse` - Fires when the content area is collapsed

- `calcitePanelExpand` - Fires when the content area is expanded

- `calcitePanelScroll` - Fires when the content is scrolled

- `calcitePanelToggle` - Fires when the collapse button is clicked

## References

[Official
Documentation](https://developers.arcgis.com/calcite-design-system/components/panel/)

## Examples

``` r
# Basic panel with heading
calcite_panel(
  id = "my_panel",
  heading = "Map Options",
  "Panel content goes here..."
)
#> <calcite-panel id="my_panel" heading="Map Options">Panel content goes here...</calcite-panel>

# Collapsible panel with icon
calcite_panel(
  heading = "Layer effects",
  description = "Adjust blur, highlight, and more",
  collapsible = TRUE,
  icon = "effects",
  "Panel content"
)
#> <calcite-panel heading="Layer effects" description="Adjust blur, highlight, and more" collapsible="TRUE" icon="effects">Panel content</calcite-panel>

# Panel with header actions and footer
calcite_panel(
  heading = "Settings",
  header_actions_start = calcite_action(
    icon = "question",
    text = "Help",
    slot = "header-actions-start"
  ),
  header_actions_end = calcite_action(
    icon = "save",
    text = "Save",
    slot = "header-actions-end"
  ),
  footer = tagList(
    calcite_button(width = "half", appearance = "outline", "Cancel"),
    calcite_button(width = "half", "Save")
  ),
  "Panel content"
)
#> Error in tagList(calcite_button(width = "half", appearance = "outline",     "Cancel"), calcite_button(width = "half", "Save")): could not find function "tagList"
```
