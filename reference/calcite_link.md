# Create a Calcite Link Component

Creates a link component for navigation or performing actions. Links are
useful for tertiary-level actions or inline navigation within text.

## Usage

``` r
calcite_link(
  text,
  href,
  id = NULL,
  disabled = NULL,
  download = NULL,
  icon_end = NULL,
  icon_flip_rtl = NULL,
  icon_start = NULL,
  rel = NULL,
  target = NULL
)
```

## Arguments

- text:

  The link text to display (required)

- href:

  The URL of the linked resource (required) - can be absolute or
  relative path

- id:

  Component ID (optional)

- disabled:

  When TRUE, interaction is prevented and the component is displayed
  with lower opacity (default: FALSE)

- download:

  Prompts the user to save the linked URL instead of navigating to it.
  Can be TRUE or a string filename

- icon_end:

  Specifies an icon to display at the end of the link

- icon_flip_rtl:

  Displays the iconStart and/or iconEnd as flipped when the element
  direction is RTL: "both", "end", or "start"

- icon_start:

  Specifies an icon to display at the start of the link

- rel:

  Specifies the relationship to the linked document (e.g., "noopener",
  "noreferrer")

- target:

  Specifies the frame or window to open the linked document (e.g.,
  "\_blank", "\_self", "\_parent", "\_top")

## Value

An object of class `calcite_component`

## Details

### Usage Guidelines

**Use Links for:**

- Navigation to another page or section

- Tertiary-level actions in a group

- Inline actions within sentences

**Use Buttons instead for:**

- Primary actions like "Create", "Submit", "Upload"

- Task completion actions

- Prominent calls to action

### Best Practices

- Avoid making entire sentences into links

- Link text should be descriptive of the destination

- Use `target = "_blank"` with `rel = "noopener noreferrer"` for
  external links

## References

[Official
Documentation](https://developers.arcgis.com/calcite-design-system/components/link/)

## Examples

``` r
# Basic link
calcite_link(
  text = "View documentation",
  href = "https://developers.arcgis.com/calcite-design-system/"
)
#> <calcite-link href="https://developers.arcgis.com/calcite-design-system/">View documentation</calcite-link>

# Link with icon
calcite_link(
  text = "External site",
  href = "https://example.com",
  icon_end = "launch",
  target = "_blank",
  rel = "noopener noreferrer"
)
#> <calcite-link href="https://example.com" icon-end="launch" rel="noopener noreferrer" target="_blank">External site</calcite-link>

# Download link
calcite_link(
  text = "Download report",
  href = "/files/report.pdf",
  download = "monthly-report.pdf",
  icon_start = "download"
)
#> <calcite-link href="/files/report.pdf" download="monthly-report.pdf" icon-start="download">Download report</calcite-link>

# Disabled link
calcite_link(
  text = "Coming soon",
  href = "#",
  disabled = TRUE
)
#> <calcite-link href="#" disabled="TRUE">Coming soon</calcite-link>
```
