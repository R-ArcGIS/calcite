# Create a Calcite Action Bar Component

Action Bar is composed of
[`calcite_action()`](https://r.esri.com/calcite/reference/calcite_action.md)s
used for core operations in the interface. When given an `id`, it acts
as a Shiny input that reports the `text` of the currently active action
as `input$id`.

## Usage

``` r
calcite_action_bar(
  ...,
  id = NULL,
  expand_disabled = NULL,
  expanded = NULL,
  floating = NULL,
  layout = NULL,
  overflow_actions_disabled = NULL,
  position = NULL,
  scale = NULL
)
```

## Arguments

- ...:

  [`calcite_action()`](https://r.esri.com/calcite/reference/calcite_action.md)
  or
  [`calcite_action_group()`](https://r.esri.com/calcite/reference/calcite_action_group.md)
  components

- id:

  Optional ID. When provided, `input$id` will contain the `text` of the
  currently active action.

- expand_disabled:

  When `TRUE`, disables the expand/collapse toggle.

- expanded:

  When `TRUE`, the action bar is expanded showing text labels.

- floating:

  When `TRUE`, the component is in a floating state.

- layout:

  Layout direction of the actions: `"vertical"`, `"horizontal"`, or
  `"grid"`.

- overflow_actions_disabled:

  When `TRUE`, disables automatic overflowing of actions into menus.

- position:

  Position of the component: `"start"` or `"end"`.

- scale:

  Size of the expand action: `"s"`, `"m"`, or `"l"`.

## Value

An object of class `calcite_component`

## Details

### Shiny Integration

When `id` is provided, `input$id` returns the `text` of the currently
active
[`calcite_action()`](https://r.esri.com/calcite/reference/calcite_action.md).
The action bar manages active state automatically — clicking an action
activates it and deactivates all others.

    observeEvent(input$my_bar, {
      cat("Active action:", input$my_bar, "\n")
    })

Use
[`update_calcite()`](https://r.esri.com/calcite/reference/update_calcite.md)
to programmatically set the active action by passing the `text` value of
the action to activate.

## References

[Official
Documentation](https://developers.arcgis.com/calcite-design-system/components/action-bar/)

## Examples

``` r
calcite_action_bar(
  id = "my_bar",
  calcite_action(text = "Layers", icon = "layers", active = TRUE),
  calcite_action(text = "Legend", icon = "legend")
)
#> <calcite-action-bar id="my_bar">
#>   <calcite-action text="Layers" icon="layers" active="TRUE"></calcite-action>
#>   <calcite-action text="Legend" icon="legend"></calcite-action>
#> </calcite-action-bar>
```
