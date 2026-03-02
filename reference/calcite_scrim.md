# Create a Calcite Scrim Component

Scrims are an overlay placed on top of content to show disabled or
loading states. By default, Scrim positions to the extent of its closest
parent. To display a Scrim with custom positioning, add
`position: relative` styling to its closest parent container.

## Usage

``` r
calcite_scrim(..., id = NULL, loading = FALSE)
```

## Arguments

- ...:

  Main content for the scrim (default slot — primarily loading
  information)

- id:

  Component ID (required for Shiny reactivity)

- loading:

  When `TRUE`, a busy indicator is displayed in the center. Default:
  `FALSE`.

## Value

An object of class `calcite_component` which is a subclass of
`shiny.tag`

## Details

### Shiny Integration

When given an `id`, the scrim reports its state as `input$id` — a named
list:

- `$loading` — logical, whether the loading indicator is shown

Use `update_calcite(id, loading = TRUE/FALSE)` to toggle the loading
state from the server.

### Positioning

Scrim fills its closest positioned parent. Wrap the area you want to
cover in a container with `position: relative` so the scrim covers the
right region.

## References

[Official
Documentation](https://developers.arcgis.com/calcite-design-system/components/scrim/)

## Examples

``` r
calcite_scrim(id = "my_scrim", loading = TRUE)
#> <calcite-scrim id="my_scrim" loading="TRUE"></calcite-scrim>
```
