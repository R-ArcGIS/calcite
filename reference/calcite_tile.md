# Create a Calcite Tile Component

Tiles are presentational components useful for presenting consequential
information in a compact, consistent format. They can contain supportive
icons, a heading, and a description.

## Usage

``` r
calcite_tile(
  ...,
  id = NULL,
  heading = NULL,
  description = NULL,
  icon = NULL,
  href = NULL,
  active = NULL,
  selected = NULL,
  disabled = NULL,
  alignment = NULL,
  scale = NULL,
  icon_flip_rtl = NULL,
  label = NULL,
  content_top = NULL,
  content_bottom = NULL
)
```

## Arguments

- ...:

  Child content for the tile

- id:

  Optional ID for the tile (required for Shiny reactivity)

- heading:

  The component header text

- description:

  A description for the component, which displays below the heading

- icon:

  Specifies an icon to display

- href:

  When provided, the URL for the component (makes tile a link)

- active:

  When TRUE, the component is active (default: FALSE)

- selected:

  When TRUE and parent's selectionMode allows it, component is selected
  (default: FALSE)

- disabled:

  When TRUE, interaction is prevented and component displays with lower
  opacity (default: FALSE)

- alignment:

  Specifies alignment of tile's content: "start" or "center"

- scale:

  Specifies size of the component: "s" (small), "m" (medium), or "l"
  (large)

- icon_flip_rtl:

  When TRUE, icon will be flipped when element direction is RTL
  (default: FALSE)

- label:

  Accessible name for the component

- content_top:

  Slot for adding non-interactive elements above the component's content

- content_bottom:

  Slot for adding non-interactive elements below the component's content

## Value

An object of class `calcite_component`

## Details

### Best Practices

- Tiles are best used to represent one of a limited number of options,
  actions, or choices

- The component is wholly focusable - it should not contain slotted
  focusable elements

- Text should be concise (heading max ~50 chars, description max ~175
  chars)

- Use sentence case for heading and description

- End description with proper punctuation

### Shiny Integration

When used in a Shiny app with an `id`, `calcite_tile()` returns a
reactive list containing component properties.

**Available properties:**

- `$active` - Whether the tile is currently active

- `$selected` - Whether the tile is selected

- `$disabled` - Whether the tile is disabled

- `$heading` - The heading text

- `$description` - The description text

- `$icon` - The icon name

- Other component properties

## References

[Official
Documentation](https://developers.arcgis.com/calcite-design-system/components/tile/)

## Examples

``` r
# Basic tile with icon and description
calcite_tile(
  icon = "3d-glasses",
  heading = "Special viewing glasses",
  description = "Great for eclipses and optical illusions"
)
#> <calcite-tile heading="Special viewing glasses" description="Great for eclipses and optical illusions" icon="3d-glasses"></calcite-tile>

# Tile with content in bottom slot
calcite_tile(
  icon = "rangefinder",
  heading = "Rangefinder",
  description = "A time-tested tool for field engineers",
  content_bottom = calcite_chip("214 in use")
)
#> <calcite-tile heading="Rangefinder" description="A time-tested tool for field engineers" icon="rangefinder">
#>   <div slot="content-bottom">
#>     <calcite-chip>214 in use</calcite-chip>
#>   </div>
#> </calcite-tile>

# Active tile with link
calcite_tile(
  icon = "data",
  heading = "Data Analysis",
  href = "https://example.com/data",
  active = TRUE
)
#> <calcite-tile heading="Data Analysis" icon="data" href="https://example.com/data" active="TRUE"></calcite-tile>
```
