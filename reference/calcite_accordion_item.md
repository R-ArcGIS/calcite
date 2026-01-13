# Create a Calcite Accordion Item Component

Creates an individual accordion item that can be used within a
calcite-accordion. Accordion items can be expanded and collapsed to show
or hide content.

## Usage

``` r
calcite_accordion_item(
  ...,
  id = NULL,
  heading = NULL,
  description = NULL,
  expanded = NULL,
  heading_level = NULL,
  icon_start = NULL,
  icon_end = NULL,
  icon_flip_rtl = NULL,
  actions_start = NULL,
  actions_end = NULL,
  content_start = NULL,
  content_end = NULL
)
```

## Arguments

- ...:

  Child content for the accordion item (default slot)

- id:

  Component ID (required for Shiny reactivity)

- heading:

  Heading text for the accordion item

- description:

  Description text displayed in the header

- expanded:

  Whether the item is currently expanded (default: FALSE)

- heading_level:

  Semantic heading level (1-6) for accessibility

- icon_start:

  Icon to display at the start of the header

- icon_end:

  Icon to display at the end of the header

- icon_flip_rtl:

  Flip icons in RTL languages: "start", "end", or "both"

- actions_start:

  Content for the actions-start slot

- actions_end:

  Content for the actions-end slot

- content_start:

  Content for the content-start slot

- content_end:

  Content for the content-end slot

## Value

An object of class `calcite_component`

## Details

### Shiny Integration

The accordion item emits events when it's expanded or collapsed.

**Available properties in `input$id`:**

- `$expanded` - Whether the item is currently expanded

- `$heading` - The heading text

- `$description` - The description text

- Other component properties

**Basic usage:**

    calcite_accordion_item(
      id = "item1",
      heading = "Watercraft",
      description = "Yachts, boats, and dinghies",
      icon_start = "embark",
      # Item content...
    )

    # In server
    observeEvent(input$item1$expanded, {
      if (input$item1$expanded) {
        message("Item was expanded")
      } else {
        message("Item was collapsed")
      }
    })

## References

[Official
Documentation](https://developers.arcgis.com/calcite-design-system/components/accordion-item/)

## Examples

``` r
# Basic accordion item
calcite_accordion_item(
  id = "watercraft",
  heading = "Watercraft",
  description = "Yachts, boats, and dinghies",
  icon_start = "embark",
  "Content goes here..."
)
#> <calcite-accordion-item id="watercraft" heading="Watercraft" description="Yachts, boats, and dinghies" icon-start="embark">Content goes here...</calcite-accordion-item>
```
