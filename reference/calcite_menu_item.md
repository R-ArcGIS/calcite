# Create a MenuItem component

Create a MenuItem component

## Usage

``` r
calcite_menu_item(...)
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

|                  |               |                                                                                                             |                            |                       |
|------------------|---------------|-------------------------------------------------------------------------------------------------------------|----------------------------|-----------------------|
| Name             | Attribute     | Description                                                                                                 | Values                     | Reflects to Attribute |
| active           | active        | When `true`, the component is highlighted.                                                                  | boolean                    | TRUE                  |
| breadcrumb       | breadcrumb    | When `true`, the component displays a breadcrumb trail for use as a navigational aid.                       | boolean                    | TRUE                  |
| href             | href          | Specifies the URL destination of the component, which can be set as an absolute or relative path.           | string                     | FALSE                 |
| iconEnd          | icon-end      | Specifies an icon to display at the end of the component.                                                   | string                     | TRUE                  |
| iconFlipRtl      | icon-flip-rtl | Displays the `iconStart` and/or `iconEnd` as flipped when the element direction is right-to-left (`"rtl"`). | "both" \| "end" \| "start" | TRUE                  |
| iconStart        | icon-start    | Specifies an icon to display at the start of the component.                                                 | string                     | TRUE                  |
| label            | label         | Accessible name for the component.                                                                          | string                     | FALSE                 |
| messageOverrides | NA            | Use this property to override individual strings used by the component.                                     | Check API reference        | FALSE                 |
| open             | open          | When `true`, the component will display any slotted `calcite-menu-item` in an open overflow menu.           | boolean                    | TRUE                  |
| rel              | rel           | Defines the relationship between the `href` value and the current document.                                 | string                     | TRUE                  |
| target           | target        | Specifies where to open the linked document defined in the `href` property.                                 | string                     | TRUE                  |
| text             | text          | Specifies the text to display.                                                                              | string                     | FALSE                 |

### Events

The following events are observed by shiny:

|                       |                                       |
|-----------------------|---------------------------------------|
| Event                 | Description                           |
| calciteMenuItemSelect | Emits when the component is selected. |

### Slots

The following slots are provided by this component:

|              |                                                      |
|--------------|------------------------------------------------------|
| Slot         | Description                                          |
| submenu-item | A slot for adding `calcite-menu-item`s in a submenu. |

## References

[Official
Documentation](https://developers.arcgis.com/calcite-design-system/components/menu-item/)

## Examples

``` r
calcite_menu_item()
#> <calcite-menu-item></calcite-menu-item>
```
