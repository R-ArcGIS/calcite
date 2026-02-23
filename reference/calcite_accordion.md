# Create a Calcite Accordion Component

Accordions are most often used for hiding and showing sections of
related content. They can have different selection modes, allowing users
to have multiple or single accordion item(s) open.

## Usage

``` r
calcite_accordion(
  ...,
  id = NULL,
  appearance = NULL,
  icon_position = NULL,
  icon_type = NULL,
  scale = NULL,
  selection_mode = NULL
)
```

## Arguments

- ...:

  One or more
  [`calcite_accordion_item()`](https://r.esri.com/calcite/reference/calcite_accordion_item.md)
  components

- id:

  Component ID (required for Shiny reactivity)

- appearance:

  Visual style: "solid" or "transparent" (default: "solid")

- icon_position:

  Placement of the icon in the header: "start" or "end" (default: "end")

- icon_type:

  Type of icon in the header: "chevron", "caret", or "plus-minus"
  (default: "chevron")

- scale:

  Size of the component: "s" (small), "m" (medium), or "l" (large)
  (default: "m")

- selection_mode:

  Selection mode: "multiple" allows any number of selections, "single"
  allows only one selection, "single-persist" allows one selection and
  prevents de-selection (default: "multiple")

## Value

An object of class `calcite_component`

## Details

### Usage

- To organize related text-based content.

- To shorten pages and reduce scrolling when content is not crucial to
  read in full.

### Best practices

- Use Accordion to contain related but distinct, primarily text-based
  content.

- Use Accordion within the main content area of an application to save
  space.

- Avoid using Accordion within a Panel. Instead, use one or more
  Block(s).

- Avoid using Accordion to house interactive controls or form-based
  components.

### Shiny Integration

The accordion tracks which items are expanded based on its selection
mode.

**Available properties in `input$id`:**

- `$appearance` - The visual style

- `$iconPosition` - Icon placement

- `$iconType` - Icon type

- `$scale` - Size

- `$selectionMode` - Selection mode

## References

[Official
Documentation](https://developers.arcgis.com/calcite-design-system/components/accordion/)

## Examples

``` r
# Basic accordion with multiple selection
calcite_accordion(
  id = "my_accordion",
  calcite_accordion_item(
    heading = "Watercraft",
    description = "Yachts, boats, and dinghies",
    icon_start = "embark",
    "Recommended for coastal use"
  ),
  calcite_accordion_item(
    heading = "Automobiles",
    description = "Cars, trucks, and buses",
    icon_start = "car",
    "A good choice for inland adventure"
  )
)
#> <calcite-accordion id="my_accordion">
#>   <calcite-accordion-item heading="Watercraft" description="Yachts, boats, and dinghies" icon-start="embark">Recommended for coastal use</calcite-accordion-item>
#>   <calcite-accordion-item heading="Automobiles" description="Cars, trucks, and buses" icon-start="car">A good choice for inland adventure</calcite-accordion-item>
#> </calcite-accordion>

# Single selection accordion
calcite_accordion(
  selection_mode = "single",
  appearance = "transparent",
  icon_type = "plus-minus",
  calcite_accordion_item(
    heading = "Section 1",
    "Content 1"
  ),
  calcite_accordion_item(
    heading = "Section 2",
    "Content 2"
  )
)
#> <calcite-accordion appearance="transparent" icon-type="plus-minus" selection-mode="single">
#>   <calcite-accordion-item heading="Section 1">Content 1</calcite-accordion-item>
#>   <calcite-accordion-item heading="Section 2">Content 2</calcite-accordion-item>
#> </calcite-accordion>
```
