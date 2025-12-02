# Create a NavigationLogo component

Create a NavigationLogo component

## Usage

``` r
calcite_navigation_logo(...)
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

|              |               |                                                                                                                                           |                            |                       |
|--------------|---------------|-------------------------------------------------------------------------------------------------------------------------------------------|----------------------------|-----------------------|
| Name         | Attribute     | Description                                                                                                                               | Values                     | Reflects to Attribute |
| active       | active        | When `true`, the component is highlighted.                                                                                                | boolean                    | TRUE                  |
| description  | description   | A description for the component, which displays below the `heading`.                                                                      | string                     | FALSE                 |
| heading      | heading       | Specifies heading text for the component, such as a product or organization name.                                                         | string                     | FALSE                 |
| headingLevel | heading-level | Specifies the heading level of the component's heading for proper document structure, without affecting visual styling.                   | 1 \| 2 \| 3 \| 4 \| 5 \| 6 | TRUE                  |
| href         | href          | Specifies the URL destination of the component, which can be set as an absolute or relative path.                                         | string                     | TRUE                  |
| icon         | icon          | Specifies an icon to display.                                                                                                             | string                     | TRUE                  |
| iconFlipRtl  | icon-flip-rtl | When `true`, the icon will be flipped when the element direction is right-to-left (`"rtl"`).                                              | boolean                    | TRUE                  |
| label        | label         | Describes the appearance or function of the `thumbnail`. If no label is provided, context will not be provided to assistive technologies. | string                     | FALSE                 |
| rel          | rel           | Defines the relationship between the `href` value and the current document.                                                               | string                     | TRUE                  |
| target       | target        | Specifies where to open the linked document defined in the `href` property.                                                               | string                     | TRUE                  |
| thumbnail    | thumbnail     | Specifies the `src` to an image.                                                                                                          | string                     | FALSE                 |

## References

[Official
Documentation](https://developers.arcgis.com/calcite-design-system/components/navigation-logo/)

## Examples

``` r
calcite_navigation_logo()
#> <calcite-navigation-logo></calcite-navigation-logo>
```
