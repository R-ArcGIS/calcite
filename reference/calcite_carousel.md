# Create a Carousel component

Create a Carousel component

## Usage

``` r
calcite_carousel(...)
```

## Arguments

- ...:

  named attributes passed to
  [`htmltools::tag()`](https://rstudio.github.io/htmltools/reference/builder.html)

## Value

an object of class `calcite_component` which is a subclass of
`shiny.tag`

## Details

### Properties

The following properties are provided by this component:

|                  |                   |                                                                                                                                                                                  |                                |                       |
|------------------|-------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|--------------------------------|-----------------------|
| Name             | Attribute         | Description                                                                                                                                                                      | Values                         | Reflects to Attribute |
| arrowType        | arrow-type        | Specifies how and if the "previous" and "next" arrows are displayed.                                                                                                             | "edge" \| "inline" \| "none"   | TRUE                  |
| autoplay         | autoplay          | When `true`, the carousel will autoplay and controls will be displayed. When "paused" at time of initialization, the carousel will not autoplay, but controls will be displayed. | "" \| "paused" \| boolean      | TRUE                  |
| autoplayDuration | autoplay-duration | When `autoplay` is `true`, specifies in milliseconds the length of time to display each Carousel Item.                                                                           | number                         | TRUE                  |
| controlOverlay   | control-overlay   | Specifies if the component's controls are positioned absolutely on top of slotted Carousel Items.                                                                                | boolean                        | TRUE                  |
| disabled         | disabled          | When `true`, interaction is prevented and the component is displayed with lower opacity.                                                                                         | boolean                        | TRUE                  |
| label            | label             | Accessible name for the component.                                                                                                                                               | string                         | FALSE                 |
| messageOverrides | NA                | Use this property to override individual strings used by the component.                                                                                                          | Check API reference            | FALSE                 |
| selectedItem     | NA                | The component's selected `calcite-carousel-item`.                                                                                                                                | HTMLCalciteCarouselItemElement | FALSE                 |

### Events

The following events are observed by shiny:

|                       |                                                                                                                                                    |
|-----------------------|----------------------------------------------------------------------------------------------------------------------------------------------------|
| Event                 | Description                                                                                                                                        |
| calciteCarouselChange | Fires when the selected `calcite-carousel-item` changes.                                                                                           |
| calciteCarouselPause  | Fires when the carousel autoplay state pauses due to a user hovering over the component or focusing on the component or slotted content            |
| calciteCarouselPlay   | Fires when the carousel autoplay is invoked by the user.                                                                                           |
| calciteCarouselResume | Fires when the carousel autoplay state resumes due to a user no longer hovering over the component or focusing on the component or slotted content |
| calciteCarouselStop   | Fires when the carousel autoplay state is stopped by a user.                                                                                       |

### Slots

The following slots are provided by this component:

|                   |                                             |
|-------------------|---------------------------------------------|
| Slot              | Description                                 |
| Default (unnamed) | A slot for adding `calcite-carousel-item`s. |

## References

[Official
Documentation](https://developers.arcgis.com/calcite-design-system/components/carousel/)

## Examples

``` r
calcite_carousel()
#> <calcite-carousel></calcite-carousel>
```
