# Create a Calcite Block Component

Creates a collapsible block component designed to house content and
controls within a Panel, most often as part of an application layout
with Shell Panels.

## Usage

``` r
calcite_block(
  ...,
  id = NULL,
  heading = NULL,
  description = NULL,
  collapsible = TRUE,
  expanded = TRUE,
  disabled = NULL,
  loading = NULL,
  icon_start = NULL,
  icon_end = NULL,
  icon_flip_rtl = NULL,
  scale = NULL,
  heading_level = NULL,
  label = NULL,
  drag_disabled = NULL,
  sort_handle_open = NULL,
  menu_placement = NULL,
  overlay_positioning = NULL
)
```

## Arguments

- ...:

  Child content for the block

- id:

  Component ID (required for Shiny reactivity)

- heading:

  Header text for the block

- description:

  Description text displayed below the heading

- collapsible:

  Whether the block can be collapsed (default: FALSE)

- expanded:

  Whether the block is currently expanded (default: FALSE)

- disabled:

  Whether interaction is prevented (default: FALSE)

- loading:

  Whether to display a busy indicator (default: FALSE)

- icon_start:

  Icon to display at the start of the header

- icon_end:

  Icon to display at the end of the header

- icon_flip_rtl:

  Flip icons in RTL languages: "start", "end", or "both"

- scale:

  Size of the component: "s" (small), "m" (medium), or "l" (large)

- heading_level:

  Semantic heading level (1-6) for accessibility

- label:

  Accessible name for the component

- drag_disabled:

  Prevent dragging when parent Block Group enables it (default: FALSE)

- sort_handle_open:

  Display and position the sort handle (default: FALSE)

- menu_placement:

  Placement of the action menu

- overlay_positioning:

  Positioning type for overlaid content: "absolute" or "fixed"

## Value

An object of class `calcite_component`

## Details

### Shiny Integration

The block emits events when it's expanded or collapsed, making it easy
to track state.

**Available properties in `input$id`:**

- `$expanded` - Whether the block is currently expanded

- `$collapsible` - Whether the block is collapsible

- `$disabled` - Whether the block is disabled

- `$heading` - The heading text

- Other component properties

**Basic usage:**

    calcite_block(
      id = "my_block",
      heading = "Layer effects",
      description = "Adjust blur, highlight, and more",
      collapsible = TRUE,
      expanded = TRUE,
      icon_start = "effects",
      # Block content...
    )

    # In server
    observeEvent(input$my_block$expanded, {
      if (input$my_block$expanded) {
        message("Block was expanded")
      } else {
        message("Block was collapsed")
      }
    })

**Update from server:**

    # Programmatically expand or collapse the block
    update_calcite("my_block", expanded = TRUE)
    update_calcite("my_block", expanded = FALSE)

## References

[Official
Documentation](https://developers.arcgis.com/calcite-design-system/components/block/)

## Examples

``` r
# Basic collapsible block
calcite_block(
  id = "effects_block",
  heading = "Layer effects",
  description = "Adjust blur, highlight, and more",
  collapsible = TRUE,
  icon_start = "effects",
  "Block content goes here..."
)
#> <calcite-block id="effects_block" heading="Layer effects" description="Adjust blur, highlight, and more" collapsible="TRUE" expanded="TRUE" icon-start="effects">Block content goes here...</calcite-block>
```
