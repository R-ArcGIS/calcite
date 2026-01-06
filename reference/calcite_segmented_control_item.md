# Create a Calcite Segmented Control Item Component

Creates an individual item within a segmented control. Must be used as a
child of
[`calcite_segmented_control()`](http://r.esri.com/calcite/reference/calcite_segmented_control.md).

## Usage

``` r
calcite_segmented_control_item(
  value,
  label = value,
  checked = NULL,
  icon_start = NULL,
  icon_end = NULL,
  icon_flip_rtl = NULL,
  ...
)
```

## Arguments

- value:

  The value this item represents (required)

- checked:

  Whether this item is initially selected (default: FALSE)

- icon_start:

  Icon to display at the start of the item

- icon_end:

  Icon to display at the end of the item

- icon_flip_rtl:

  Whether to flip the icon in RTL languages (default: FALSE)

- ...:

  Additional content or attributes (text label if provided as unnamed
  argument)

## Value

An object of class `calcite_component`

## References

[Official
Documentation](https://developers.arcgis.com/calcite-design-system/components/segmented-control-item/)

## Examples

``` r
# Item with text label
calcite_segmented_control_item(value = "option1")
#> <calcite-segmented-control-item value="option1">option1</calcite-segmented-control-item>

# Item with icon
calcite_segmented_control_item(
  value = "list",
  icon_start = "list"
)
#> <calcite-segmented-control-item value="list" icon-start="list">list</calcite-segmented-control-item>

# Initially selected item
calcite_segmented_control_item(
  value = "default",
  checked = TRUE
)
#> <calcite-segmented-control-item value="default" checked="TRUE">default</calcite-segmented-control-item>
```
