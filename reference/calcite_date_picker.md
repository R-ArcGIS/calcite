# Create a Calcite Date Picker Component

Provides a calendar interface for selecting dates. Supports single date
selection or date range selection with various customization options.

## Usage

``` r
calcite_date_picker(
  id = NULL,
  value = NULL,
  range = NULL,
  min = NULL,
  max = NULL,
  scale = NULL,
  layout = NULL,
  calendars = NULL,
  active_range = NULL,
  heading_level = NULL,
  month_style = NULL,
  numbering_system = NULL,
  proximity_selection_disabled = NULL,
  ...
)
```

## Arguments

- id:

  Optional ID for the date picker (required for Shiny reactivity)

- value:

  Selected date as a string ("yyyy-mm-dd"), or array of strings for
  range values

- range:

  When TRUE, activates range mode to allow start and end dates (default:
  FALSE)

- min:

  Earliest allowed date ("yyyy-mm-dd")

- max:

  Latest allowed date ("yyyy-mm-dd")

- scale:

  Specifies size of the component: "s" (small), "m" (medium), or "l"
  (large)

- layout:

  Defines the layout: "horizontal" or "vertical"

- calendars:

  Number of calendars displayed when range is TRUE: 1 or 2 (default: 2)

- active_range:

  When range is TRUE, specifies active range: "start" or "end"

- heading_level:

  Heading level for document structure (1-6)

- month_style:

  Month display style: "wide" (default) or "abbreviated"

- numbering_system:

  Unicode numeral system: "latn", "arab", or "arabext"

- proximity_selection_disabled:

  When TRUE, disables default range narrowing behavior (default: FALSE)

- ...:

  Additional attributes passed to the component

## Value

An object of class `calcite_component`

## Details

### Date Formats

- Dates should be provided as strings in "yyyy-mm-dd" format

- For range mode, provide an array: `c("2024-01-15", "2024-01-20")`

- The component always returns dates as an array of strings, even in
  single date mode

### Shiny Integration

When used in a Shiny app with an `id`, `calcite_date_picker()` returns a
reactive list containing component properties.

**Available properties:**

- `$value` - Array of selected date strings (always an array, even for
  single dates)

- `$range` - Whether range mode is enabled

- `$min` - Minimum allowed date

- `$max` - Maximum allowed date

- Other component properties

**Usage in server:**

    # Single date mode
    observeEvent(input$my_date$value, {
      selected_date <- input$my_date$value[1]  # Get first (and only) date
      message("Selected: ", selected_date)
    })

    # Range mode
    observeEvent(input$my_date_range$value, {
      start_date <- input$my_date_range$value[1]
      end_date <- input$my_date_range$value[2]
      message("Range: ", start_date, " to ", end_date)
    })

## References

[Official
Documentation](https://developers.arcgis.com/calcite-design-system/components/date-picker/)

## Examples

``` r
# Basic date picker
calcite_date_picker(
  id = "my_date"
)
#> <calcite-date-picker id="my_date"></calcite-date-picker>

# Date picker with initial value
calcite_date_picker(
  id = "event_date",
  value = "2024-12-25"
)
#> <calcite-date-picker id="event_date" value="2024-12-25"></calcite-date-picker>

# Date picker with min/max constraints
calcite_date_picker(
  id = "booking_date",
  min = "2024-01-01",
  max = "2024-12-31"
)
#> <calcite-date-picker id="booking_date" min="2024-01-01" max="2024-12-31"></calcite-date-picker>

# Range date picker
calcite_date_picker(
  id = "date_range",
  range = TRUE,
  value = c("2024-01-15", "2024-01-20")
)
#> Error in loadNamespace(x): there is no package called ‘yyjsonr’
```
