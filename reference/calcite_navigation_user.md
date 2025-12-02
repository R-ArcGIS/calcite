# Create a NavigationUser component

Create a NavigationUser component

## Usage

``` r
calcite_navigation_user(...)
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

|              |               |                                                                                                                          |         |                       |
|--------------|---------------|--------------------------------------------------------------------------------------------------------------------------|---------|-----------------------|
| Name         | Attribute     | Description                                                                                                              | Values  | Reflects to Attribute |
| active       | active        | When `true`, the component is highlighted.                                                                               | boolean | TRUE                  |
| fullName     | full-name     | Specifies the full name of the user.                                                                                     | string  | FALSE                 |
| label        | label         | Describes the appearance of the avatar. If no label is provided, context will not be provided to assistive technologies. | string  | FALSE                 |
| textDisabled | text-disabled | When `true`, hides the `fullName` and `username` contents.                                                               | boolean | TRUE                  |
| thumbnail    | thumbnail     | Specifies the `src` to an image (remember to add a token if the user is private).                                        | string  | FALSE                 |
| userId       | user-id       | Specifies the unique id of the user.                                                                                     | string  | FALSE                 |
| username     | username      | Specifies the username of the user.                                                                                      | string  | FALSE                 |

## References

[Official
Documentation](https://developers.arcgis.com/calcite-design-system/components/navigation-user/)

## Examples

``` r
calcite_navigation_user()
#> <calcite-navigation-user></calcite-navigation-user>
```
